<?php
interface ICssEditor
{

	/**
	 *  Override the default settings for edit_area
	 *  @param
	 *  		$settings : string
	 *
	 *  editAreaLoader.init({
	 *		id : "textarea_1"		// textarea id
	 *		,syntax: "css"			// syntax to be uses for highgliting
	 *		,start_highlight: true		// to display with highlight mode on start-up
	 *		,word_wrap: true
	 *		,language: "en"
	 *		,min_height: 350
	 *		,min_width: 650
	 *		,allow_toggle: false
	 *		,allow_resize: "both"
	 *	});
	 *
	 *  @return
	 *		
	 */
	public function init ($settings);

	/**
	 *  Sets the header
	 *  @param
	 *  		$path : set the root folder for all files
	 *
	 *  @return
	 *		String, scripts
	 */
	public function getHeader ($path = null);

	/**
	 *  Sets the header
	 *  @param
	 *  		$config : set some vars
	 *
	 *  @return
	 *		String, scripts
	 */
	public function getFooter ($config = null);
	
	/**
	 *  Sets the header
	 *  @param
	 *  		$id : id of menu
	 *  		$type : type of menu (horizontal/vertical/etc.)
	 *
	 *  @return
	 *		String, css
	 */
	public function getCss ();

	/**
	 *  Sets the header
	 *  @param
	 *  		$menus : array(array('id' => '1;, 'name'=>'some name'))
	 *
	 *  @return
	 *		String, form to switch menus
	 */
	public function getMenu ();

	/**
	 * Core editor
	 * @param
	 * 		$content: string of content
	 *
	 * @return
	 * 		the complete edit_area form
	 */
	public function getEditArea ();

	/**
	 * @param
	 * 		$css : takes the css style
	 *
	 * @return
	 * 		content for sucses false for save failure
	 */

	public function save ($css);

	/**
	 *
	 *
	 * @return
	 * 		string, styled css menu
	 */
	public function preview ($status);

}
