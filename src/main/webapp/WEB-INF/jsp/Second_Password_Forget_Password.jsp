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

.dropdown-container>select {
	padding: 10px;
	margin-right: 20px;
	border-radius: 5px;
	border: none;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
	width: 200px;
	font-size: 16px;
}

.dropdown-container>input {
	padding: 10px;
	margin-right: 20px;
	border-radius: 5px;
	border: none;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
	width: 200px;
	font-size: 16px;
}

select {
	width: 250px;
	margin-bottom: 10px;
}

input[disabled] {
	background-color: #eee;
}

input[required] {
	border: 1px solid red;
}

.password-select {
	width: 100%;
	padding: 8px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 12px;
}

.password-select option {
	font-size: 16px;
}
</style>
</head>
<body bgcolor="#90EE90">
	<div class="container">
		<div>
			<center>
				<h2>Second Password</h2>
			</center>
			<br>
			<form action="/Third_Password_Forget_Password" method="post">
				<table>
					<tr>
						<td><select name="Question1"
							id="Question1"
							class="password-select">
								<option
						value="What is the name of a college you applied to but didnt attend?">
						What is the name of a college you applied to but didnt attend?</option>
					<option
						value="What was the name of the first school you remember attending?">
						What was the name of the first school you remember attending?</option>
					<option
						value="Where was the destination of your most memorable school field trip?">
						Where was the destination of your most memorable school field trip?</option>
					<option
						value="What was your maths teachers surname in your 8th year of school?">
						What was your maths teachers surname in your 8th year of school?</option>
					<option
						value="What was the name of your first stuffed toy?">
						What was the name of your first stuffed toy?</option>
					<option
						value="What was your driving instructors first name?">
						What was your driving instructors first name?</option>
						</select>
						</td>
						</tr>
						<tr>
						<td><input type="text" id="Answer1"
							name="Answer1" required="required" /></td>
					</tr>
							<tr>
						<td><select name="Question2"
							id="Question2"
							class="password-select">
								<option
						value="What is the name of a college you applied to but didnt attend?">
						What is the name of a college you applied to but didnt attend?</option>
					<option
						value="What was the name of the first school you remember attending?">
						What was the name of the first school you remember attending?</option>
					<option
						value="Where was the destination of your most memorable school field trip?">
						Where was the destination of your most memorable school field trip?</option>
					<option
						value="What was your maths teachers surname in your 8th year of school?">
						What was your maths teachers surname in your 8th year of school?</option>
					<option
						value="What was the name of your first stuffed toy?">
						What was the name of your first stuffed toy?</option>
					<option
						value="What was your driving instructors first name?">
						What was your driving instructors first name?</option>
						</select>
						</td>
						</tr>
						<tr>
						<td><input type="text" id="Answer2"
							name="Answer2" required="required" /></td>
					</tr>
							<tr>
						<td><select name="Question3"
							id="Question3"
							class="password-select">
								<option
						value="What is the name of a college you applied to but didnt attend?">
						What is the name of a college you applied to but didnt attend?</option>
					<option
						value="What was the name of the first school you remember attending?">
						What was the name of the first school you remember attending?</option>
					<option
						value="Where was the destination of your most memorable school field trip?">
						Where was the destination of your most memorable school field trip?</option>
					<option
						value="What was your maths teachers surname in your 8th year of school?">
						What was your maths teachers surname in your 8th year of school?</option>
					<option
						value="What was the name of your first stuffed toy?">
						What was the name of your first stuffed toy?</option>
					<option
						value="What was your driving instructors first name?">
						What was your driving instructors first name?</option>
						</select>
						</td>
						</tr>
						<tr>
						<td><input type="text" id="Answer3"
							name="Answer3" required="required" /></td>
					</tr>
				</table>
				<br>
				<div class="button-container">
					<input type="submit" value="Save"/>
				</div>
			</form>
		</div>
	</div>

</body>
</html>