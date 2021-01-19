/*
data = { 
        datasets: [{ 
            backgroundColor: ['lightblue','yellow'], 
            data: [100, 20] 
        }],
        labels: ['총 문제수','푼 문제수'] };
    var ctx = document.getElementById("myChart"); 
    var myDoughnutChart = new Chart(ctx, { 
        type: 'doughnut', 
        data: data, 
        options: {
            legend: {
                display: false
            }
        } 
    }); 
*/
$(document).ready(function() {
	$('#register-button').on('click', function() {
		 createModel("#registerSolvedProblem", "문제 등록", addAjax);
		 $('select').formSelect();
	});
});
function printAllContent(id){
	$('#siteName').html($(id+' .pSite').html());
	$('#problemName').html($(id+' .pSite').html());
	$('#memo').html($(id+' .pMemo').html());
	$('#regdate').html($(id+' .pRegdate').html());
	$('#difficulty').html($(id+' .pDifficulty').html());
	
	rudModel("#readSolvedProblem", "#updateSolvedProblem", $(id+' .pTitle').html(), updateAjax, deleteAjax);
	$('select').formSelect();
}

function addAjax (){
	console.log("success");
	//ajax 넣는 함수
}

function updateAjax (){
	console.log("update!!");
	//ajax 넣는 함수
}

function deleteAjax (){
	console.log("update!!");
	//ajax 넣는 함수
}


function deleteThis(id){
	var allid = "#"+id;
	$(allid).remove();
}

var count=0;
function insertProblems(){
	var array = ['', '백준', 'leetcode', 'SW expert academy', 'oncoder', 'goorm', 'leetcode[database]', 'link'];
	var site = $("#siteName option:selected").val();
	var value = document.getElementById("problems").value;
	var valueSplit = value.split(',');
	var data = $('#confirmSite').html();
	for(var i in valueSplit){
		data += '<div id = "confirmProblemValue'+count+'" onClick="deleteThis(\'confirmProblemValue'+count+'\')"><input disabled value="'+valueSplit[i]+' ('+array[site]+')" id="last_name disabled" type="text" class="validate"/></div>';
		count++;
	}
	$('#confirmSite').html(data);
	document.getElementById("problems").value = "";
	$("#siteName option:selected").val("");
}