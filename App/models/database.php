<?php
/**
 * Created by PhpStorm.
 * User: ababuskina
 * Date: 08.05.18
 * Time: 0:58
 */

namespace App\models;


use Aura\SqlQuery\QueryFactory;
use PDO;


class database
{
    public $pdo;
    public $queryFactory;

    function __construct()
    {
        $this->pdo = new PDO("mysql:host=localhost;dbname=lerning","root","root");
        $queryFactory = new QueryFactory('mysql');

        $this->queryFactory = $queryFactory;
    }

    function select ()
    {
        $select = $this->queryFactory->newSelect();
        $select ->from('divesite')->cols(
            [
                'id',                       // column name
                'name',          // one way of aliasing
                'anonce',  // another way of aliasing
                'description',   // embed calculations directly
                'country'
            ]
        );
        return $select;


    }

}