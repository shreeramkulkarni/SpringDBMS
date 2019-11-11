/**
 * 
 */
var pat;

function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) 
        month = '0' + month;
    if (day.length < 2) 
        day = '0' + day;

    return [year, month, day].join('-');
}

function reviewData(patient) {
	
	$("[path=patientId]").val(patient.patientId);
	$("[path=remarks]").val(patient.remarks);
	$("[path=patientName]").val(patient.patientName);
	$("[path=dob]").val(formatDate(patient.dob));
	$("div#dataTable_length option[value='"+patient.bloodGroup.toUpperCase()+"']").attr('selected',true);
	
	//set patient gender
	if (patient.gender === 'f') {
		$("div.dataTables_length option[value='Female']").attr('selected',true);
	}
	else if (patient.gender === 'm') {
		$("div.dataTables_length option[value='Male']").attr('selected',true);
	}
	else {
		$("div.dataTables_length option[value='Other']").attr('selected',true);
	}
	
	$("[path=phoneNo]").val(patient.phoneNo);
	$("[path=address]").val(patient.address);
	$("[path=district]").val(patient.district);
	$("[path=state]").val(patient.state);
	
}

$(function()
		{
			$("[name = 'hidethis']").hide();
			$("[name='casetaking']").hide();
			$("[id=proceed]").click(
					function() 
					{
						$("#warn").show();
						if($("[name=patId]").val()==="")
							{
								document.getElementById("warn").innerHTML = "Please enter Patient ID!!";
								return;
							}
						$("[name = hideafterproceed]").hide();
						$("[name = 'hidethis']").show();
						$.ajax({
							url : "http://localhost:8080/SpringDBMS/doctor/patient/update?patientId="+$("[name=patId]").val(),
							success : function(patient) {
								reviewData(patient);
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
						$("#warn").hide();
						$("[name = hideafterproceed]").show();
						$("[name = 'hidethis']").hide();
						$("[name=patId]").val("");
					});
			$("#reset").click(
					function(){
						$("#warn").hide();
						$("[name = casetaking]").hide();
						$("[name = 'hideafterproceed']").show();
						$("[name=patId]").val("");
					});
});