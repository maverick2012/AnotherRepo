/*
 * @author : Ankur Goel<ankur200188@gmail.com>
 * EnrollController : Javascript Class to handle enrollment flow for LetmeBooze.
 * Has a smart form, handled through SmartForm.js
 * 
 * */

function EnrollController(){
	
	var className = "EnrollController";
	
	function _init(){
		// Initialize Smart Form
		_initForm();
		// bind events
		_bindEvents();
		// handle form validations
		_validateForm();
	}
	
	function _initForm(){
		BoozeUtil.logMessage(className + "::_initForm", "debug", "Initializing Enrollment Smart Form.");
		var form = document.enrollForm;
		$.fn.smartForm(form);
	}
	
	function _bindEvents(){}
	
	function _validateForm(){}
	
	this.init = _init;
}

$(document).ready(function(){
	var EC = new EnrollController();
	EC.init();
});