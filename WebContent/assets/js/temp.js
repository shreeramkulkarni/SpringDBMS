/**
 * 
 */

$("[name = 'hidethis']").hide();
$("[id=proceed]").click( function() {
	$("[name = 'hidethis']").show();
});
