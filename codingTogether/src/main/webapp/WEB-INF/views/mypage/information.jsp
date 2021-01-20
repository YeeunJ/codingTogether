<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>

<%@ include file="../inc/header2.jsp"%>

<link href="../resources/css/information.css" rel="stylesheet">
<script src="../resources/js/information.js"></script>

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
                    	<h3 class="mt-4 header green-text">내 정보 </h3>
                    </div>

					<!-- Content Row -->
					<div>
						<!-- Approach -->
						<div class="card shadow mb-4" id = info>
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">내 정보</h6>
							</div>
							<div class="card-body">
						     	<div id="table">
						     	   <c:forEach items="${users}" var="user" varStatus="status">
								      <div class="row">
								        <span class="cell th1">이름 </span>
								        <span class="cell th1">${user.name} </span>
								      </div>
								      <div class="row">
								        <span class="cell th2">닉네임 </span>
								        <span class="cell th2">${user.nickName}</span>
								      </div>
								      <div class="row">
								        <span class="cell th3">학번</span>
								        <span class="cell th3">${user.userNumber}</span>
								      </div>
								      <div class="row">
								        <span class="cell th4">자기소개 </span>
								        <span class="cell th4">${user.intro} </span>
								      </div>
								   </c:forEach>						     									      
								 </div>	
							</div>
							<div class="row center">
									<input type="button" value="수정하기 " onclick="showInfoEdit();hideInfo();" id="download-button" class="btn-large waves-effect waves-light green" />
							</div>
						</div>
						
						<div class="card shadow mb-4" id = infoEdit style = "display:none">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">내 정보 수정 </h6>
							</div>
							<div class="card-body">
								<form id = "registerInfo" method="post" action="registerok">	
							     	<div id="table">
							     		<c:forEach items="${users}" var="user" varStatus="status">
									      <div class="row">
									        <span class="cell th1">이름</span>
									        <span class="cell th1"><input type="text" name="userName" placeholder = "${user.name}"/> </span>
									      </div>
									      <div class="row">
									        <span class="cell th2">닉네임</span>
									        <span class="cell th2"><input type="text" name="nickName" placeholder = "${user.nickName}"/> </span>
									      </div>
									      <div class="row">
									        <span class="cell th3">학번</span>
									        <span class="cell th3"><input type="text" name="userNumber" placeholder = "${user.userNumber}"/> </span>
									      </div>
									      <div class="row">
									        <span class="cell th4">자기소개</span>
									        <span class="cell th4"><textarea cols="20" rows="10" name="intro" placeholder = "${user.intro}"></textarea> </span>
									      </div>
										</c:forEach>									     									      
									 </div>											
								</form>
							</div>
							<div class="row center" style ="padding: 10px;">
					   	  		 <input id = "submit" type="button" value="수정하기 " id="download-button" class="btn-large waves-effect waves-light green" />
					     		 <input id = "add" type = "button" value="취소하기 " onclick = "showInfo(); hideInfoEdit()" id="download-button" class="btn-large waves-effect waves-light green" />
						    </div>	
						</div>
												
						<div class="card shadow mb-4" id = "goal">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">내 목표 </h6>
							</div>
							<div class="card-body">
						     	<div id="table">
						     	   <c:forEach items="${goals}" var="goal" varStatus="status">
								      <div class="row">
								        <span class="cell th1">목표 내용</span>
								        <span class="cell th1">${goal.goal} </span>
								      </div>
								      <div class="row">
								        <span class="cell th2">목표 기간</span>
                                        <span class="cell th2"><fmt:formatDate pattern="yyyy-MM-dd" value="${goal.startDate}"/> 
                                        ~ <fmt:formatDate pattern="yyyy-MM-dd" value="${goal.endDate}"/>
                                        </span>							        
								      </div>
								   </c:forEach>						     									      
								 </div>								
<!-- 						     	<div id="table">
								      <div class="row">
								        <span class="cell col1">목표 내용 </span>
								        <span class="cell col2">입력한 목표 내용  </span>
								      </div>
								      <div class="row">
								        <span class="cell col1">기간 </span>
								        <span class="cell col2">입력한 목표 기간  </span>
								      </div>
								 </div>	 -->							
							</div>
							<div class="row center">
									<input type="button" value="수정하기 " onclick="showGoalEdit(); hideGoal();" id="download-button"  class="waves-effect waves-light btn-large green" />
							</div>
						</div>
			

						
						<div class="card shadow mb-4" id = goalEdit style = "display:none">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">내 목표 수정 </h6>
							</div>
							<div class="card-body">							
								  <form:form id = "editGoal" method="post" action="information/editok" >
										<div id="table">
										<c:forEach items="${goals}" var="goal" varStatus="status">
											<div class="row">
												<span class="cell th1">목표 내용 </span>
												<span class="cell th1"><input type="text" name="goal" placeholder = "${goal.goal}"/> </span>
											</div>
											<div class="row">
											    <span class="cell th2">목표 시작일</span>
											    <span class="cell th3"><input type="date" name="startDate" placeholder = <fmt:formatDate pattern="yyyy-MM-dd" value="${goal.startDate}"/>/> </span>
											                        
											</div>
											<div class="row">
											    <span class="cell th3">목표 종료일</span>
											    <span class="cell th3"><input type="date" name="endDate" placeholder = <fmt:formatDate pattern="yyyy-MM-dd" value="${goal.endDate}"/>/> </span>
											</div>
										</c:forEach>
										</div>									  			
										<div class="row center" style ="padding: 10px;">
										  <input id = "submit" type="submit" value="수정하기 " id="download-button" class="btn-large waves-effect waves-light green" />
										  <input id = "add" type = "button" value="취소하기 " onclick = "showGoal(); hideGoalEdit()" id="download-button" class="btn-large waves-effect waves-light green" />
										</div>
						    		</form:form>						    	
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


