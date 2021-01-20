<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./inc/header.jsp" %>

<link href="./resources/css/recomProb.css" rel="stylesheet">
<script src="./resources/js/recomDetailModal.js"></script>

			<div class="container" style = "max-width: 80%;">
			<br><h4 class="header center green-text">문제 추천 </h4><br>
				<fieldset>
				     <input class="searchText" type="search" placeholder="검색어를 입력해주세요." />
				     <button class="searchBtn green"><i class="fa fa-search"></i></button>
				</fieldset>
				
				<ul>
			      <li class="sort"><button class="sortBtn green">난이도순</button></li>
			      <li class="sort"><button class="sortBtn green">제목순</button></li>
			      <li class="sort"><button class="sortBtn green">추천순</button></li>
			      <li class="sort"><button class="sortBtn green">최신순</button></li>
			    </ul>
			    
			    <a class="waves-effect waves-light btn green">문제 추천집 만들기</a>
			    
			    <br><br>
			    
			    <div class="table">
					<div class="tableRow">
						<span class="tableCell th2">난이도</span>
						<span class="tableCell th4">제목</span>
						<span class="tableCell th2">등록자</span>
						<span class="tableCell th2">추천수</span>
					</div>
					<c:forEach items="${recoms}" var="recoms" varStatus="status">
					<div class="tableRow">
						<span class="tableCell td2"></span>
						<span class="tableCell td4"><button id="title">${recoms.title}</button></span>
						<span class="tableCell td2">${recoms.nickname}</span>
						<span class="tableCell td2"></span>
					</div>
					</c:forEach>
				</div>
				<br><br>
				
				<div class="table">
					<%-- <c:forEach items="${recoms}" var="recoms" varStatus="status"> --%>
					<div class="tableRow">
						<span class="tableCell th2">문제1</span>
						<span class="tableCell td2">백준</span>
						<span class="tableCell td2" colspan="2">100문제</span>
						<span class="tableCell td2">3</span>
						<span class="tableCell td2">
							<input id="done" type="checkbox">
							<label for="done">완료</label>
						</span>
					</div>
					<div class="tableRow">
						<span class="tableCell th2">태그</span>
						<span class="tableCell td2">반복문</span>
						<span class="tableCell td2">정렬</span>
						<span class="tableCell td2">소수</span>
						<span class="tableCell td2">소수</span>
					</div>
					<div class="tableRow">
						<span class="tableCell th2">내용</span>
						<span class="tableCell td8">입력된 내용들~~~~~</span>
					</div>
					<div class="tableRow">
						<span class="tableCell th2">추천</span>
						<span class="tableCell td8">추천합니당</span>
					</div>
					<%-- </c:forEach> --%>
				</div>				
		      	<br><br>
			</div>
		
<%@ include file="./inc/footer.jsp" %>
