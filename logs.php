<?php

if (empty($_POST)) {
    exit(json_encode(['error' => 'No request data']));
}
include_once ('DB/DbConnection.php');
include_once ('Model/SendLogAggregated.php');

$pdoConnection = \DB\DbConnection::getInstance()->getConnection();
$model = new \Model\SendLogAggregated($pdoConnection);
try {
    $logs = $model->getData([
        \Model\SendLogAggregated::DATE_FROM => $_POST['dateFrom'],
        \Model\SendLogAggregated::DATE_TO => $_POST['dateTo'],
        \Model\SendLogAggregated::COUNTRY => $_POST['country'],
        \Model\SendLogAggregated::USER => $_POST['user'],
    ]);
} catch (Exception $e) {
    exit(json_encode(['error' => $e->getMessage()]));
}
exit(json_encode(['logs' => $logs]));
