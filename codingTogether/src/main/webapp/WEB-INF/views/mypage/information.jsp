<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>

<%@ include file="../inc/header2.jsp"%>

<link href="../resources/css/information.css" rel="stylesheet">
<script src="../resources/js/information.js"></script>

    <div class="container">
		<div class = "area" >
		<div id = "info">
		   	<h4 class="header left orange-text">내 정보</h4><br>
				<div class="table">
		     	   	<c:forEach items="${users}" var="user" varStatus="status">
						<div class="tableRow">
						  <span class="tableCell th3">이름 </span>
						  <span class="tableCell th8">${user.name} </span>
						</div>
						<div class="tableRow">
						  <span class="tableCell th3">닉네임 </span>
						  <span class="tableCell th8">${user.nickName}</span>
						</div>
						<div class="tableRow">
						  <span class="tableCell th3">학번</span>
						  <span class="tableCell th8">${user.userNumber}</span>
						</div>
						<div class="tableRow">
						  <span class="tableCell th3">자기소개 </span>
						  <span class="tableCell th8">${user.intro} </span>
						</div>
				   	</c:forEach>						     									      
			 	</div>	 
			<div class="center">
					<input type="button" value="수정하기 " onclick="showInfoEdit();hideInfo();" id="download-button" class="btn-large waves-effect waves-light green" />
			</div>
		</div>

		<div id = infoEdit style = "display:none">
	   	<h4 class="header left orange-text">내 정보 수정</h4><br>
		  	<form:form id = "updateInfo" method="post" action="information/updateInfo" >   
		     	<div class="table">
		     		<c:forEach items="${users}" var="user" varStatus="status">
		     		<input name = "id"  value ="${user.id}" type = "hidden" />														      		
					     <div class="tableRow">
					        <span class="tableCell th3">이름</span>
					        <span class="tableCell th8"><input type="text" name="name" value ="${user.name}" placeholder = "${user.name}"/> </span>
					     </div>
					     <div class="tableRow">
					        <span class="tableCell th3">닉네임</span>
					        <span class="tableCell th8"><input type="text" name="nickName" value ="${user.nickName}" placeholder = "${user.nickName}"/> </span>
					     </div>
				     	 <div class="tableRow">
							<span class="tableCell th3">학번</span>
							<span class="tableCell th8"><input type="text" name="userNumber" value ="${user.userNumber}" placeholder = "${user.userNumber}"/> </span>
				      	</div>
				     	 <div class="tableRow">
							<span class="tableCell th3">자기소개</span>
							<span class="tableCell th8"><input type="text" name="intro" value ="${user.intro}" placeholder = "${user.intro}"/> </span>
						</div>
					</c:forEach>									     						 			      
				 </div>	
				 <div class="center" style = "padding: 10px;">
				    <input id = "submit" type="submit" value="수정하기 " id="download-button" class="btn-large waves-effect waves-light green" />
				   	<input id = "add" type = "button" value="취소하기 " onclick = "showInfo(); hideInfoEdit()" id="download-button" class="btn-large waves-effect waves-light green" />									    
				 </div>											
			</form:form>
		</div>

		<div id = "goal">			
		  	<h4 class="header left orange-text">내 목표</h4><br>
		  	<div class = "table">					
				<c:forEach items="${goals}" var="goal" varStatus="status">
					<div class="tableRow">
					  	<span class="tableCell th3">목표 내용</span>
					  	<span class="tableCell th8">${goal.goal} </span>
					</div>
					<div class="tableRow">
					 	<span class="tableCell th3">목표 기간</span>
		                <span class="tableCell th8"><fmt:formatDate pattern="yyyy-MM-dd"  value="${goal.startDate}" /> 
	                    ~ <fmt:formatDate pattern="yyyy-MM-dd" value="${goal.endDate}"/>
	                    </span>
		                <fmt:formatDate pattern="yyyy-MM-dd"  value="${goal.startDate}" var = "sDate" /> 
		                <fmt:formatDate pattern="yyyy-MM-dd" var = "eDate" value="${goal.endDate}"/>                              						        
					 </div>
				</c:forEach>						     									      
			</div>	
																
			<div class="center">
					<input type="button" value="수정하기 " onclick="showGoalEdit(); hideGoal();" id="download-button"  class="waves-effect waves-light btn-large green" />
			</div>
		</div>
			

		<div id = goalEdit style = "display:none">						
	  	<h4 class="header left orange-text">내 목표 수정</h4><br>						
			<form:form id = "updateGoal" method="post" action="information/updateGoal" >
				<div class="table">
					<c:forEach items="${goals}" var="goal" varStatus="status">
					<input name = "id"  value ="${goal.id}" type = "hidden" />														     	
					<div class="tableRow">
						<span class="tableCell th3">목표 내용 </span>
						<span class="tableCell th8"><input type="text" name="goal" value ="${goal.goal}" placeholder = "${goal.goal}"/> </span>
					</div>
					<div class="tableRow">
					    <span class="tableCell th3">목표 시작일</span>
					    <span class="tableCell th8"><input type="date" name="startDate" value ="${sDate}" /> </span>
					                        
					</div>
					<div class="tableRow">
					    <span class="tableCell th3">목표 종료일</span>
					    <span class="tableCell th8"><input type="date" name="endDate" value ="${eDate}" /> </span>
					</div>
					</c:forEach>
				</div>	
				<div class="center" style = "padding: 10px;">
					<input id = "submit" type="submit" value="수정하기 " id="download-button" class="btn-large waves-effect waves-light green" />
					<input id = "add" type = "button" value="취소하기 " onclick = "showGoal(); hideGoalEdit()" id="download-button" class="btn-large waves-effect waves-light green" />		    
				</div>								  			
			</form:form>						    	
		</div>
		
		</div>										
</div>
				

	<%@ include file="../inc/footer.jsp"%>


