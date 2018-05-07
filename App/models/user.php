<?php
/**
 * Created by PhpStorm.
 * User: ababuskina
 * Date: 30.04.18
 * Time: 2:03
 */



namespace App\models;
namespace App\controllers;

//require_once '../../vendor/autoload.php';
//require "autoload.php";

use Aura\SqlQuery\QueryFactory;
use Delight\Auth\Auth;
use PDO;

class user
{

    public $db;
    public $user;


    function __construct()
    {

        $this->db = new PDO("mysql:host=localhost;dbname=lerning","root","root");
        $this->user = new Auth($this->db);

    }


}