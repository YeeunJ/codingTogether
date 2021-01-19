<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="./resources/css/manageCodingsite.css" />
<script src="./resources/js/manageCodingsite.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@ include file="./inc/header.jsp"%>
<script>

var isAdd = true;

$(document).ready(function() {

	$('#editbtn').click(function() {
		if ($(".edit").css("display") == "none") {
			$('.edit').show();
		} else {
			$('.edit').hide();
		}
		/* if ($('#submitbtn').html().substring(0, 2) == '추가') {
			$('#submitbtn').html('수정');
		} else {
			$('#submitbtn').html('추가');
		} */
		if ($(this).html().substring(0, 4) == '편집완료') {
			$(this).html('편집');
		} else {
			$(this).html('편집완료');
		}
	});

	
	$('#submitbtn').click(function() {
		var form = document.form1;
		if(form.siteName.value == ''){
			alert('사이트 이름을 입력하세요 ');
			form.siteName.focus();
			return false;
		}
		if(form.siteUrl.value == ''){
			alert('사이트 URL을 입력하세요 ');
			form.siteUrl.focus();
			return false;
		}

		form.submit();
	});
  	
	$('#addbtn').click(function() {
		setAddBtnMode(false)
	});
  	$('#cancelbtn').click(function(){
	  	if(!isAdd) setAddBtnMode(true); 
	  	$("div#new").hide();
	});
	 
	function setAddBtnMode(add){
		isAdd =  add;
		if(isAdd){
			$("div#new").hide();
			$('#addbtn').show();
			$('#editonly').attr("disabled",false); 
			$('#submitbtn').html('수정');
		}
		else{
			$("div#new").show();
			setForm('', '','');
			$("input#siteName").focus();
			$('#addbtn').hide();
			$('#editonly').attr("disabled",true); 
			$('#submitbtn').html('추가');
		} 
	}
	

});

function deleteOk(id) {            
	if (confirm("정말로 삭제하겠습니까?"))
		location.href = './manageCodingsite/deleteok/' + id;
}

function editOk(obj, id, sitename, url){
	
  	if ($("#new").css("display") == "none") {
		$("div#new").show();
	} 
	setForm(id, sitename,url);
}

function setForm(id, sitename, url){
	var form = document.form1;
	form.id.value = id; 
	form.siteName.value = sitename; 
	form.siteUrl.value = url; 
	if(id=='' )
		form.action="manageCodingsite/addok";
	else
		form.action="manageCodingsite/editok";
		
}
</script>


<div class="container">
	<div>
		<h4 class="header green-text">코딩 사이트 관리</h4>
		<br>
	</div>
	<div class="col-1"></div>
	<div class="col-2">
		<button id="addbtn"
			class="btn-small waves-effect waves-light green button">추가</button>
		<button id="editbtn"
			class="btn-small waves-effect waves-light green button">편집</button>
		<br>

	<form name="form1" action="manageCodingsite/addok" method="post">
		 
		<div id="table">
			<div class="row">
				<span class="cell th3 tablehead">사이트 이름 </span> 
				<span class="cell th5 tablehead">URL</span> 
				<span class="cell th1"></span> 
				<span class="cell th1"></span>
			</div>
			<c:forEach items="${posts}" var="u">
				<div class="row content">
			 		<span class="cell td3 sub">${u.getSiteName()}</span> 
					<span class="cell td5 sub"><a href="${u.getSiteUrl()}">${u.getSiteUrl()}</a></span> 
					<span class="cell td1 sub"><button onclick="editOk(this, '${u.getId()}','${u.getSiteName()}','${u.getSiteUrl()}')" type="button" id="change" style="display:none;" class="edit waves-effect waves-light btn-small green">수정</button></span> 
					<span class="cell td1 sub"><a href="javascript:deleteOk('${u.getId()}')"><button style="display:none;"class="edit waves-effect waves-light btn-small green" type="button">삭제</button></a></span>
				</div>
			</c:forEach>
			
			<div id="new" style=" display: none;" class="row">
				<input id="editonly" type="hidden" name="id" />
				<span class="cell td3 sub"><input  id="siteName" type='text'name='siteName'></span>
				<span class="cell td5 sub"><input  id="siteUrl" type='text' name='siteUrl'></span> 
				<span class="cell td1 sub"><button id="cancelbtn"class=" waves-effect waves-light btn-small green" type="button">취소</button></span>
				<span class="cell td1 sub"><button id="submitbtn"class=" waves-effect waves-light btn-small green" type="submit">추가</button></span>
			</div>
		</div>
</form>
	</div>

</div>


<%@ include file="./inc/footer.jsp"%>
