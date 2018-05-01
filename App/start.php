<?php

use Aura\SqlQuery\QueryFactory;
use DI\Container;
use DI\ContainerBuilder;
use League\Plates\Engine;

$containerBuilder = new ContainerBuilder;

$containerBuilder->addDefinitions([
    Engine::class    =>  function() {
        return new Engine('../app/views');
    },
    QueryFactory::class => function() {
        return new QueryFactory('mysql');
    },
    PDO::class => function() {
        return new PDO("mysql:host=localhost;dbname=lerning","root","root");
    }
]);

$container = $containerBuilder->build();

$dispatcher = FastRoute\simpleDispatcher(function(FastRoute\RouteCollector $r) {

    $r->addRoute('GET', '/',["\App\controllers\HomeController","go"]);
    $r->addRoute('GET', '/reg',["\App\controllers\HomeController","reg"]);
    $r->addRoute('POST', '/reg',["\App\controllers\HomeController","regpost"]);
    $r->addRoute('GET', '/regfinish',["\App\controllers\HomeController","regfinish"]);
    $r->addRoute('GET', '/login',["\App\controllers\HomeController","login"]);
    $r->addRoute('POST', '/login',["\App\controllers\HomeController","loginpost"]);


});
// Fetch method and URI from somewhere
$httpMethod = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];

// Strip query string (?foo=bar) and decode URI
if (false !== $pos = strpos($uri, '?')) {
    $uri = substr($uri, 0, $pos);
}
$uri = rawurldecode($uri);

$routeInfo = $dispatcher->dispatch($httpMethod, $uri);
switch ($routeInfo[0]) {
    case FastRoute\Dispatcher::NOT_FOUND:
        // ... 404 Not Found
//        require_once 'controllers/404controller.php';
        dd("404");
        break;
    case FastRoute\Dispatcher::METHOD_NOT_ALLOWED:
        $allowedMethods = $routeInfo[1];
        // ... 405 Method Not Allowed
        dd("405");
        break;
    case FastRoute\Dispatcher::FOUND:
        $handler = $routeInfo[1];
        $vars = $routeInfo[2];
        // ... call $handler with $vars

        //$container = new Container();

        $container->call($handler, $vars);

        break;
}