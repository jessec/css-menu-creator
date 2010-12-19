<?php
require_once('ICssEditor.php');

class CssEditor implements ICssEditor
{
	private $db;
	private $id;
	private $type;
	private $name;
	private $css;
	private $changeType;

	public function init ($settings)
	{
		session_start();
		$this->id = $settings['id'];
		$this->type = $settings['type'];
		$this->name = $settings['name'];
		$this->css = $settings['css'];
		$this->setSession();

		try
		{
			$this->db = new PDO("mysql:host={$settings['db']['host']};dbname={$settings['db']['db']}", $settings['db']['user'], $settings['db']['pass']);
		}
		catch (PDOException $e)
		{
			echo $e->getMessage();
		}
		$this->css = $this->getCss();
	}

	private function setSession ()
	{
		$this->changeType = false;
		if (!isset($_SESSION['type']))
		{
			$_SESSION['type'] = $this->type;
		}
		elseif ($_SESSION['type'] != $this->type)
		{
			$this->changeType = true;
			$_SESSION['type'] = $this->type;
		}
	}

	public function getHeader ($path = null)
	{

		return '	<html>
					<head>
					<title>EditArea</title>
						<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
						<script language="javascript" type="text/javascript" src="js/jquery/plugins/tiny/js/editarea/edit_area_full.js"></script>
						<script type="text/javascript" src="js/jquery/plugins/jquery.getvalues.js"></script>
						<script language="javascript" type="text/javascript">
						editAreaLoader.init({
							id : "textarea_1"		// textarea id
							,syntax: "css"			// syntax to be uses for highgliting
							,start_highlight: true		// to display with highlight mode on start-up
							,word_wrap: true
							,language: "en"
							,min_height: 350
							,min_width: 650
							,allow_toggle: false
							,allow_resize: "both"
						});
						</script>
					</head>
					<body>';
	}

	public function getFooter ($config = null)
	{
		return '</body></html>';
	}

	public function getCss ()
	{
		$sql = "SELECT style FROM css WHERE menu_id='$this->id' AND menu_type='$this->type';";
		$stmt = $this->db->query($sql);
		$row = $stmt->fetch(PDO::FETCH_ASSOC);
		if (isset($row['style']) && $this->changeType)
		{
			$this->css = $row['style'];
		}
		else
		{
			$this->css = $this->getDefaultCss();
		}
		return $this->css;
	}

	public function getMenu ()
	{

		$selected = '';
		$sql = "SELECT id,name FROM tree_elements WHERE ownerEl='0';";
		$form = '<form action="'.$_SERVER['PHP_SELF'].'" method="post"><select style="width:293px" name="id" size="1" onchange="this.form.submit()">';
		$sth = $this->db->query($sql);
		foreach ($sth as $row)
		{
			if ($row['id'] == $this->id)
			{
				$selected = 'selected="selected"';
			}
			$form .= '<option value="'.$row['id'].'"  '.$selected.' >'.$row['name'].'</option>';
			$selected = '';
		}
		$form .= '</select></form>';
		return $form;
	}

	public function getEditArea ()
	{
		$vertical = $horizontal = '';
		if ($this->type === '0')
		{
			$vertical = 'selected="selected"';
		}
		else
		{
			$horizontal = 'selected="selected"';
		}

		$form = '<form method="post" action="'.$_SERVER['PHP_SELF'].' ">name : <input type="text" name="name" value="'.$this->name.'">
		<select name="type" onchange="this.form.submit()"><option value="0" '.$vertical.'> vertical </option><option value="1" '.$horizontal.'> horizontal </option></select><br><br>
		<textarea id="textarea_1" name="css" >'.$this->css.'</textarea>
		<input type="hidden" name="id" value="'.$this->id.'"><br>
		<input type="hidden" name="save" value="true"><br>
		<input type="submit" value="submit" />
		</form>';
		return $form;
	}

	public function save ($css)
	{
		$start = $css;
		if (!$css || empty($css) || $this->changeType)
		{
			$css = $this->getCss();
		}

		$sql = "select id from css WHERE menu_id='$this->id' and menu_type='$this->type';";
		$res = $this->db->query($sql);
		$count = $res->fetchColumn();

		if ($count === false && $start !== false)
		{
			$sql = "INSERT INTO css (title,style,menu_type,menu_id) VALUES ('$this->name', '$css' , '$this->type', '$this->id')";
			$count = $this->db->exec($sql);
		}
		else
		{
			$sql = "UPDATE css SET style='$css',title='$this->name' WHERE menu_id='$this->id' and menu_type='$this->type';";
			$count = $this->db->exec($sql);
		}
		$this->css = $css;
	}

