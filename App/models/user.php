<?php
/**
 * Created by PhpStorm.
 * User: ababuskina
 * Date: 30.04.18
 * Time: 2:03
 */

namespace App\models;


use Aura\SqlQuery\QueryFactory;
use Delight\Auth\Auth;
use PDO;

class user
{
    /**
     * @var \Delight\Auth\Auth
     */
    private $auth;

    public $pdo = new PDO("mysql:host=localhost;dbname=lerning","root","root");


    function __construct(Auth $auth($pdo))
    {

        $this->auth = $auth;

    }

    public function registration()
    {
        $user = new Auth();
        $user->register()
    }


    public function getAvatar()
    {

    }

    public function getUser($id)
    {
        echo "user";
    }

}