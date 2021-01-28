<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ include file="./inc/header.jsp" %>
<link rel="stylesheet" href="./resources/css/register.css?asd" />
<script>

function showUserGoal(){
	if($('#userGoal').css('display') == 'none'){
	$('#userGoal').show();
	}
  }
function hideUserGoal(){
	if($('#userGoal').css('display') != 'none'){
		$('#userGoal').hide();
		}			
}
function hideUserInfo(){
	if($('#userInfo').css('display') != 'none'){
		$('#userInfo').hide();
		}			
}


</script>
  
    <div class="container">
    	<div class="register" id=userInfo>
	    	<h5 class="header center gray-text">초기 정보 등록</h5><br>
	  		<form id = "registerInfo" method="post" action="./registerUserinfo">
		     	<div id="table">
				      <div class="row">
				        <span class="cell th1">이름</span>
				        <span class="cell th1"><input type="text" name="name" placeholder = "이름을 입력하세요. " required/></span>
				      </div>
				      <div class="row">
				        <span class="cell th2">이메일</span>
				        <span class="cell th2"><input type="text" name="email" placeholder = "이메일을 입력하세요. " required/> </span>
				      </div>
				      <div class="row">
				        <span class="cell th3">닉네임</span>
				        <span class="cell th3"><input type="text" name="nickName" placeholder = "닉네임을 입력하세요. " required/></span>								      	
				      </div>
				      <div class="row">
				        <span class="cell th4">자기소개 </span>
				        <span class="cell th4"><input type="text" name="intro" placeholder = "자기소개를 입력하세요. " /></span>								      
				      </div>
				 </div>
				 <br><br>
				 <div class="center">			
		          	<input type="submit" value="등록 "  onclick="hideUserInfo(); showUserGoal()" id="download-button" class="btn-small waves-effect waves-light orange" />
		         </div>         
			</form>
		</div>
	    <div class="register" id=userGoal style="display: none">			
	    	<h5 class="header center gray-text">초기 목표 등록</h5><br>
			<form action="./registerUsergoal" method="post">
		     	<div id="table">
				      <div class="row">
				        <span class="cell th1">일별 계획 </span>
				        <span class="cell th1"><input type="text" name="goal" placeholder = "계획을 입력하세요. "/></span>
				      </div>
				      <div class="row">
				        <span class="cell th2">시작 일자 </span>
				        <span class="cell th2"><input type="date" name="startDate"/></span>
				      </div>
				      <div class="row">
				        <span class="cell th3">종료 일자 </span>
				        <span class="cell th3"><input id="date" type="date" name="endDate"/></span>								      	
				      </div>
				      <div class="row">
				        <span class="cell th4">목표 갯수 </span>
				        <span class="cell th4"><input type="number" name="goalNum"></span>								      
				      </div>
				 </div>
				 <br><br>
				 <div class="center">			
		          	<input type="submit" value="등록 " id="download-button" class="btn-small waves-effect waves-light orange" />
		         </div>
			</form>			
		</div>   
    </div>
    
    


  
<%@ include file="./inc/footer.jsp" %>
