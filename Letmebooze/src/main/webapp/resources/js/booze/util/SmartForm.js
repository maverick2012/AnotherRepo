/*
 * Author : Ankur Goel
 * @author Ankur <ankur200188@gmail.com>
 * SmartForm.js
 *
 * Plugin to create a wrapper for HTML forms, that creates a new UI for the forms and handles all the validation, etc.
 *
 * Parameters required : Form HTML Element. 
 * Optional required : SmartForm.css(supplied with this JS file. Users can also have a separate file of their own)
 */
;(function($) {
	$.fn.smartForm = function(formElem){
	
		var globalLogLevel = 'debug';
		
		function _logMessage(methodName, logLevel, message){
			if (globalLogLevel === 'debug') {
				if (logLevel === 'debug' || logLevel === 'info'	|| logLevel === 'error') {
					if (window.console) {
						console.log("[" + logLevel + "] :: "+ methodName + " :: " + message);
					}
				}
			} else if (globalLogLevel === 'info') {
				if (logLevel === 'info' || logLevel === 'error') {
					if (window.console) {
						console.log("[" + logLevel + "] :: "+ methodName + " :: " + message);
					}
				}
			} else if (globalLogLevel === 'error') {
				if (logLevel === 'error') {
					if (window.console) {
						console.log("[" + logLevel + "] :: "+ methodName + " :: " + message);
					}
				}
			}
		}
		
		if($(formElem) || $(formElem).length == 0){
			_logMessage("sorted.js", "error", "Form element not passed");
			return;
		}
		
		var defaults = {
			'order' : 'ascending', // order of the sorted array
			'dataType' : 'string', // type of data to be sorted
			'rule' : 'alphabetical', // some specific sorting criteria, like pre-defined set of rules for custom sort
			'ignoreCase' : false // boolean value for ignoring upper/lower case.
		};
		
		
		try{
			
		} catch (e){
			_logMessage("sorted.js", "error", "Error occured while sorting ::" + e);
		}
		
	};
})(jQuery);