<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="./resources/css/home.css" />
<link rel="stylesheet" href="./resources/css/solvedProblem.css" />

	<%@ include file="./inc/header.jsp"%>


	<!-- first section start- 문제 등록, 내 정보 -->
	<div class="section no-pad-bot" id="myInfo">
		<div class="container center">
			<br><br>
			<h3 class="main-title">혼자서는 힘든 코딩 연습, 친구들과 함께 해보세요!</h3>
			<h5>매일 푼 문제를 등록하고 설정한 목표를 달성해보세요.</h5>
			<br>
			<div class="row center">
				<button id="register-button" class="probBtn">문제 등록하러 가기</button>
<!-- 				<a href="" id="register-button" class="probBtn">문제 등록하러 가기</a>
 -->			</div>
			<br><br>
			<hr>
		</div>
	</div>

	<!-- second section start- 랭킹, 태그, 순위 -->
	<div class="container">
		<div class="section">
			<div class="row center">
				<div class="col s12 m4">
					<div class="icon-block">
						<span class="icon icon-award"></span>
						<h5 class="small-title">오늘의 랭킹</h5>
						<ul class="fs-18 list">
							<li class="ranking"><span class="bold">1.</span> 홍길동</li>
							<li class="ranking"><span class="bold">2.</span> 김빛나리</li>
							<li class="ranking"><span class="bold">3.</span> 양지후</li>
							<li class="ranking"><span class="bold">4.</span> 정예은</li>
						</ul>
					</div>
				</div>

				<!-- <div class="col s12 m4">
					<div class="icon-block">
						<span class="icon icon-problem"></span>
						<h5 class="position-r small-title">
							문제 순위<a href="./recommendProblem" class="more">더보기 ></a>
						</h5>
						<ul class="fs-18 list">
							<li class="postit"><span class="bold">1.</span> 백준 2097번</li>
							<li class="postit"><span class="bold">2.</span> 백준 10020번</li>
							<li class="postit"><span class="bold">3.</span> leetcode 27번</li>
							<li class="postit"><span class="bold">4.</span> 백준 407번</li>
						</ul>
					</div>
				</div> -->
				
				<div class="col s12 m4">
					<div class="icon-block">
						<span class="icon icon-tag"></span>
						<h5 class="small-title">인기 태그</h5>
						<ul class="fs-18 list">
							<li class="tag"><span class="bold">#</span> DP</li>
							<li class="tag"><span class="bold">#</span> 수학</li>
							<li class="tag"><span class="bold">#</span> 조건문</li>
							<li class="tag"><span class="bold">#</span> 기본 200제</li>
							<li class="tag"><span class="bold">#</span> DP</li>
							<li class="tag"><span class="bold">#</span> 수학</li>
							<li class="tag"><span class="bold">#</span> 조건문</li>
							<li class="tag"><span class="bold">#</span> 기본 200제</li>
						</ul>
					</div>
				</div>
				
				<div class="col s12 m4">
					<div class="icon-block">
						<span class="icon icon-problem"></span>
						<h5 class="position-r small-title">
							문제 순위<a href="./recommendProblem" class="more">더보기 ></a>
						</h5>
						<ul class="fs-18 list">
							<li class="postit"><span class="bold">1.</span> 백준 2097번</li>
							<li class="postit"><span class="bold">2.</span> 백준 10020번</li>
							<li class="postit"><span class="bold">3.</span> leetcode 27번</li>
							<li class="postit"><span class="bold">4.</span> 백준 407번</li>
						</ul>
					</div>
				</div>
				
			</div>
		</div>
		<br>
	</div>
	<!-- second finish -->

    <br>
    
  </div>
	<%@ include file="./inc/footer.jsp" %>
	<%@ include file="./solvedProblem.jsp"%>
