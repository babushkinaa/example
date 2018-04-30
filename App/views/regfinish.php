
<?php $this->layout('layout') ?>

<?php //dd($_POST);?>
<?php

use Aura\SqlQuery\QueryFactory;

$db = new \Delight\Db\PdoDsn("mysql:host=localhost;dbname=lerning","root","root");
$auth = new \Delight\Auth\Auth($db);

try {
$userId = $auth->register($_POST['email'], $_POST['password'], $_POST['username'], function ($selector, $token) {
// send `$selector` and `$token` to the user (e.g. via email)

//    $url = 'https://www.example.com/verify_email?selector=' . \urlencode($selector) . 'token=' . \urlencode($token);

//    echo $url;

});

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


;




header("Location: /login");



?>