<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../inc/header2.jsp" %>

<link href="../resources/css/problems.css" rel="stylesheet">
<script src="../resources/js/problems.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>


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
                    <div class="ml-3 d-sm-flex align-items-center justify-content-between">
                    	<h3 class="mt-4 header green-text">내 기록들 </h3>
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
                                        <c:forEach items="${goal}" var="goal" varStatus="status">
                                            <tr class="box">
                                                <td>목표</td>
                                                <td>${goal.goal}</td>
                                            </tr>
                                            <tr class="box">
                                                <td>기간</td>
                                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${goal.startDate}"/> 
                                                ~ <fmt:formatDate pattern="yyyy-MM-dd" value="${goal.endDate}"/>
                                                </td>
                                            </tr>
                                            <tr class="box">
                                                <td>총 문제수</td>
                                                <td>${goal.goalNum}개</td>
                                            </tr>
                                        </c:forEach>
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
                                                오늘 해야 할 양
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                    <div class="h1 pt-5 center">           
							     	<div id="table">
							     	   <c:forEach items="${problems}" var="problems" varStatus="status">
								        <c:if test="${status.count == 6}">
									        <div class="box">
									        	<span class="h5 font-weight-bold text-info text-uppercase mb-1">현재 푼 문제 개수</span>
									        	<span class="h5 font-weight-bold text-info text-uppercase mb-1">${status.count} </span>
									        </div>
								      	</c:if>
									   </c:forEach>						     									      
									 </div>	                                   
							     	 <div id="table">
							     	   <c:forEach items="${goal}" var="goal" varStatus="status">
									      <div class="box">
									        <span class="h5 font-weight-bold text-info text-uppercase mb-1">목표 개수 </span>
									        <span class="h5 font-weight-bold text-info text-uppercase mb-1">${goal.goalNum} </span>
									      </div>
									   </c:forEach>						     									      
									 </div>	                                    
                                    
                                    
                                    </div>
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
								<div class = "table" id="problemsContent">
								</div>
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
                            		<div class = "table">
										<div class="tableRow">
											<span class="tableCell th1">문제 제목</span>
											<span class="tableCell td7" id="problemName"></span>
											<span class="tableCell th1">사이트 이름</span>
											<span class="tableCell td2" id="site"></span>
										</div>
										<div class = "tableRow">
											<span class="tableCell th1">날짜</span>
											<span class="tableCell td2" id="regdate"></span>
											<span class="tableCell th1">난이도</span>
											<span class="tableCell td7" id="difficulty"></span>
										</div>
										<div class = "tableRow">
											<span class="tableCell th1">메모</span>
											<span class="tableCell td9" id="memo"></span>
										</div>
									</div>
                            	</div>
                            	<div id="updateSolvedProblem" hidden>
	                            	<div class = "container">
	                            		<form class="col s12">
		                            		<div class = "table">
												<div class="tableRow">
													<span id="UuserProblemID" style="display=none"></span>
													<span class="tableCell th1">문제 제목</span>
													<span class="tableCell td7" id="UproblemName"></span>
													<span class="tableCell th1">사이트 이름</span>
													<span class="tableCell td2" id="Usite"></span>
												</div>
												<div class = "tableRow">
													<span class="tableCell th1">날짜</span>
													<span class="tableCell td2" id="regdate"></span>
													<span class="tableCell th1">난이도</span>
													<input id="Udifficulty" type="text" class="validate" placeholder="1~5사이 숫자로 난이도를 표현하세요!!">
												</div>
												<div class = "tableRow">
													<span class="tableCell th1">메모</span>
													<textarea id="Umemo" type="text" class="validate" placeholder="이 문제에 메모하고 싶은 내용을 적어주세요!!"></textarea>
												</div>
											</div>
	                            		</form>
	                            		</div>
	                            	</div>
	                            </div>
	                         </div>
	                      </div>
	                      </div>
	                  </div>
	                  </div>
	               </div>
	               
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>
<%@ include file="../inc/footer.jsp" %>
