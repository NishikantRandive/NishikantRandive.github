<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="document.login.uname.focus();">
	
	<center>
<h2>Login Form</h2>

	<form name="login" action="loginServ"  method="post">
	<table>
		<tr>
			<td align="right">Username</td>
			<td>
				<input type="text" name="uname">
			</td>
		</tr>
		<tr>
			<td align="right">Password</td>
			<td>
				<input type="password" name="pass">
			</td>
		</tr>
		<tr>
			<td> </td>
			<td align="left"> <input type="submit" name="submit" value="Login">
		    <input type="reset" value="Reset" name="reset"></td>
		</tr>
	</table>
	</form>
</center>
</body>

</html>