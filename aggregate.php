<?php

if (!in_array(getClientIp(), ['127.0.0.1'], false)) {
    header("Location: /");
    return;
}

include_once ('DB/DbConnection.php');

$lockFolder = "locks/";
$aggLockFile = "agg.lock";


//Check Lock File
if (file_exists($lockFolder . $aggLockFile)
    && date("Y-m-d H:i", filemtime($lockFolder . $aggLockFile) + 360) > date("Y-m-d H:i"))
{
    echo "Lock file is work";
    exit;
}

//Create Lock File
$file = fopen($lockFolder . $aggLockFile, 'w+');
if (!$file) {
    echo "Can't create lock file";
    exit;
}

fclose($file);

$pdoConnection = \DB\DbConnection::getInstance()->getConnection();
$query = $pdoConnection->query("SELECT id FROM send_log ORDER BY id DESC LIMIT 1");
$lastLogId = $query->fetchColumn();
if (!empty($lastLogId)) {
    $insertUpdate = $pdoConnection->prepare("
            INSERT INTO send_log_aggregated (date, cntId, usrId, successed, failed) 
            (Select 
                DATE_FORMAT(log.created, '%Y-%m-%d') as dt, 
                nbr.cntId, 
                log.usrId, 
                @sc := SUM(IF(success = 1, 1,0)) as sc,
                @fl := SUM(IF(success = 0, 1,0)) as fl
                From send_log as log
                JOIN numbers as nbr ON log.numberId = nbr.id
             WHERE log.id <= :id 
             GROUP BY dt, nbr.cntId, log.usrId)
             ON DUPLICATE KEY UPDATE successed = successed + @sc, failed = failed + @fl");
    $delete = $pdoConnection->prepare("DELETE FROM send_log WHERE id <= :id");
    $pdoConnection->beginTransaction();
    try {
        $insertUpdate->execute([':id' => $lastLogId]);
        $delete->execute([':id' => $lastLogId]);
        $pdoConnection->commit();
        echo 'Aggregated success';
    } catch (PDOException $e) {
        $pdoConnection->rollBack();
        error_log(json_encode($e));
    }
}

if (!file_exists($lockFolder . $aggLockFile)) {
    //error
    error_log("File does not exist to unlink");
    exit;
}

if (!unlink($lockFolder . $aggLockFile)) {
    //error
    error_log("Can not remove lock file");
    exit;
}



function getClientIp()
{
    $ip = 'UNKNOWN';
    if (getenv('HTTP_CLIENT_IP')) {
        $ip = getenv('HTTP_CLIENT_IP');
    } else if (getenv('HTTP_X_FORWARDED_FOR')) {
        $ip = getenv('HTTP_X_FORWARDED_FOR');
    } else if (getenv('HTTP_X_FORWARDED')) {
        $ip = getenv('HTTP_X_FORWARDED');
    } else if(getenv('HTTP_FORWARDED_FOR')) {
        $ip = getenv('HTTP_FORWARDED_FOR');
    } else if(getenv('HTTP_FORWARDED')) {
        $ip = getenv('HTTP_FORWARDED');
    } else if(getenv('REMOTE_ADDR')) {
        $ip = getenv('REMOTE_ADDR');
    };
    return $ip;
}