<?php

namespace App\controllers;

use App\model\QueryBuilder;
use League\Plates\Engine;
use Aura\SqlQuery\QueryFactory;
use App\models\users;
use \Delight\Auth\Auth;
use PDO;


class HomeController
{
    private $view;
    private $queryFactory;
    private $pdo;
    private $diver;


    public function __construct(Engine $view, QueryFactory $queryFactory, PDO $pdo, users $users)
    {
        $this->view = $view;
        $this->queryFactory = $queryFactory;
        $this->pdo = $pdo;
        $this->diver = $users;
    }

//    public function index()
//    {
//        $select = $this->queryFactory->newSelect();
//        $select->cols(["*"])
//            ->from('tasks');
//
//        $sth = $this->pdo->prepare($select->getStatement());
//        $sth->execute($select->getBindValues());
//        $myTasks = $sth->fetchAll(PDO::FETCH_ASSOC);
//
//        echo $this->view->render('tasks', ['tasks' => $myTasks]);
//    }
//
//
//    public function show($id)
//    {
//        $select = $this->queryFactory->newSelect();
//        $select->cols(["*"])
//            ->from('tasks')
//            ->where('id=:id')
//            ->bindValues(['id'  =>  $id]);
//
//        $sth = $this->pdo->prepare($select->getStatement());
//        $sth->execute($select->getBindValues());
//        $myTask = $sth->fetch(PDO::FETCH_ASSOC);
//
//        echo $this->view->render('show', ['task' => $myTask]);
//    }

    public function reg()
    {
        echo $this->view->render('showregistr',['massiv' => $_SERVER]);
    }

    public function user()
    {
        $auth = new \Delight\Auth\Auth($this->pdo);
        $id = $auth->getUserId();
        echo $this->view->render('user', ['mass'=>'hhhhhh']);

    }
    public function login()
    {
        echo $this->view->render('login',['massiv' => $_SERVER]);
    }

    public function loginpost()
    {
        echo $this->view->render('loginpost',['massiv' => $_SERVER]);
    }

    public function regpost()
    {
        $post = $_POST;

        echo $this->view->render('regfinish',$post);
    }

    public function go()
    {
        $this->diver->getID();
        echo $this->view->render('index',['massiv' => $_SERVER]);
    }

}
