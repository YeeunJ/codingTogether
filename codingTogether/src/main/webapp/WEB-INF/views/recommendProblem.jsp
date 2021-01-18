<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./inc/header.jsp" %>

<link rel="stylesheet" href="./resources/css/recomProb.css" />
<script src="./resources/js/recomDetailModal.js"></script>

	
		<div class="section no-pad-bot" id="index-banner">
			<div class="container">
				<br><br>
				<fieldset>
				     <input class="searchText" type="search" placeholder="검색어를 입력해주세요." />
				     <button class="searchBtn green"><i class="fa fa-search"></i></button>
				</fieldset>
				
				<ul>
			      <li><button class="sortBtn green">난이도순</button></li>
			      <li><button class="sortBtn green">제목순</button></li>
			      <li><button class="sortBtn green">추천순</button></li>
			      <li><button class="sortBtn green">최신순</button></li>
			    </ul>
			    
			    <a class="waves-effect waves-light btn green">문제 추천집 만들기</a>
			    
			    <br><br>
			    <div class="table">
					<div class="rowHead">
						<span class="cell col1">난이도</span>
						<span class="cell col2">제목</span>
						<span class="cell col3">등록자</span>
						<span class="cell col4">추천수</span>
					</div>
					<div class="row">
						<span class="cell col1">3</span>
						<span class="cell col2"><button id="title">100문제</button></span>
						<span class="cell col3">나리</span>
						<span class="cell col4">10</span>
					</div>
				</div>
				
		      	<br><br>
			</div>
		</div>
		
<%@ include file="./inc/footer.jsp" %>
