$(document).ready(function() {
	$('#register-button').on('click', function() {
		 createModel("#registerRecommendProblem", "문제집 등록", addAjax);
		 $('select').formSelect();
	});
});
function printAllContent(id){
	$('#problems').html($(id+' .pProblem').html());
	$('#tags').html($(id+' .pTag').html());
	$('#contents').html($(id+' .pContent').html());
	$('#recommends').html($(id+' .pRecommend').html());
	
	rudModel("#readRecommendProblem", "#updateRecommendProblem", $(id+' .pTitle').html(), updateAjax, deleteAjax);
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