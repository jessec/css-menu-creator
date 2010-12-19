
<?php 

if(!isset($_GET['ajax'])){

echo <<<EOT


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script>!window.jQuery && document.write('<script src="http://code.jquery.com/jquery-1.4.2.min.js"><\/script>');</script>

<style type="text/css">
		
/*vertical-menu*/
/*Credits: Dynamic Drive CSS Library */
/*URL: http://www.dynamicdrive.com/style/ */
.sidebarmenu ul {
    margin: 0;
    padding: 0;
    list-style-type: none;
    font: bold 13px Verdana;
    width: 180px; /* Main Menu Item widths */
    border-bottom: 1px solid #ccc;
}

.sidebarmenu ul li {
    position: relative;
}

/* Top level menu links style */
.sidebarmenu ul li a {
    display: block;
    overflow: auto; /*force hasLayout in IE7 */
    color: white;
    text-decoration: none;
    padding: 6px;
    border-bottom: 1px solid #778;
    border-right: 1px solid #778;
}

.sidebarmenu ul li a:link, .sidebarmenu ul li a:visited, .sidebarmenu ul li a:active {
    background-color: #012D58; /*background of tabs (default state)*/
}

.sidebarmenu ul li a:visited {
    color: white;
}

.sidebarmenu ul li a:hover {
    background-color: black;
}

/*Sub level menu items */
.sidebarmenu ul li ul {
    position: absolute;
    width: 170px; /*Sub Menu Items width */
    top: 0;
    visibility: hidden;
}

.sidebarmenu a.subfolderstyle {
    background: url(right.gif) no-repeat 97% 50%;
}

/* Holly Hack for IE */ * html .sidebarmenu ul li {
    float: left;
    height: 1%;
}
* html .sidebarmenu ul li a {
    height: 1%;
}

/* End */





</style>
<script type="text/javascript">

	//Nested Side Bar Menu (Mar 20th, 09)
	//By Dynamic Drive: http://www.dynamicdrive.com/style/

	var menuids=["sidebarmenu1"] //Enter id(s) of each Side Bar Menu's main UL, separated by commas

	function initsidebarmenu(){
	for (var i=0; i<menuids.length; i++){
	  var ultags=document.getElementById(menuids[i]).getElementsByTagName("ul")
		for (var t=0; t<ultags.length; t++){
		ultags[t].parentNode.getElementsByTagName("a")[0].className+=" subfolderstyle"
	  if (ultags[t].parentNode.parentNode.id==menuids[i]) //if this is a first level submenu
	   ultags[t].style.left=ultags[t].parentNode.offsetWidth+"px" //dynamically position first level submenus to be width of main menu item
	  else //else if this is a sub level submenu (ul)
		ultags[t].style.left=ultags[t-1].getElementsByTagName("a")[0].offsetWidth+"px" //position menu to the right of menu item that activated it
		ultags[t].parentNode.onmouseover=function(){
		this.getElementsByTagName("ul")[0].style.display="block"
		}
		ultags[t].parentNode.onmouseout=function(){
		this.getElementsByTagName("ul")[0].style.display="none"
		}
		}
	  for (var t=ultags.length-1; t>-1; t--){ //loop through all sub menus again, and use "display:none" to hide menus (to prevent possible page scrollbars
	  ultags[t].style.visibility="visible"
	  ultags[t].style.display="none"
	  }
	  }
	}

	if (window.addEventListener)
	window.addEventListener("load", initsidebarmenu, false)
	else if (window.attachEvent)
	window.attachEvent("onload", initsidebarmenu)

</script>

		
EOT;
	
	}


$con = mysql_connect("localhost", "root", "jessejesse");
mysql_select_db("test_tree", $con);

function getTree ($root)
{
	$menu = '';
	$result = mysql_query("SELECT Id, name, url FROM tree_elements WHERE ownerEl = $root ORDER BY position;");
	$newrow = array();

	while ($row = mysql_fetch_array($result))
	{
		$url = '/'.$row['name'];
		if (!empty($row['url']))
		{
			$url = $row['url'];
		}
		$menu .= '<li>';
		$menu .= '<a href="'.$url.'">'.$row['name'].'</a>';
		
		$item = getTree($row['Id']);
		if(!empty($item)){
		$menu .= '<ul>';
		$menu .= $item;

		$menu .= '</ul>';
		}
		$menu .= '</li>';
	}

	return $menu;
}

echo '<div class="sidebarmenu">';
echo '<ul id="sidebarmenu1">';
echo getTree(0);
echo '</ul>';
echo '</div>';

mysql_close($con);

?>
