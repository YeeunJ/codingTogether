<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />

<%@ include file="../inc/header2.jsp"%>

<style>
#myActivities {
	position: relative;
	padding: 80px 0;
}

#myActivities:before {
	content: "";
	background-image: url("../resources/img/activities.jpg");
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
</style>

<div class="container">
	<div id="myActivities">
		<div class="content">
			<h3 class="main-title">내 기록</h3>
			<p class="sub-title">지금까지 내가 등록한 기록들을 확인해 보세요!</p>
		</div>
	</div>

	<div class="table center mt-5">
		<div class="tableRow">
			<span class="tableCell th1">No.</span> <span class="tableCell th3">기간</span>
			<span class="tableCell th3">달성률</span> <span class="tableCell th2">상태</span>
		</div>
		
		<c:forEach items="${goalList}" var="goals" varStatus="status">
			<div class="tableRow" id="goals${goals.id}" onclick="printAllContent('#goals${goals.id}')">
				<span class="tableCell td1">${status.count}</span> 
				<span class="tableCell td3 readTitle"> <fmt:formatDate
						pattern="yyyy-MM-dd" value="${goals.startDate}" /> ~ <fmt:formatDate
						pattern="yyyy-MM-dd" value="${goals.endDate}" />
				</span>
				<span class="tableCell td3">
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="70"
							aria-valuemin="0" aria-valuemax="100" style="width: 70%">
							<span>70%</span>
						</div>
					</div>
				</span>
				<fmt:formatDate value="${goals.endDate}" pattern="yyyy-MM-dd"
					var="endDate" />
				<c:choose>
					<c:when test="${endDate > nowDate}">
						<span class="tableCell td2" style="color: blue;">진행중</span>
					</c:when>
					<c:otherwise>
						<span class="tableCell td2">종료</span>
					</c:otherwise>
				</c:choose>
			</div>
		</c:forEach>
		
		<!-- read modal -->
		<div class="table">
				<!-- <div class="tableRow" >
					<span class="tableCell th2">목표</span><span class="tableCell td5" id="goal"></span>
				</div> -->
				<div class="tableRow">
					<span class="tableCell th2">기간</span><span class="tableCell td5" id="term"></span>
				</div>
				<!-- <div class="tableRow">
					<span class="tableCell th2">총 문제수</span><span class="tableCell td5" id="pNum"></span>
				</div> -->
			<!-- 	<div class="tableRow">
					<span class="tableCell th2">달성률</span> <span class="tableCell td5"
						id="rate"></span>
				</div> -->
		</div>
	</div>

	<div id="readGoalList">
		<%@ include file="../ajaxContent/activitiesContent.jsp"%>
	</div>
</div>

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"> <i
	class="fas fa-angle-up"></i>
</a>

<%@ include file="../inc/footer.jsp"%>

