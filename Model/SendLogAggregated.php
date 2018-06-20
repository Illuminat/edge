<?php
namespace Model;
use Pdo;
class SendLogAggregated
{
    protected $db;
    protected $table = 'send_log_aggregated';

    const DATE_FROM = ':dateFrom';
    const DATE_TO   = ':dateTo';
    const COUNTRY   = ':country';
    const USER      = ':user';

    private static $searchMapper = [
        self::DATE_FROM => [
            'query'    => ' date  >= :dateFrom',
            'required' => true,
            'groupBy' => 'date',
            'param' => PDO::PARAM_STR
        ]       ,
        self::DATE_TO   => [
            'query' => ' date  <= :dateTo ',
            'required' => true,
            'param' => PDO::PARAM_STR
        ],
        self::COUNTRY   => [
            'query' => ' cntId  = :country ',
            'required' => false,
            'param' => PDO::PARAM_INT
        ],
        self::USER      => [
            'query' => ' usrId  = :user ',
            'required' => false,
            'param' => PDO::PARAM_INT
        ]
    ];

    public function __construct(\PDO $db)
    {
        $this->db = $db;
    }

    public function getData($searchData= [])
    {
        foreach (self::$searchMapper as $key => $data) {
            if (!empty($searchData[$key])) {
                $where[] = $data['query'];
                if (isset($data['groupBy'])) {
                    $groupBy[] = $data['groupBy'];
                }
                $bind[$key] = ['value' => $searchData[$key], 'param' => $data['param']];
                continue;
            }

            if ($data['required']) {
                throw new \Exception('Need data:' . $key);
            }
        }
        $sqlSelect = 'Select * FROM ' . $this->table . ' WHERE '. implode(' AND ', $where) . ' GROUP BY ' . implode( ' , ', $groupBy);
        $smtp = $this->db->prepare($sqlSelect);
        foreach ($bind as $key => $data) {
            $smtp->bindParam($key, $data['value'], $data['param']);
        }
        $smtp->execute();
        return $smtp->fetchAll();
    }
}