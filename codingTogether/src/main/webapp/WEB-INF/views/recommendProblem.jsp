<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./inc/header.jsp"%>

<link rel="stylesheet" href="./resources/css/solvedProblem.css?a" />
<link href="./resources/css/recommendProblem.css?as" rel="stylesheet">
<script src="./resources/js/recommendProblem.js"></script>

<style>
#recommend {
	position: relative;
	padding: 100px 0;
}

#recommend:before {
	content: "";
	background-image: url("./resources/img/recommend.jpg");
	background-size: cover;
	top: 0;
	left: 0;
	right: 0px;
	bottom: 0px;
	position: absolute;
	opacity: 0.4;
	z-index: -1;
}

.content {
	top: 20%;
	left: 50px;
	width: 450px;
	bottom: 100px;
	color: #666666;
	font-weight: 800;
	position: absolute;
}

fieldset {
	padding: 0 0 0 40px;
	background: #fff;
	border: none;
}

.search {
	display: flex;
	float: right;
	width: 30% !important;
}

.search_bt {
	all: unset;
}

.search-part {
	margin-bottom: 5%;
}

.top-bar{
	display: flex;
}

.custom-button {
	background-color: white;
	margin-top: 10%; !important;
	border: 1px solid #666666;
	height: 31px;
	border-radius: 20px;
	float: left;
}

.custom-button:hover {
	background-color: #e69138ff;
	color: white;
	border: 1px solid #e69138ff;
}

.order {
	width: 13%;
	float: right;
}


.title {
	border: 0;
	background-color: Transparent;
}

.comment {
	border-bottom: 1px solid #bdbdbd;
}
</style>

<div class="container">
	<div id="recommend">
		<div class="content">
			<h4 class="header main-title">문제 추천</h4>
			<h5 class="sub-title">자신의 문제집을 등록하고, 사용자들과 공유해 보세요!</h5>
		</div>
	</div>

	<div class="search-part">
		<fieldset class="search">
			<input class="search_problem" type="search"
				placeholder="검색어를 입력해주세요." />
			<button class="search_bt" type="submit">
				<i class="fa fa-search"></i>
			</button>
		</fieldset>
	</div>

	<div class="top-bar">
		<button class="input-field custom-button"
			onclick="createProblems()">문제 추천집 만들기</button>
			<div class="input-field col s12 order">
			<select>
				<option value="" disabled selected>정렬</option>
				<option value="1">난이도순</option>
				<option value="2">제목순</option>
				<option value="3">추천순</option>
				<option value="4">최신순</option>
			</select>
		</div>	
	</div>


	<div class="table">
		<div class="tableRow">
			<span class="tableCell th1">No.</span> <span class="tableCell th4">제목</span>
			<span class="tableCell th2">등록자</span> <span class="tableCell th1">난이도</span>
			<span class="tableCell th1">추천수</span> <span class="tableCell th1">댓글수</span>
		</div>
		<c:forEach items="${recoms}" var="recoms" varStatus="status">
			<c:set var="count" value="0" />
			<c:forEach items="${commentCount}" var="c">
				<c:if test="${ c.recomID eq recoms.id }">
					<c:set var="count" value="${ c.count }" />
				</c:if>
			</c:forEach>
			<div class="tableRow" id="recoms${recoms.id}"
				onclick="printAllContent('#recoms${recoms.id}')">
				<span class="tableCell td1">${status.count}</span>
				<%-- <button class="title">${recoms.title}</button> --%>
				<span class="tableCell td4 readTitle">${recoms.title}</span> <span
					class="tableCell td2">${recoms.nickname}</span>
				<!-- <<<<<<< HEAD -->
				<span class="tableCell td1"></span> <span class="tableCell td1"></span>
				<span class="tableCell td1">${ count }</span>
				<!-- ======= -->
				<span class="tableCell td15"></span> <span
					class="tableCell td15 readRecommend">${recoms.recomCount}</span>
				<!-- >>>>>>> branch 'master' of https://github.com/YeeunJ/codingTogether.git
 -->
				<span class="readProblem" style="display: none;">10문제</span> <span
					class="readTag" style="display: none;">정렬</span> <span
					class="readContent" style="display: none;">${recoms.content}</span>
			</div>
		</c:forEach>

		<div id="comment" style="background: pink; width: 200px;"">
			<div>
				<input id="content" value="" />
				<button id="addComment">댓글 추가</button>
			</div>
		</div>

	</div>
	<br> <br>




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
		<div class="container">
			<div class="col s12">
				<span>문제 : </span><span id="problems"></span> <span>태그 : </span><span
					id="tags"></span> <span>내용 : </span><span id="contents"></span> <span>추천
					: </span><span id="recommends"></span><span>&nbsp;&nbsp;&nbsp;</span>
				<button class="waves-effect waves-light btn green">추천</button>

				<div>
					<b>댓글</b>
					<p class="comment">좋은 문제 감사합니다~~</p>
				</div>

			</div>
		</div>
	</div>
	<br> <br>

	<!-- update -->
	<!-- <div id="updateRecommendProblem">
					<div class = "container">
					</div>
				</div>
				<br><br> -->
