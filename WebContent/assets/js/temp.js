/**
 * 
 */

$(function()
		{
			$("[name = 'hidethis']").hide();
			$("[name='casetaking']").hide();
			$("[id=proceed]").click(
					function() 
					{
						$("[name = hideafterproceed]").hide();
						$("[name = 'hidethis']").show();	
						$(this).prop("disabled",true);
					}	
				);
			$("#next").click(
					function()
					{
						$("[name = 'hidethis']").hide();	
						$("[name='casetaking']").show();
					});
			
});