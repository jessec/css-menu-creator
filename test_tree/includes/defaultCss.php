<?php



function getDefaultCss ($menu_type, $menu_id)
{
	if ($menu_type === '0')
	{

		return <<<EOT
		
/*vertical-menu*/
/*Credits: Dynamic Drive CSS Library */
/*URL: http://www.dynamicdrive.com/style/ */
.sidebarmenu$menu_id ul {
    margin: 0;
    padding: 0;
    list-style-type: none;
    font: bold 13px Verdana;
    width: 180px; /* Main Menu Item widths */
    border-bottom: 1px solid #ccc;
}

.sidebarmenu$menu_id ul li {
    position: relative;
}

/* Top level menu links style */
.sidebarmenu$menu_id ul li a {
    display: block;
    overflow: auto; /*force hasLayout in IE7 */
    color: white;
    text-decoration: none;
    padding: 6px;
    border-bottom: 1px solid #778;
    border-right: 1px solid #778;
}

.sidebarmenu$menu_id ul li a:link, .sidebarmenu$menu_id ul li a:visited, .sidebarmenu$menu_id ul li a:active {
    background-color: #012D58; /*background of tabs (default state)*/
}

.sidebarmenu$menu_id ul li a:visited {
    color: white;
}

.sidebarmenu$menu_id ul li a:hover {
    background-color: black;
}

/*Sub level menu items */
.sidebarmenu$menu_id ul li ul {
    position: absolute;
    width: 170px; /*Sub Menu Items width */
    top: 0;
    visibility: hidden;
}

.sidebarmenu$menu_id a.subfolderstyle {
    background: url(right.gif) no-repeat 97% 50%;
}

/* Holly Hack for IE */ * html .sidebarmenu$menu_id ul li {
    float: left;
    height: 1%;
}
* html .sidebarmenu$menu_id ul li a {
    height: 1%;
}



		
EOT;

	}
	elseif ($menu_type === '1')
	{
		return <<<EOT
		
/*horizontal-menu*/
#myslidemenu$menu_id{
position:relative;
width:100%;
}
.jqueryslidemenu$menu_id{
font: bold 12px Verdana;
background: transparent; /* #ccc*/
width: 100%;
}

.jqueryslidemenu$menu_id ul{
margin: 0;
padding: 0;
list-style-type: none;
}

/*Top level list items*/
.jqueryslidemenu$menu_id ul li{
position: relative;
display: inline;
float: left;
}

/*Top level menu link items style*/
.jqueryslidemenu$menu_id ul li a{
display: block;
background: #414141; /*background of tabs (default state)*/
color: white;
padding: 8px 10px;
border-right: 1px solid #778;
color: #2d2b2b;
text-decoration: none;
}

* html .jqueryslidemenu$menu_id ul li a{ /*IE6 hack to get sub menu links to behave correctly*/
display: inline-block;
}

.jqueryslidemenu$menu_id ul li a:link, .jqueryslidemenu$menu_id ul li a:visited{
color: white;
}

.jqueryslidemenu$menu_id ul li a:hover{
background: black; /*tab link background during hover state*/
color: white;
}
	
/*1st sub level menu*/
.jqueryslidemenu$menu_id ul li ul{
position: absolute;
left: 0;
display: block;
visibility: hidden;
}

/*Sub level menu list items (undo style from Top level List Items)*/
.jqueryslidemenu$menu_id ul li ul li{
display: list-item;
float: none;
}

/*All subsequent sub menu levels vertical offset after 1st level sub menu */
.jqueryslidemenu$menu_id ul li ul li ul{
top: 0;
}

/* Sub level menu links style */
.jqueryslidemenu$menu_id ul li ul li a{
font: normal 13px Verdana;
width: 160px; /*width of sub menus*/
padding: 5px;
margin: 0;
border-top-width: 0;
border-bottom: 1px solid gray;
}

.jqueryslidemenu$menu_id ul li ul li a:hover{ /*sub menus hover style*/
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