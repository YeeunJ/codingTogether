<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="./resources/css/manageCodingsite.css" />
<script src="./resources/js/manageCodingsite.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<%@ include file="./inc/header.jsp"%>

<script>
$(document).ready(function() {
	
	var posts = new Array();
	
	<c:forEach items="${posts}" var="u">
		
		var list = new Object();
		list.siteName = "${u.getSiteName()}";
		list.siteUrl = "${u.getSiteUrl()}";
		list.id = ${u.getId()};
		
		posts.push(list);
	
	</c:forEach>
	
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
		var form = document.form1;
		form.action="manageCodingsite/addok";
		alert(form.action);
		
		$("div#new").show();
		$("input#siteName").focus();
	});
	
  	
  	
  	$('#addcancel').click(function() {
  		$('#siteName').val("");
  		$('#siteUrl').val("");
  		$('#new').hide();
  	});
  
	
	$('#editbtn').click(function() {
		if ($(".edit").css("display") == "none") {
			$('.edit').show();
		} else {
			$('.edit').hide();
		}
		if ($(this).html().substring(0, 4) == '편집완료') {
			$(this).html('편집');
		} else {
			$(this).html('편집완료');
		}
	});
	
	
	/* $('.editBtn').click(function() {
		var form = document.form1;
		var tableRow = $(this).closest('.tableRow');
		var editCell = tableRow.find('.tableCell');
		var index = $('.tableRow').index(tableRow);
		form.action="manageCodingsite/editok";
		console.log(posts[index-1]);
		
		$(editCell[0]).html('<input id="editonly" type="hidden" name="id" value="'+ posts[index-1].id +'" /> <input id="siteName" type="text" name="siteName" value="'+posts[index-1].siteName+'">');
		$(editCell[1]).html('<input id="siteUrl" type="text" name="siteUrl" value="'+ posts[index-1].siteUrl +'">');
		$(editCell[2]).html('<button id="cancelbtn" class="cancelbtn waves-effect waves-light btn-small green" type="button">취소</button>');
		$(editCell[3]).html('<button id="submitbtn" class="submitbtn waves-effect waves-light btn-small green" type="submit">수정</button>');
		
	}); */
	
	$(document).on("click", ".editBtn", function(){
		var form = document.form1;
		var tableRow = $(this).closest('.tableRow');
		var editCell = tableRow.find('.tableCell');
		var index = $('.tableRow').index(tableRow);
		form.action="manageCodingsite/editok";
		console.log(posts[index-1]);
		
		$(editCell[0]).html('<input id="editonly" type="hidden" name="id" value="'+ posts[index-1].id +'" /> <input id="siteName" type="text" name="siteName" value="'+posts[index-1].siteName+'">');
		$(editCell[1]).html('<input id="siteUrl" type="text" name="siteUrl" value="'+ posts[index-1].siteUrl +'">');
		$(editCell[2]).html('<button id="cancelbtn" class="cancelbtn waves-effect waves-light btn-small green" type="button">취소</button>');
		$(editCell[3]).html('<button id="submitbtn" class="submitbtn waves-effect waves-light btn-small green" type="submit">수정</button>');
	});
	
	
	$(document).on("click", ".deleteBtn", function(){
		var id = $(this).val();
		if (confirm("정말로 삭제하겠습니까?"))
  			location.href = './manageCodingsite/deleteok/' + id;
	});
	
	
	$(document).on("click", "#cancelbtn", function() {
		var tableRow = $(this).closest('.tableRow');
		var cancelCell = tableRow.find('.tableCell');
		var index = $('.tableRow').index(tableRow);
		
		console.log($('#siteName').val());
		console.log($('#siteUrl').val());
	
		$(cancelCell[0]).html(posts[index-1].siteName);
		$(cancelCell[1]).html('<a href="'+posts[index-1].siteUrl+'">'+posts[index-1].siteUrl+'</a>');
		$(cancelCell[2]).html('<button onclick="editOk(this, '+posts[index-1].id+','+posts[index-1].siteName+','+posts[index-1].siteUrl+')" type="button" id="change" class="edit waves-effect waves-light btn-small green">수정</button>');
		$(cancelCell[3]).html('<a href="javascript:deleteOk('+posts[index-1].id+')"><button value="'+posts[index-1].id+'" class="edit deleteBtn waves-effect waves-light btn-small green" type="button">삭제</button></a>');
		
	});
	
})

	
</script>


<div class="container">
	<div>
		<h4 class="header green-text">코딩 사이트 관리</h4>
		<br>
	</div>
	<div class="table">
		<div class="right">
			<button id="addbtn" class=" btn-small waves-effect waves-light green button">추가</button>
			<button id="editbtn" class=" btn-small waves-effect waves-light green button">편집</button>
		</div>
	</div>
	<form name="form1" action="manageCodingsite/addok" method="post">
		 
		<div id="table">
			<div class="tableRow">
				<span class="tableCell th3 tablehead">사이트 이름 </span> 
				<span class="tableCell th5 tablehead">URL</span> 
				<span class="tableCell th1"></span> 
				<span class="tableCell th1"></span>

			</div>
			<c:forEach items="${posts}" var="u">
				<div class="tableRow content">
			 		<span class="tableCell td3 sub">${u.getSiteName()}</span> 
					<span class="tableCell td5 sub"><a href="${u.getSiteUrl()}">${u.getSiteUrl()}</a></span> 
					<span class="tableCell td1 sub"><button type="button" id="change" style="display:none;" class="editBtn edit waves-effect waves-light btn-small green">수정</button></span> 
					<span class="tableCell td1 sub"><button style="display:none;" value="${u.getId()}" class="deleteBtn edit waves-effect waves-light btn-small green" type="button">삭제</button></span>
				</div>
			</c:forEach>
			
			<div id="new" style="display: none;" class="row">
				<input id="editonly" type="hidden" name="id" />
				<span class="tableCell td3 sub"><input  id="siteName" type='text'name='siteName'></span>
				<span class="tableCell td5 sub"><input  id="siteUrl" type='text' name='siteUrl'></span> 
				<span class="tableCell td1 sub"><button id="addcancel"class=" waves-effect waves-light btn-small green" type="button">취소</button></span>
				<span class="tableCell td1 sub"><button id="submitbtn"class=" waves-effect waves-light btn-small green" type="submit">추가</button></span>
			</div>
		</div>
	</form>
</div>




<%@ include file="./inc/footer.jsp"%>
