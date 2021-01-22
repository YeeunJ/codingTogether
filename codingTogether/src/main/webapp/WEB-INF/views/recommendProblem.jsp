<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./inc/header.jsp" %>

<link href="./resources/css/recommendProblem.css" rel="stylesheet">
<script src="./resources/js/recommendProblem.js"></script>

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
			    
			    <button id="register-button" class= "waves-effect waves-light btn green">문제 추천집 만들기</button>
			    
			    <br><br>
			    
			    <div class="table">
					<div class="tableRow">
						<span class="tableCell th1">No.</span>
						<span class="tableCell th4">제목</span>
						<span class="tableCell th2">등록자</span>
						<span class="tableCell th15">난이도</span>
						<span class="tableCell th15">추천수</span>
					</div>
					<c:forEach items="${recoms}" var="recoms" varStatus="status">
						<div class="tableRow" id="recoms${recoms.id}" onclick="printAllContent('#recoms${recoms.id}')">
							<span class="tableCell td1">${status.count}</span>
							<%-- <button class="title">${recoms.title}</button> --%>
							<span class="tableCell td4 readTitle">${recoms.title}</span>
							<span class="tableCell td2">${recoms.nickname}</span>
							<span class="tableCell td15"></span>
							<span class="tableCell td15"></span>
							<span class="readProblem" style="display:none;">10문제</span>
							<span class="readTag" style="display:none;">정렬</span>
							<span class="readContent" style="display:none;">${recoms.content}</span>
							<span class="readRecommend" style="display:none;">10</span>
						</div>
					</c:forEach>
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
               				<span>추천 : </span><span id="recommends"></span>
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
		
<%@ include file="./inc/footer.jsp" %>
