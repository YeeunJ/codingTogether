<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../inc/header2.jsp" %>

<link href="../resources/css/problems.css" rel="stylesheet">
<script src="../resources/js/createModal.js"></script>
<script src="../resources/js/problems.js"></script>

<!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color:#B7CA79">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="./problems">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">My Page</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-1">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="./problems">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>내가 푼 문제들</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-1">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="./activities">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>내 기록들</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-1">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="./information">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>내 정보</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="ml-3 d-sm-flex align-items-center justify-content-between mb-3">
                        <h1 class="h3 mb-0 text-gray-800">내가 푼 문제들</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-3">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h5 font-weight-bold text-primary text-uppercase mb-1">
                                                나의 목표</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <table>
                                            <tr class="box">
                                                <td>목표</td>
                                                <td>하루에 3문제</td>
                                            </tr>
                                            <tr class="box">
                                                <td>기간</td>
                                                <td>2021-01-02 ~ 2021-02-20</td>
                                            </tr>
                                            <tr class="box">
                                                <td>총 문제수</td>
                                                <td>100문제</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-3">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h5 font-weight-bold text-info text-uppercase mb-1">
                                                오늘 해야 할 양</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                    <div class="h1 pt-5 center "> 1문제 / 3문제</div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-4 col-md-6 mb-3">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h5 font-weight-bold text-warning text-uppercase mb-1">
                                                현재 상황</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                    <canvas id="myChart"></canvas>
                                    <div class="mt-4 text-center small">
                                        <span class="ml-3 mr-2">
                                            <i class="fas fa-circle" style="color: lightblue;"></i> 총 문제수
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle" style="color: yellow;"></i> 푼 문제수
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->
                    <div>
                        <div class="card shadow mb-3">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary" id="solvedProblemH">내가 푼 문제들</h6>
                                <button id="register-button" class= "green lighten-1 addButton"><i class="material-icons white-text">add</i></button>
                            </div>
                            <div class="card-body">
								<fieldset class="search">
									<input class="search_problem" type="search"
										placeholder="문제 번호를 입력해주세요." />
									<button class="search_bt" type="submit">
										<i class="fa fa-search"></i>
									</button>
								</fieldset>
								<div class = "table">
									<div class="row">
										<span class="cell th2"></span>
										<span class="cell th2"></span>
										<span class="cell th2"></span>
										<span class="cell th2"></span>
										<span class="cell th2"></span>
									</div>
								</div>
								 <!--
								<table class="table table-striped">
                                        <thead>
                                          <tr>
                                            <th scope="col">No.</th>
                                            <th scope="col">문제 제목</th>
                                            <th scope="col">메모</th>
                                            <th scope="col">날짜</th>
                                            <th scope="col">난이도</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${problems}" var="problem" varStatus="status">
                                          <tr class="problemContent" id="problem${status.count}" onclick="printAllContent('#problem${status.count}')">
                                            <td scope="row">${status.count}</td>
                                            <td class="pTitle"><a href="${problem.link}" target="_blank">${problem.problem}</a></td>
                                            <td class="pMemo">${problem.memo}</td>
                                            <td class="pRegdate">${problem.regDate}</td>
                                            <td class="pDifficulty" style="padding: 0.3rem 1rem;"><img style="width: 34px;" alt="2" src="../resources/img/difficulty${problem.difficulty}.png"></td>
                                            <td class ="pSite" style="display:none;">${problem.site}</td>
                                            <td class ="pSiteUrl" style="display:none;">${problem.siteUrl}</td>
                                          </tr>
                                        </c:forEach>
                                        </tbody>
                            	</table> -->
                            	<div id="registerSolvedProblem" hidden>
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
										      <div id = "confirmSite">
									          </div>
									      </div>
										</form>
                            		</div>
                            	</div>
                            	<div id="readSolvedProblem" hidden>
                            		<div class = "container">
                            			<div class = "col s12">
                            				<div>site 이름: <div id="siteName"></div></div>
                            			</div>
									</div>
                            	</div>
                            	
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

	<%@ include file="../inc/footer.jsp" %>
