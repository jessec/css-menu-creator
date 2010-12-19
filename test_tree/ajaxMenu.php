<html>
<head>
<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery/plugins/jquery.getvalues.js"></script>

<?php

include dirname(__FILE__).'/includes/defaultCss.php';

$menu_type1 = '0';
$menu_id1 = '9';

echo '<style type="text/css">';
echo getDefaultCss($menu_type1, $menu_id1);
echo '</style>';

echo '</head><body>';

echo '<div id="console1" style="position:relative;width:100%;"></div>';
echo '<script type="text/javascript">';
echo 'var loadUrl = "menus/test.php?menu_id='.$menu_id1.'&menu_type='.$menu_type1.'&ajax";';
echo '$(\'#console1\').html($.getValues(loadUrl));';
echo '</script>';


$menu_type2 = '1';
$menu_id2 = '7';

echo '<style type="text/css">';
echo getDefaultCss($menu_type2, $menu_id2);
echo '</style>';

echo '</head><body>';

echo '<div id="console2" style="position:relative;width:100%;"></div>';
echo '<script type="text/javascript">';
echo 'var loadUrl = "menus/test.php?menu_id='.$menu_id2.'&menu_type='.$menu_type2.'&ajax";';
echo '$(\'#console2\').html($.getValues(loadUrl));';
echo '</script>';



if ($menu_type1 === '0')
{
	echo '<script type="text/javascript">var menuids=["sidebarmenu'.$menu_id1.'","sidebarmenu'.$menu_id2.'"]</script>'; //Enter id(s) of each Side Bar Menu's main UL, separated by commas
	echo '<script language="javascript" type="text/javascript" src="js/verticalMenu.js"></script>';
}
if ($menu_type1 === '1')
{
	echo '<script language="javascript" type="text/javascript" src="js/horizontalMenu.js"></script>';
}


if ($menu_type2 === '0')
{
	echo '<script type="text/javascript">var menuids=["sidebarmenu'.$menu_id2.'"]</script>'; //Enter id(s) of each Side Bar Menu's main UL, separated by commas
	echo '<script language="javascript" type="text/javascript" src="js/verticalMenu.js"></script>';
}
if ($menu_type2 === '1')
{
	echo '<script type="text/javascript">var myslidemenu= "myslidemenu'.$menu_id2.'"</script>'; 
	echo '<script language="javascript" type="text/javascript" src="js/horizontalMenu.js"></script>';
}































?>
	

		
		

</body>
</html>