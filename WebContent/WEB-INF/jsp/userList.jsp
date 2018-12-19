<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<div class="container">
	  <div class="row">
	      <div class="col-md-2"></div>
		  <div class="col-md-8">
		  
		  		
			    
			    <table class="table table-bordered">
			    	
			    	<tr>
			    		<h1 class="text-center">用户列表</h1>
			    	</tr>
			    	
			    	<tr>
			    		<a class="btn btn-default pull-right" href="user/addUser">继续添加</a>
			    	</tr>
			        <tr>
			            <th>用户名</th>
			            <th>兴趣爱好</th>
			            <th>朋友</th>
			            <th>职业</th>
			            <th>户籍</th>
			            <th>个人描述</th>
			        </tr>
			        <!-- JSTL标签，请参考本书的相关内容 -->
			        <c:forEach items="${users}" var="user">
			            <tr class="text-center">
			                <td>${user.userName }</td>
			                <td>
			                	<c:forEach items="${user.hobby }" var="hobby">
			                		${hobby }
			                	</c:forEach>
			                </td>
			                <td>
			                	<c:forEach items="${user.friends }" var="friend">
			                		${friend }
			                	</c:forEach>
			                </td>
			                <td>${user.carrer }</td>
			                <td>${user.houseRegister }</td>
			                <td>${user.remark }</td>
			            </tr>
			        </c:forEach>
			    </table>
				
		  </div>
		  <div class="col-md-2"></div>
	  </div>
	</div>

	
    
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>