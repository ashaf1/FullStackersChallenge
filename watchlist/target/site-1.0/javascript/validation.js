$(document).ready(function (e) {
	$("#form").validate({
		
		rules: {
			begin :{
				
				required : true,
				validDater: true
			},
			end :{
				
				required : true,
				validDater: true,
				laterThan : true
			}
			
		},
		messages :{
			begin : {
				required: "Please enter a start date.",
				validDater: "Please enter a date in the format yyyy/mm/dd or yyyy-mm-dd."
			},
			end : {
				required: "Please enter an end date.",
				validDater: "Please enter a date in the format yyyy/mm/dd or yyyy-mm-dd.",
				laterThan : "Must be later than start date."
			}
		},
		errorClass: "error",
		validClass: "valid"
	});
	
	
});
$.validator.addMethod("validDater", function(date) {
    
return date.match(/\b\d{4}[/-]\d{1,2}[/-]\d{1,2}\b/);},
"Please enter a date in the format yyyy/mm/dd or yyyy-mm-dd."
);
$.validator.addMethod("laterThan", 
		function(value, element) {
			var begin = document.getElementById("begin").value;
			var end = document.getElementById("end").value;
		    return begin < end; 
		},"Must be later than start date.");