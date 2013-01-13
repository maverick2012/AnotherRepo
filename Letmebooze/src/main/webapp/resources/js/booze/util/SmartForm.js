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
	$.fn.smartForm = function(formElem, options){
	
		if($(formElem) && $(formElem).length == 0){
			BoozeUtil.logMessage("smartForm.js", "error", "Form element not passed");
			return;
		}
		
		var defaults = {
			'useInputPlaceHolder' : true, 
			'customSelectBox' : true
		};
		
		options = $.extend(defaults, options);
		
		try{
			BoozeUtil.logMessage("smartForm.js", "info", "Initializing Smart form on Node ::" + formElem.nodeName + "::" + formElem.name);
			$(formElem).addClass("smartForm");
			if(options.useInputPlaceHolder){
				$(".smartForm .text").each(function(){
					var $t = $(this);
					$t.children('input').on("focus", function(){
						$t.addClass("textFocus");
					}).on("blur", function(){
						$t.removeClass("textFocus");
						if(this.value.length == 0){
							$(this).siblings('label').css("opacity", 1);
						}
					}).on("keyup", function(){
						if(this.value.length == 0){
							$(this).siblings('label').css("opacity", 0.5);
						} else {
							$(this).siblings('label').css("opacity", 0);
						}
					});
				});
			}
			if(options.customSelectBox){
				$(".smartForm .select").addClass("customSelect");
				$(".smartForm .customSelect").each(function(k){
					var $selectNode = $(this).children('select');
					$selectNode.hide();
					var selectedOption = $selectNode.children('option:selected').text();
					var customSelectTemp = "<div class = 'selectContainer'><div class='downArrow'></div><div class = 'selectedValue grayGradient'>"+selectedOption+"</div><ul class = "+$(this).children('select').attr('name')+">";
					var optionCount = $selectNode.children('option').length;
					var liStyleClass = "";
					$(this).children('select').children('option').each(function(k){
						((k==0) ? (liStyleClass = "firstRow") : ((k==(optionCount-1) ? (liStyleClass = "lastRow") : (liStyleClass = ""))));
						customSelectTemp += "<li selectValue = "+this.value+" class = "+liStyleClass+">"+$(this).text()+"</li>";
					});
					customSelectTemp += "</ul></div>";
					$(this).append(customSelectTemp);
					
					$(this).on('click.showSelect', '.selectedValue, .downArrow', function(){
						$('.smartForm .customSelect .selectedValue').addClass('selectVisible');
						$(this).siblings('ul').show();
					});
					
					$(this).on('click.optionSelect', 'li', function(){
						$selectNode.children('option:selected').removeAttr('selected');
						$selectNode.children('option[value = '+$(this).attr('selectValue')+']').attr('selected', 'selected');
						var $selectValueNode = $(this).parents('.selectContainer').children('.selectVisible.selectedValue');
						$selectValueNode.text($(this).text()).removeClass('selectVisible');
						$(this).parents('ul').hide();
					});
				});
			}
		} catch (e){
			BoozeUtil.logMessage("smartForm.js", "error", "Error occured while sorting ::" + e);
		}
		
	};
})(jQuery);