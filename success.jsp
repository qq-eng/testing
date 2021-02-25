<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交成功！</title>
</head>
<body>
	<%
		//设置编码
		request.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		String job = request.getParameter("job");
		String number = request.getParameter("number");
		String place = request.getParameter("place");
	%>

	提交成功，信息如下：
	</br>

	<%
		try {
			Class.forName("com.mysql.jdbc.Driver"); ////驱动程序名
			String url = "jdbc:mysql://localhost:3306/security?useUnicode=true&characterEncoding=utf8";
			String username = "root"; //数据库用户名
			String password = "root"; //数据库用户密码
			Connection conn = DriverManager.getConnection(url, username, password); //连接状态
			if (conn != null) {
				out.println("数据库连接成功！！");
			} else {
				out.println("数据库连接失败！！");
			}
			Statement stmt = conn.createStatement();//创建声明
			stmt.executeUpdate("insert into security (type,name,job,number,place) values ('" + type + "','" + name
					+ "','" + job + "','" + number + "','" + place + "')");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	%>
</body>
</html>