</div>


<!-- 문제집 등록 모달 -->
<div id="createProblems" class="container" style="display:none;">
	<form class="col s12">
		<p class="title">추천 문제집 제목</p>
		<input class="title-input" placeholder="제목을 입력해주세요."></input>
		
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
			<button type="button" id="add" class="modal_button lighten-1"
				onClick="insertProblems()">추가</button>
		</div>
		<div class="input-field col s10">
			<label for="last_name">입력한 Problems</label> <br> <br>
			<div class="recom-confirmSite" id="confirmSite"></div>
		</div>

		<p class="title">추천 문제집 설명</p>
		<textarea class="desc-textarea"></textarea>
	</form>
</div>


<!-- 세부 정보 모달 -->
<div id="recomDetailModal" style="display:none">
	
	<div id="detailRecom">
		<div>
			<div>
				<p class="title">추천 문제 설명</p>
				<p>배열에 대해 익히고, 재귀 함수를 익힐 수 있는 문제집입니다. 한번씩 풀어보세요~~</p>
			</div>
			
			<div>
				<p class="title desc">추천 문제</p>
				<div id="readProblems">
					<div class="sitetitle">백준</div>
					<div>
						<p>122번</p>
						<p>1256번</p>
						<p>129번</p>
						<p>3번</p>
						<p>2980번</p>
					</div>
					<div class="sitetitle">leetcode</div>
					<div>
						<p>별짓기</p>
						<p>하노이탑</p>
						<p>9002번</p>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div class="details">
				<span class="like-icon icon"></span><span class="bold">34</span><span></span>
				<span class="comment-icon icon"></span><span class="bold">18</span><span></span>
				<span class="diff-icon icon">3</span>
			</div>
			<div id="commentDetail">
				<div class="comment-add">
					<textarea placeholder="댓글을 달아주세요."></textarea>
					<button class="modal_button add-btn">등록</button>
				</div>
				<div class="wrapper">
					<div class="comment-wrapper">
						<span class="username">수루수</span><span class="commentdate">2020-01-17 09:03:17</span>
						<p class="comment">문제 풀면서 다양한 해결법을 배웠습니다!</p>
					</div>
				</div>
				
				
			</div>
			
		</div>
	</div>
	
</div>	
		
<%@ include file="./inc/footer.jsp"%>

<script>
	$('#addComment').click(
			function() {
				if (confirm("댓글을 추가하시겠습니까?")) {
					$.ajax({
						url : "recommendProblem/addComment",
						type : "POST",
						async : false,
						data : {
							recomID : 2,
							content : $('#content').val()
						},
						success : function(data) {
							$('#comment').append(data);
						},
						error : function(request, status, error) {
							console.log("code:" + request.status + "\n"
									+ "message:" + request.responseText + "\n"
									+ "error:" + error);
						}
					});
				}
			});
</script>
