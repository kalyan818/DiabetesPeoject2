<%@page import="com.example.demo4.Login"%>
<%@page import="com.example.demo4.FormModel"%>
<%@page import="java.util.Base64"%>
<%@page import="com.example.demo4.Images"%>
<%@page import="java.util.List"%>
<%@page isELIgnored="false" %> 
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
			box-shadow: 0 0 10px rgba(0,0,0,0.3);
		}
		label {
			display: block;
			margin-bottom: 5px;
			font-weight: bold;
		}
		input[type="text"],
		input[type="email"],
		input[type="number"],
		input[type="date"],
		input[type="password"] {
			padding: 10px;
			margin-bottom: 20px;
			border-radius: 5px;
			border: none;
			box-shadow: 0 0 5px rgba(0,0,0,0.2);
			width: 100%;
			font-size: 16px;
		}
		input[type="button"] {
			background-color: #334AFF;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			font-size: 16px;
			cursor: pointer;
		}
		input[type="button"]:hover {
			background-color: #3e8e41;
		}
		
		.button-container {
    position: absolute;
    top: 50px;
    right: 50px;
    margin: 0;
}
	</style>
</head>
<body bgcolor="#90EE90"> 
	<div class="container">
		<div>
			<center><h2>Welcome</h2></center><br>
			<div class="button-container">
				<a href="/Form"><input type="button" value="Add Data+"/></a>
			</div>
			<form action="/Second_Password" method="post">
				 <table class="my-table">
        <thead>
            <tr>
                <th>UserName</th>
                <th>Date</th>
                <th>Time</th>
                <th>BloodLevel</th>
                <th>Breakfast</th>
                <th>Lunch</th>
                <th>Dinner</th>
                <th>Time</th>
                <th>BloodLevel</th>
            </tr>
        </thead>
        <tbody>
        <% 
            List<FormModel> Details = (List<FormModel>) request.getAttribute("Details");
        	Login login = (Login) request.getAttribute("Login");
            for (FormModel data : Details) {
            %>
            <tr>
                <td><%= login.getUsername()%></td>
                <td><%= data.getDate() %></td>
                <td><%= data.getTime1()%></td>
                <td><%= data.getSugar_Level1()%></td>
                <td><%= data.getBreakFast()%></td>
                <td><%= data.getLunch() %></td>
                <td><%= data.getDinner()%></td>
                <td><%= data.getTime2()%></td>
                <td><%= data.getSugar_Level2()%></td>
            </tr>
            <% } %>
            </tbody>
    </table><br>
			</form>
		</div>
	</div>
</body> 
</html>