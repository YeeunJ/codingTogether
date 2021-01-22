<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />  

<%@ include file="../inc/header2.jsp"%>

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav sidebar sidebar-dark accordion"
			id="accordionSidebar" style="background-color: #B7CA79">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="./problems">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">My Page</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-1">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="./problems"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>내가
						푼 문제들</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-1">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="./activities"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>내 기록들</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-1">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="./information"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>내 정보</span></a></li>

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
					<div>
						<!-- Approach -->
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">내 기록들</h6>
							</div>
							<div class="card-body">
								<div class = "table">
									<div class="tableRow">
										<span class="tableCell th1">No.</span>
										<span class="tableCell th3">기간</span>
										<span class="tableCell th3">달성률</span>
										<span class="tableCell th2">상태</span>
									</div>
									<c:forEach items="${goalList}" var="goals" varStatus="status">
									<div class="tableRow">
										<span class ="tableCell td1">${status.count}</span>
										<span class ="tableCell td3">
											<fmt:formatDate pattern="yyyy-MM-dd" value="${goals.startDate}"/> 
                                        	~ <fmt:formatDate pattern="yyyy-MM-dd" value="${goals.endDate}"/>
										</span>
										<span class ="tableCell td3">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
													style="width: 70%">
													<span>70%</span>
												</div>
											</div>
										</span>
										<fmt:formatDate value="${goals.endDate}" pattern="yyyy-MM-dd" var="endDate" /> 
										<c:choose>
											<c:when test="${endDate > nowDate}">
												<span class ="tableCell td2">진행중</span>
											</c:when>
											<c:otherwise>
												<span class ="tableCell td2">종료</span>
											</c:otherwise>
										</c:choose>
									</div>
									</c:forEach>
								</div>

								<!-- 기간누르면 해당목표 상세모달 뜸 -->
								<!-- <div id="MyActivitiesDetail" hidden>
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
                            	</div> -->
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<!-- <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer> -->
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<!-- <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div> -->

	<%@ include file="../inc/footer.jsp"%>

