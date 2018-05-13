<?php
/**
 * Created by PhpStorm.
 * User: ababuskina
 * Date: 07.05.18
 * Time: 2:15
 */

namespace App\models;

use Delight\Auth;
use App\models\database;

class users
{
    public $user;

    function __construct(database $db)
    {
        $this->user = new \Delight\Auth\Auth($db->pdo);
    }

    public function registration($email,$password,$username)
    {
        $this->user->register($email,$password,$username);
    }

    public function getID()
    {
        $userID = $this->user->getUserId();
        return $userID;
    }

    public function getEmail()
    {
        $userEmail = $this->user->getEmail();
        return $userEmail;
    }
}