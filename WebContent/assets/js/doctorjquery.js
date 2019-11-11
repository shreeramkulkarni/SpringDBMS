/**
 * 
 */


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
						
						 function onchange() {
					            //Since you have JQuery, why aren't you using it?
					            var box1 = $(this);
					            id = $(this).attr("id");
					            //box2.val("Patient Id: "+box1.val());
					            if(id=='field1')
					            $('#report').append("Patient ID: "+box1.val()+"\n");
					    if(id=='field2')
					        $('#report').append("C/O:  "+box1.val()+"\n");
					        if(id=='field3')
					            $('#report').append("H/O: "+box1.val()+"\n");
					            if(id=='field4')
					                $('#report').append("Physical Findings: "+box1.val()+"\n");
					                if(id=='field5')
					                    $('#report').append("O/E: "+box1.val()+"\n");
					                    if(id=='field6')
					                        $('#report').append("CNS-RS-NAD P/A : "+box1.val()+"\n");
					                        if(id=='field7')
					                         $('#report').append("Investigations : "+box1.val()+"\n");
					                        
					        }
					$('#field1').on('change', onchange);
					$('#field2').on('change', onchange);
					$('#field3').on('change', onchange);
					$('#field4').on('change', onchange);
					$('#field5').on('change', onchange);
					$('#field6').on('change', onchange);
					$('#field7').on('change', onchange);
						
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
			$("#casesubmit").click(
					function(){
						var report = $("#caseform").serializeArray();
						console.log(report);  
						$.ajax(
								{
									url:"http://localhost:8080/SpringDBMS/doctor/casetaking",
									data: "report="+report,
									success : function() {
										console.log("success");
									}
										
								});
					});
			
});