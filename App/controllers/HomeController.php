<?php

namespace App\controllers;

use App\model\QueryBuilder;
use League\Plates\Engine;
use Aura\SqlQuery\QueryFactory;
use App\models\user;
use PDO;


class HomeController
{
    private $view;
    private $queryFactory;
    private $pdo;


    public function __construct(Engine $view, QueryFactory $queryFactory, PDO $pdo)
    {
        $this->view = $view;
        $this->queryFactory = $queryFactory;
        $this->pdo = $pdo;
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

    public function login()
    {
        echo $this->view->render('login',['massiv' => $_SERVER]);
    }

    public function regpost()
    {
        $post = $_POST;

        echo $this->view->render('regfinish',$post);
    }

    public function go()
    {
        echo $this->view->render('index',['massiv' => $_SERVER]);
    }

}
