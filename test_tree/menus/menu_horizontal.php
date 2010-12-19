
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

<script>!window.jQuery && document.write('<script src="http://code.jquery.com/jquery-1.4.2.min.js"><\/script>');</script>


<style type="text/css">
/*horizontal-menu*/
#myslidemenu{
position:relative;
width:100%;
}
.jqueryslidemenu{
font: bold 12px Verdana;
background: transparent; /* #ccc*/
width: 100%;
}

.jqueryslidemenu ul{
margin: 0;
padding: 0;
list-style-type: none;
}

/*Top level list items*/
.jqueryslidemenu ul li{
position: relative;
display: inline;
float: left;
}

/*Top level menu link items style*/
.jqueryslidemenu ul li a{
display: block;
background: #414141; /*background of tabs (default state)*/
color: white;
padding: 8px 10px;
border-right: 1px solid #778;
color: #2d2b2b;
text-decoration: none;
}

* html .jqueryslidemenu ul li a{ /*IE6 hack to get sub menu links to behave correctly*/
display: inline-block;
}

.jqueryslidemenu ul li a:link, .jqueryslidemenu ul li a:visited{
color: white;
}

.jqueryslidemenu ul li a:hover{
background: black; /*tab link background during hover state*/
color: white;
}
	
/*1st sub level menu*/
.jqueryslidemenu ul li ul{
position: absolute;
left: 0;
display: block;
visibility: hidden;
}

/*Sub level menu list items (undo style from Top level List Items)*/
.jqueryslidemenu ul li ul li{
display: list-item;
float: none;
}

/*All subsequent sub menu levels vertical offset after 1st level sub menu */
.jqueryslidemenu ul li ul li ul{
top: 0;
}

/* Sub level menu links style */
.jqueryslidemenu ul li ul li a{
font: normal 13px Verdana;
width: 160px; /*width of sub menus*/
padding: 5px;
margin: 0;
border-top-width: 0;
border-bottom: 1px solid gray;
}

.jqueryslidemenuz ul li ul li a:hover{ /*sub menus hover style*/
background: #eff9ff;
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




</style>


<!-- <link rel="stylesheet" type="text/css" href="/assets/css/horizontal-menu.css"/>
<script type="text/javascript" src="/assets/js/jquery-1.4.2.min.js"></script>-->
<!--  <script type="text/javascript" src="/assets/js/jquery.slidemenu.js"></script> -->

<script type="text/javascript">
/*********************
//* jQuery Multi Level CSS Menu #2- By Dynamic Drive: http://www.dynamicdrive.com/
//* Last update: Nov 7th, 08': Limit # of queued animations to minmize animation stuttering
//* Menu avaiable at DD CSS Library: http://www.dynamicdrive.com/style/
//*********************/

//Specify full URL to down and right arrow images (23 is padding-right to add to top level LIs with drop downs):
var arrowimages={down:['downarrowclass', 'down.gif', 23], right:['rightarrowclass', 'right.gif']}

var jqueryslidemenu={

animateduration: {over: 200, out: 100}, //duration of slide in/ out animation, in milliseconds

buildmenu:function(menuid, arrowsvar){
	jQuery(document).ready(function($){
		var $mainmenu=$("#"+menuid+">ul")
		var $headers=$mainmenu.find("ul").parent()
		$headers.each(function(i){
			var $curobj=$(this)
			var $subul=$(this).find('ul:eq(0)')
			this._dimensions={w:this.offsetWidth, h:this.offsetHeight, subulw:$subul.outerWidth(), subulh:$subul.outerHeight()}
			this.istopheader=$curobj.parents("ul").length==1? true : false
			$subul.css({top:this.istopheader? this._dimensions.h+"px" : 0})
			$curobj.children("a:eq(0)").css(this.istopheader? {paddingRight: arrowsvar.down[2]} : {}).append(
				'<img src="images/'+ (this.istopheader? arrowsvar.down[1] : arrowsvar.right[1])
				+'" class="' + (this.istopheader? arrowsvar.down[0] : arrowsvar.right[0])
				+ '" style="border:0;" />'
			)
			$curobj.hover(
				function(e){
					var $targetul=$(this).children("ul:eq(0)")
					this._offsets={left:$(this).offset().left, top:$(this).offset().top}
					var menuleft=this.istopheader? 0 : this._dimensions.w
					menuleft=(this._offsets.left+menuleft+this._dimensions.subulw>$(window).width())? (this.istopheader? -this._dimensions.subulw+this._dimensions.w : -this._dimensions.w) : menuleft
					if ($targetul.queue().length<=1) //if 1 or less queued animations
						$targetul.css({left:menuleft+"px", width:this._dimensions.subulw+'px'}).slideDown(jqueryslidemenu.animateduration.over)
				},
				function(e){
					var $targetul=$(this).children("ul:eq(0)")
					$targetul.slideUp(jqueryslidemenu.animateduration.out)
				}
			) //end hover
		}) //end $headers.each()
		$mainmenu.find("ul").css({display:'none', visibility:'visible'})
	}) //end document.ready
}
}

//build menu with ID="myslidemenu" on page:
jqueryslidemenu.buildmenu("myslidemenu", arrowimages)

</script>




<?php
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

echo '<div id="myslidemenu" class="jqueryslidemenu">';
echo '<ul id="sidebarmenu1">';
echo getTree(0);
echo '</ul>';
echo '</div>';

mysql_close($con);

?>
