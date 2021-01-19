<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./inc/header.jsp" %>
  
    <div class="container" style = "max-width: 50%;">
      <br><h4 class="header center green-text">초기 정보 설정 </h4><br>
	  		<form id = "registerInfo" method="post" action="./registerUserinfo">
		     	<div id="table">
				      <div class="row">
				        <span class="cell col1">아이디 </span>
				        <span class="cell col2"><input type="text" name="userID" placeholder = "아이디를 입력하세요. " required/></span>
				      </div>
				      <div class="row">
				        <span class="cell col1">닉네임 </span>
				        <span class="cell col2"><input type="text" name="nickName" placeholder = "닉네임을 입력하세요. " required/> </span>
				      </div>
				      <div class="row">
				        <span class="cell col1">학번 </span>
				        <span class="cell col2"><input type="text" name="userNumber" placeholder = "학번을 입력하세요. " required/></span>								      	
				      </div>
				      <div class="row">
				        <span class="cell col1">자기소개 </span>
				        <span class="cell col2"><textarea cols="20" rows="50" name="intro" ></textarea></span>								      
				      </div>
				 </div>
				 <br><br>
				 <div class="center">			
		          	<input type="submit" value="등록 " id="download-button" class="btn-large waves-effect waves-light green" />
		         </div>         
			</form>
    </div>
    
    
    <div class="container" style = "max-width: 50%;">
      <br><br>
      <h4 class="header center green-text">초기 목표 설정 </h4><br>
			<form action="./registerUsergoal" method="post">
		     	<div id="table">
				      <div class="row">
				        <span class="cell col1">일별 계획 </span>
				        <span class="cell col2"><input type="text" name="goal" placeholder = "계획을 입력하세요. "/></span>
				      </div>
				      <div class="row">
				        <span class="cell col1">시작 일자 </span>
				        <span class="cell col2"><input type="date" name="startDate"/></span>
				      </div>
				      <div class="row">
				        <span class="cell col1">종료 일자 </span>
				        <span class="cell col2"><input id="date" type="date" name="endDate"/></span>								      	
				      </div>
				      <div class="row">
				        <span class="cell col1">목표 갯수 </span>
				        <span class="cell col2"><input type="number" name="goalNum"></textarea></span>								      
				      </div>
				 </div>
				 <br><br>
				 <div class="center">			
		          	<input type="submit" value="등록 " id="download-button" class="btn-large waves-effect waves-light green" />
		         </div>
			</form>
      </div>

  
<%@ include file="./inc/footer.jsp" %>