	public function preview ($status)
	{

		if ($this->css === null || !$status)
		{
			return;
		}

		$form = '<style type="text/css">';
		$form .= $this->css;
		$form .= '</style>';

		$form .= '</head><body>';

		$form .= '<div id="console1" style="position:relative;width:100%;"></div>';
		$form .= '<script type="text/javascript">';
		$form .= 'var loadUrl = "menus/test.php?menu_id='.$this->id.'&menu_type='.$this->type.'&ajax";';
		$form .= '$(\'#console1\').html($.getValues(loadUrl));';
		$form .= '</script>';

		if ($this->type === '0')
		{
			$form .= '<script type="text/javascript">var menuids=["sidebarmenu'.$this->id.'"]</script>'; //Enter id(s) of each Side Bar Menu's main UL, separated by commas
			$form .= '<script language="javascript" type="text/javascript" src="js/verticalMenu.js"></script>';
		}
		if ($this->type === '1')
		{
			$form .= '<script type="text/javascript">var myslidemenu= "myslidemenu'.$this->id.'"</script>';
			$form .= '<script language="javascript" type="text/javascript" src="js/horizontalMenu.js"></script>';
		}
		return $form;
	}

	public function getDefaultCss ()
	{
		//TODO not sure what
		if ((int) $this->type === 0)
		{

			return <<<EOT
		
/*vertical-menu*/
/*Credits: Dynamic Drive CSS Library */
/*URL: http://www.dynamicdrive.com/style/ */
.sidebarmenu$this->id ul {
    margin: 0;
    padding: 0;
    list-style-type: none;
    font: bold 13px Verdana;
    width: 180px; /* Main Menu Item widths */
    border-bottom: 1px solid #ccc;
}

.sidebarmenu$this->id ul li {
    position: relative;
}

/* Top level menu links style */
.sidebarmenu$this->id ul li a {
    display: block;
    overflow: auto; /*force hasLayout in IE7 */
    color: white;
    text-decoration: none;
    padding: 6px;
    border-bottom: 1px solid #778;
    border-right: 1px solid #778;
}

.sidebarmenu$this->id ul li a:link, .sidebarmenu$this->id ul li a:visited, .sidebarmenu$this->id ul li a:active {
    background-color: #012D58; /*background of tabs (default state)*/
}

.sidebarmenu$this->id ul li a:visited {
    color: white;
}

.sidebarmenu$this->id ul li a:hover {
    background-color: black;
}

/*Sub level menu items */
.sidebarmenu$this->id ul li ul {
    position: absolute;
    width: 170px; /*Sub Menu Items width */
    top: 0;
    visibility: hidden;
}

.sidebarmenu$this->id a.subfolderstyle {
    background: url(right.gif) no-repeat 97% 50%;
}

/* Holly Hack for IE */ * html .sidebarmenu$this->id ul li {
    float: left;
    height: 1%;
}
* html .sidebarmenu$this->id ul li a {
    height: 1%;
}



		
EOT;

		}
		elseif ((int) $this->type === 1)
		{
			return <<<EOT
		
/*horizontal-menu*/
#myslidemenu$this->id{
position:relative;
width:100%;
}
.jqueryslidemenu$this->id{
font: bold 12px Verdana;
background: transparent; /* #ccc*/
width: 100%;
}

.jqueryslidemenu$this->id ul{
margin: 0;
padding: 0;
list-style-type: none;
}

/*Top level list items*/
.jqueryslidemenu$this->id ul li{
position: relative;
display: inline;
float: left;
}

/*Top level menu link items style*/
.jqueryslidemenu$this->id ul li a{
display: block;
background: #414141; /*background of tabs (default state)*/
color: white;
padding: 8px 10px;
border-right: 1px solid #778;
color: #2d2b2b;
text-decoration: none;
}

* html .jqueryslidemenu$this->id ul li a{ /*IE6 hack to get sub menu links to behave correctly*/
display: inline-block;
}

.jqueryslidemenu$this->id ul li a:link, .jqueryslidemenu$this->id ul li a:visited{
color: white;
}

.jqueryslidemenu$this->id ul li a:hover{
background: black; /*tab link background during hover state*/
color: white;
}
	
/*1st sub level menu*/
.jqueryslidemenu$this->id ul li ul{
position: absolute;
left: 0;
display: block;
visibility: hidden;
}

/*Sub level menu list items (undo style from Top level List Items)*/
.jqueryslidemenu$this->id ul li ul li{
display: list-item;
float: none;
}

/*All subsequent sub menu levels vertical offset after 1st level sub menu */
.jqueryslidemenu$this->id ul li ul li ul{
top: 0;
}

/* Sub level menu links style */
.jqueryslidemenu$this->id ul li ul li a{
font: normal 13px Verdana;
width: 160px; /*width of sub menus*/
padding: 5px;
margin: 0;
border-top-width: 0;
border-bottom: 1px solid gray;
}

.jqueryslidemenu$this->id ul li ul li a:hover{ /*sub menus hover style*/
background: #ccc;
color: black;
}

/* ######### CSS classes applied to down and right arrow images  ######### */

.downarrowclass{
position: absolute;
top: 12px;
right: 7px;
}

.rightarrowclass{
position: absolute;
top: 6px;
right: 5px;
}
		
		
EOT;
		}

	}

}
