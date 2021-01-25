<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./inc/header.jsp" %>

<link rel="stylesheet" href="./resources/css/solvedProblem.css?a" />
<link href="./resources/css/recommendProblem.css?as" rel="stylesheet">
<script src="./resources/js/recommendProblem.js"></script>

			<div class="container" style = "max-width: 80%;">
			<br><h4 class="header center green-text">문제 추천 </h4><br>
				<fieldset>
				     <input class="searchText" type="search" placeholder="검색어를 입력해주세요." />
				     <button class="searchBtn green"><i class="fa fa-search"></i></button>
				</fieldset>
				
				<div class="input-field col s12 order">
					<select>
						<option value="" disabled selected>정렬</option>
						<option value="1">난이도순</option>
						<option value="2">제목순</option>
						<option value="3">추천순</option>
						<option value="4">최신순</option>
					</select>
				</div>
			    
			    <button id="register-button" class= "waves-effect waves-light btn green input-field" onclick="createProblems()">문제 추천집 만들기</button>
			    
			    <br><br>
			    
			    <div class="table">
					<div class="tableRow">
						<span class="tableCell th1">No.</span>
						<span class="tableCell th4">제목</span>
						<span class="tableCell th2">등록자</span>
						<span class="tableCell th1">난이도</span>
						<span class="tableCell th1">추천수</span>
						<span class="tableCell th1">댓글수</span>
					</div>
					<c:forEach items="${recoms}" var="recoms" varStatus="status">
						<c:set var="count" value="0"/>
						<c:forEach items="${commentCount}" var="c">
							<c:if test="${ c.recomID eq recoms.id }">
    							<c:set var="count" value="${ c.count }"/>
							</c:if>
						</c:forEach>
						<div class="tableRow" id="recoms${recoms.id}" onclick="printAllContent('#recoms${recoms.id}')">
							<span class="tableCell td1">${status.count}</span>
							<%-- <button class="title">${recoms.title}</button> --%>
							<span class="tableCell td4 readTitle">${recoms.title}</span>
							<span class="tableCell td2">${recoms.nickname}</span>
<!-- <<<<<<< HEAD -->
							<span class="tableCell td1"></span>
							<span class="tableCell td1"></span>
							<span class="tableCell td1">${ count }</span>
<!-- ======= -->
							<span class="tableCell td15"></span>
							<span class="tableCell td15 readRecommend">${recoms.recomCount}</span>
<!-- >>>>>>> branch 'master' of https://github.com/YeeunJ/codingTogether.git
 -->							<span class="readProblem" style="display:none;">10문제</span>
							<span class="readTag" style="display:none;">정렬</span>
							<span class="readContent" style="display:none;">${recoms.content}</span>
						</div>
					</c:forEach>
					
					<div id="comment" style="background: pink; width:200px;"">
						<div>
							<input id="content" value="" />
							<button id="addComment">댓글 추가</button>
						</div>
					</div>
					
				</div>
				<br><br>
		      	
		      	
		      	
				
				<!-- insert -->
				<!-- <div id="registerRecommendProblem">
					<div class = "container">
						<form class="col s12">
							<div class="row">
								<div class="input-field col s4">
									<select id = "siteName" required>
										<optgroup label="코딩사이트 선택">
											<option value="" disabled selected>코딩사이트 별 입력</option>
											<option value="1">백준</option>
											<option value="2">leetcode</option>
											<option value="3">SW expert academy</option>
											<option value="4">programmers</option>
											<option value="5">oncoder</option>
											<option value="6">goorm</option>
											<option value="7">leetcode(database)</option>
										</optgroup>
										<optgroup label="링크로 입력">
											<option value="8">링크로 입력</option>
										</optgroup>
									</select>
									<label>코딩사이트 선택</label>
									<span class="helper-text">코딩 사이트를 선택해서 입력하거나 링크로 입력할 수 있습니다.</span>
								</div>
								<div class="input-field col s6">
									<input id="problems" type="text" class="validate">
									<label for="problems">Problems</label>
									<span class="helper-text">문제들을 입력할 때 ,로 구분해주세요!!</span>
								</div>
								<button type="button" id = "add" class="modal_button green lighten-1" onClick = "insertProblems()">추가</button>
							</div>
							 <div class="input-field col s10">
							 	<label for="last_name">입력한 Problems</label>
								<br><br>
								<div id = "confirmSite"></div>
							</div>
						</form>
					</div>
				</div>
				<br><br> -->
				
				<!-- read -->
				<div id="readRecommendProblem" hidden>
					<div class = "container">
						<div class = "col s12">
							<span>문제 : </span><span id="problems"></span>
                            <span>태그 : </span><span id="tags"></span>
               				<span>내용 : </span><span id="contents"></span>
               				<span>추천 : </span><span id="recommends"></span><span>&nbsp;&nbsp;&nbsp;</span><button class= "waves-effect waves-light btn green">추천</button>
               				
               				<div>
               				<b>댓글</b>
               				<p class="comment">좋은 문제 감사합니다~~</p>
               				</div>
        
                        </div>
					</div>
				</div>	
		      	<br><br>
		      	
		      	<!-- update -->
				<!-- <div id="updateRecommendProblem">
					<div class = "container">
					</div>
				</div>
				<br><br> -->
			</div>
			
			
<!-- 문제집 등록 모달 -->
<div id="createProblems" class="container">
	<form class="col s12">
		<p class="title">추천 문제집 제목</p>
		<input placeholder="제목을 입력해주세요."></input>
		
		<p class="title">추천 문제 등록</p>
		<div class="row">
			<div class="input-field col s4">
				<select id="siteName" required>
					<optgroup label="코딩사이트 선택">
						<c:forEach items="${CodingSite}" var="site">
							<option value="${ site.id }">${ site.siteName }</option>
						</c:forEach>
					</optgroup>
					<optgroup label="링크로 입력">
						<option value="0">링크로 입력</option>
					</optgroup>
				</select> <label>코딩사이트 선택</label> <span class="helper-text">코딩 사이트를
					선택해서 입력하거나 링크로 입력할 수 있습니다.</span>
			</div>
			<div class="input-field col s6">
				<input id="problems" type="text" class="validate"> <label
					for="problems">Problems</label> <span class="helper-text">문제들을
					입력할 때 ,로 구분해주세요!!</span>
			</div>
			<button type="button" id="add" class="modal_button lighten-1" onClick="insertProblems()">추가</button>
		</div>
		<div class="input-field col s10">
			<label for="last_name">입력한 Problems</label> <br> <br>
			<div id="confirmSite"></div>
		</div>
		
		<p class="title">추천 문제집 설명</p>
		<textarea></textarea>
	</form>
</div>
		
<%@ include file="./inc/footer.jsp" %>

<script>

$('#addComment').click(function() {
	if(confirm("댓글을 추가하시겠습니까?")){
		$.ajax({
			url: "recommendProblem/addComment",
			type: "POST",
			async: false,
			data: {
				recomID: 2,
				content: $('#content').val()
			},
			success: function(data){
				$('#comment').append(data);
			}, 
			error:function(request, status, error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        }
		}); 
	}
});
</script>
