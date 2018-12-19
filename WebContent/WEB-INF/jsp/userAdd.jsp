<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加用户</title>

</head>
<body>
	
	
    <!-- model.addAttribute("user",user) -->
	<form:form modelAttribute="user"  method="post" action="user/save">
	    <fieldset>
	        <legend>添加一个用户</legend>
	        <p>
	            <label>用户名:</label>
	            <form:input path="userName"/>
	        </p>
	        
	        <p>
	            <label>爱好:</label>
	            <!-- model.addAttribute("hobbys",hobbys) -->
	            <form:checkboxes items="${hobbys}"  path="hobby" />
	        </p>
	        
	        <p>
	            <label>朋友:</label>
	            <form:checkbox path="friends" value="张三"/>张三
	            <form:checkbox path="friends" value="李四"/>李四
	            <form:checkbox path="friends" value="王五"/>王五
	            <form:checkbox path="friends" value="赵六"/>赵六
	        </p>
	        
	        <p>
	            <label>职业:</label>
	            <form:select path="carrer"> 
	                <option/>请选择职业
	                <!-- model.addAttribute("carrers",carrers) -->
	                <form:options items="${carrers }"/>
	            </form:select>
	        </p>
	        
	        <p>
	            <label>户籍:</label>
	            <form:select path="houseRegister">
	                <option/>请选择户籍
	                <!-- model.addAttribute("address",address) -->
	                <form:options items="${address }"/>
	            </form:select>
	        </p>
	        
	        <p>
	            <label>个人描述:</label>
	            <form:textarea path="remark" rows="5"/>
	        </p>
	        
	        <p id="buttons">
	            <input id="reset" type="reset" value="重置">
	            <input id="submit" type="submit" value="添加">
	        </p>
	        
	    </fieldset>
	    <h2><span style="color:red;">${errorMessage}</span></h2>
	</form:form>
				
		
</body>
</html>