<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <h1>Servlet路径跳转</h1>
	<!--     使用相对路径访问HelloServlet -->
	<!-- 	/servlet/HelloServlet第一个/表示服务器的根目录 -->
	<a href="servlet/HelloServlet">访问HelloServlet</a><br/><br/>
	<!--     使用路绝对径访问HelloServlet 可以使用Path变量:path变量表示项目的根目录-->
	<a href="<%=path%>/servlet/HelloServlet">访问HelloServlet</a><br/><br/>
	<!-- 	表单中action的URL的地址写法，与超链接方式完全相同 -->
	<a href="servlet/TestServlet">访问TestServlet,跳转到Test.jsp</a><br/><br/>
  </body>
</html>
