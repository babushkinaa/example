<?php
/**
 * Created by PhpStorm.
 * User: ababuskina
 * Date: 02.05.18
 * Time: 0:32
 */

use Aura\SqlQuery\QueryFactory;

$db = new \Delight\Db\PdoDsn("mysql:host=localhost;dbname=lerning","root","root");
$auth = new \Delight\Auth\Auth($db);

//dd($auth,$_POST);
try {
    $auth->login($_POST['username'], $_POST['password']);

    // user is logged in

}
catch (\Delight\Auth\InvalidEmailException $e) {
    // wrong email address
    dd("email");
}
catch (\Delight\Auth\InvalidPasswordException $e) {
    // wrong password
    dd("bad pass");
}
catch (\Delight\Auth\EmailNotVerifiedException $e) {
    // email not verified
    dd("no valid email");
}
catch (\Delight\Auth\TooManyRequestsException $e) {
    // too many requests
    dd("many request");
}

header("Location: /user");