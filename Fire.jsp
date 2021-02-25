<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>消防安全</title>
</head>
<body>
	<form action="success.jsp">
		<table>
			<tr>
				<th>安全隐患类型</th>
				<td><input type="text" name="type" value="消防安全" readonly="readonly"/></td>
			</tr>
			<tr>
				<th>上报人</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>职务</th>
				<td><select name="job">
						<option selected="selected">--请选择职务--</option>
						<option value="student">学生</option>
						<option value="worker">职工</option>
				</select></td>
			</tr>
			<tr>
				<th>手机号码</th>
				<!-- 限制只能输入11位数字 -->
				<td><input type="text"
					oninput="value=value.replace(/[^\d]/g,'')" maxlength="11" name="number"></td>
			</tr>
			<tr>
				<th>安全隐患地点</th>
				<td><input type="text" name="place"></td>
			</tr>
			<tr>
				<th>具体安全隐患情况</th>
				<td><textarea>请输入……</textarea></td>
			</tr>
			<tr>
				<th></th>
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>