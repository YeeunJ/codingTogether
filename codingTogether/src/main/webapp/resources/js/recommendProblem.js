// 정렬
document.addEventListener('DOMContentLoaded', function() {
	var elems = document.querySelectorAll('select');
    //var instances = M.FormSelect.init(elems, options);
});

// Or with jQuery
$(document).ready(function(){
    $('select').formSelect();
});

var instance = M.FormSelect.getInstance(elem);
instance.getSelectedValues();
instance.destroy();



/*$(document).ready(function() {
	$('#register-button').on('click', function() {
		 createModel("#registerRecommendProblem", "문제집 등록", addAjax);
		 $('select').formSelect();
	});
});*/

function createProblems() {
	createModel("#createProblems", "문제집 등록", addAjax);
}

function printAllContent(id){
	$('#problems').html($(id+' .readProblem').html());
	$('#tags').html($(id+' .readTag').html());
	$('#contents').html($(id+' .readContent').html());
	$('#recommends').html($(id+' .readRecommend').html());
	
	rudModel("#readRecommendProblem", "#updateRecommendProblem", $(id+' .readTitle').html(), updateAjax, deleteAjax);
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