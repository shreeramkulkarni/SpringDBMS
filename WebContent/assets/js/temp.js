/**
 * 
 */
var pat;
$(function()
		{
			$("[name = 'hidethis']").hide();
			$("[name='casetaking']").hide();
			$("[id=proceed]").click(
					function() 
					{
						console.log($("[name=patId]").val())
						$("[name = hideafterproceed]").hide();
						$("[name = 'hidethis']").show();
						$.ajax({
							url : "http://localhost:8080/SpringDBMS/admin/update?patientId="+$("[name=patId]").val(),
							success : function(data) {
								loadData(data);
							}
						});	
					}	
				);
			$("#next").click(
					function()
					{
						$("[name = 'hidethis']").hide();	
						$("[name='casetaking']").show();
					});
			
			$("#back").click(
					function(){
						$("[name = hideafterproceed]").show();
						$("[name = 'hidethis']").hide();
					});
			$("#reset").click(
					function(){
						$("[name = casetaking]").hide();
						$("[name = 'hideafterproceed']").show();
					});
});