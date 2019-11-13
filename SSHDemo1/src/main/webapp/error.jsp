<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<div>
    <h1>Happened some error!</h1>
    <span>查询失败！</span>
    <div>
        名字：<input value="resultJson.user.username"/> <br/>
        密码：<input value="resultJson.user.password"/> <br/>
        性别：<input value="resultJson.user.user_sex"/> <br/>
        编号：<input value="resultJson.user.user_no"/> <br/>
        生日：<input value="resultJson.user.user_birthday"/> <br/>
        班级：<input value="resultJson.user.user_class"/> <br/>
        <hr>
        <span>${resultJson}</span>
        <hr>
    </div>
</div>
</body>
</html>
