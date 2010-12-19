<?php
class ValidationRules
{

	public function getGetRules ()
	{
		$g = array();
		$g[] = "valid_email,email,Please enter a valid email address.";
		$g[] = "digits_only,id,This field may only contain digits.";
		return $g;
	}

	public function getPostRules ()
	{
		$p = array();
		$p[] = "valid_email,email,Please enter a valid email address.";
		$p[] = "digits_only,id,This field may only contain digits.";
		return $p;
	}

}
