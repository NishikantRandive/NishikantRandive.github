<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<script type="text/javascript" src="script.js"></script>
</head>

<body onload="document.registration.uname.focus();">
	
	<center>
<h2>Registration Form</h2>

	<form name="registration" method="post" action="registerServ" onsubmit="return formValidation()">
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
			<td align="right">Confirm Password</td>
			<td>
				<input type="password" name="cmpass">
			</td>
		</tr>
		<tr>
			<td align="right">FirstName</td>
			<td>
				<input type="text" name="fname">
			</td>
		</tr>
		<tr>
			<td align="right">Lastname</td>
			<td>
				<input type="text" name="lname">
			</td>
		</tr>
		<tr>
			<td align="right">Email</td>
			<td>
				<input type="text" name="email">
			</td>
		</tr>
		<tr>
			<td align="right">Phone No</td>
			<td>
				<input type="text" name="phone">
			</td>
		</tr>
		<tr>
			<td align="right">Location</td>
			<td>
				<input type="text" name="loc">
			</td>
		</tr>
		<tr> 
			<td> </td>
			<td align="left"> <input type="submit" name="submit" value="Save">
		    <input type="reset" value="Reset" name="reset"></td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>