<?php
define("IN_PHP", true);
include dirname(__FILE__).'/includes/config.php';
include dirname(__FILE__).'/includes/classes/CssEditor.php';


isset($_POST['id']) ? $id = $_POST['id'] : $id = '0';
isset($_POST['type']) ? $type = $_POST['type'] : $type = false;
isset($_POST['name']) ? $name = $_POST['name'] : $name = 'choose name';
isset($_POST['css']) ? $css = $_POST['css'] : $css = false;

//echo $css;

$settings['db']['host'] = $dbHost;
$settings['db']['db'] = $dbName;
$settings['db']['user'] = $dbUsername;
$settings['db']['pass'] = $dbPassword;
$settings['id'] = $id;
$settings['type'] = $type;
$settings['name'] = $name;

$ed = new CssEditor;
$ed->init($settings);
$ed->save($css);
echo $ed->getHeader();
echo $ed->getMenu();
echo $ed->getEditArea();
echo $ed->preview($css);
echo $ed->getFooter();

?>
	

