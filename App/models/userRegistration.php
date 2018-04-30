<?php

require_once '../../vendor/autoload.php';
use Delight\Auth\Auth;


$db = new PDO("mysql:host=localhost;dbname=lerning","root","root");

$auth = new Auth($db);


try {
    $userId = $auth->register($_POST['email'], $_POST['password'], $_POST['username'], function ($selector, $token) {

        $urlasset = 'http://'.$_SERVER['HTTP_HOST'].'/dive/web/verify_email?selector='.urlencode($selector).'&token='.urlencode($token);
        echo "Перейдите по ссылке для подтверждения своего аккауната";
        echo $urlasset;


        // send `$selector` and `$token` to the user (e.g. via email)
    });
    //$urlasset = 'dive/web/verify_email?selector='.urlencode($selector).'&token='.urlencode($token);
    //echo "Перейдите по ссылке для подтверждения своего аккауната" . $urlasset;
    //header("Location:/dive/web/");
    // we have signed up a new user with the ID `$userId`
}
catch (\Delight\Auth\InvalidEmailException $e) {
    // invalid email address
}
catch (\Delight\Auth\InvalidPasswordException $e) {
    // invalid password
}
catch (\Delight\Auth\UserAlreadyExistsException $e) {
    // user already exists
}
catch (\Delight\Auth\TooManyRequestsException $e) {
    // too many requests
}

