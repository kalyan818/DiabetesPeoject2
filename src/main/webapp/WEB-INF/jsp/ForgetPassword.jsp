<%@page import="java.util.Base64"%>
<%@page import="com.example.demo4.Images"%>
<%@page import="java.util.List"%>
<%@page isELIgnored="false"%>
<html>
<head>
<style>
.container {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.button-container {
	text-align: center;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], input[type="email"], input[type="number"], input[type="date"],
	input[type="password"] {
	padding: 10px;
	margin-bottom: 20px;
	border-radius: 5px;
	border: none;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
	width: 100%;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}
</style>
</head>
<body bgcolor="#90EE90">
	<div class="container">
		<div>
			<center>
				<label><h2 style="color: red;">${message}</h2></label>
			</center>
			<center>
				<h2>Forget Password</h2>
			</center>
			<br>
			<form action="/ForgetPassword" method="post">
				<table>

					<tr>
						<td><label>Email</label></td>
						<td><input type="email" id="Email" name="Email"
							required /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Get OTP"
							style="float: right;" /></td>
					</tr>
				</table>
				<br>

			</form>
		</div>
	</div>
	<script>
		var passwordInput = document.getElementById("Password");
		passwordInput
				.setCustomValidity("Password should contain at least 8 characters, one uppercase letter, one lowercase letter, one symbol, and one number");
		passwordInput
				.addEventListener(
						"input",
						function(event) {
							var password = passwordInput.value;
							var regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
							if (regex.test(password)) {
								passwordInput.setCustomValidity("");
							}
						});
	</script>
</body>

</html>