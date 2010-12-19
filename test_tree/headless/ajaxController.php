<?php
define("IN_PHP", true);
include dirname(__FILE__).'/../includes/config.php';
error_reporting(E_ALL);
include dirname(__FILE__).'/../includes/actions/ActionController.php';
session_start();




$ctr = new ActionController;
$ctr->setParam($_POST,$_GET,$_SESSION);
$log = $ctr->getMessages();
$res = $ctr->getResult();

echo '<pre>';
print_r($log);
print_r($res);





