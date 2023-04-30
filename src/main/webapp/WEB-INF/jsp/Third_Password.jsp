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

.image-grid {
	display: grid;
	grid-template-columns: repeat(9, 1fr);
	grid-template-rows: repeat(9, 1fr);
	gap: 10px;
}

.image {
	position: relative;
}

input[type="checkbox"] {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: 0;
	cursor: pointer;
}


input[type="checkbox"]:checked+label {
	border: 2px solid blue;
}

label {
	display: block;
	width: 100%;
	height: 100%;
	border: 2px solid transparent;
	transition: border-color 0.3s ease;
}
.image-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
}

.image {
  margin: 1px;
  position: relative;
}

img {
  display: block;
  width: 30px;
  height: 30px;
  object-fit: cover;
}

input[type="checkbox"] {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
  cursor: pointer;
}

label {
  display: block;
  position: relative;
  cursor: pointer;
}

</style>
</head>
<body bgcolor="#90EE90">
	<div class="container">
		<div>
			<center>
				<h2>Third Password</h2>
			</center>
			<br>
			 <% List<Images> images = (List<Images>) request.getAttribute("Images"); %>
			
			
			
			
			<form action="/Main_Page" method="post" id="myForm">
				<div class="image-container">
					  <div class="image">
<input type="checkbox" name="image1" id="image1" value="<%= images.get(0).getImageName() %>">
<label for="image1"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(0).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image2" value="<%= images.get(1).getImageName() %>">
<label for="image2"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(1).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image3" value="<%= images.get(2).getImageName() %>">
<label for="image3"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(2).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image4" value="<%= images.get(3).getImageName() %>">
<label for="image4"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(3).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image5" value="<%= images.get(4).getImageName() %>">
<label for="image5"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(4).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image6" value="<%= images.get(5).getImageName() %>">
<label for="image6"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(5).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image7" value="<%= images.get(6).getImageName() %>">
<label for="image7"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(6).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image8" value="<%= images.get(7).getImageName() %>">
<label for="image8"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(7).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image9" value="<%= images.get(8).getImageName() %>">
<label for="image9"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(8).getImage())) %>" ></label>
</div>
					</div>
					
					
					
					
					<div class="image-container">
					  <div class="image">
<input type="checkbox" name="image1" id="image10" value="<%= images.get(9).getImageName() %>">
<label for="image10"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(9).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image11" value="<%= images.get(10).getImageName() %>">
<label for="image11"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(10).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image12" value="<%= images.get(11).getImageName() %>">
<label for="image12"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(11).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image13" value="<%= images.get(12).getImageName() %>">
<label for="image13"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(12).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image14" value="<%= images.get(13).getImageName() %>">
<label for="image14"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(13).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image15" value="<%= images.get(14).getImageName() %>">
<label for="image15"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(14).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image16" value="<%= images.get(15).getImageName() %>">
<label for="image16"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(15).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image17" value="<%= images.get(16).getImageName() %>">
<label for="image17"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(16).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image18" value="<%= images.get(17).getImageName() %>">
<label for="image18"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(17).getImage())) %>" ></label>
</div>
					</div>
					
					
						
					<div class="image-container">
					 <div class="image">
<input type="checkbox" name="image1" id="image19" value="<%= images.get(18).getImageName() %>">
<label for="image19"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(18).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image20" value="<%= images.get(19).getImageName() %>">
<label for="image20"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(19).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image21" value="<%= images.get(20).getImageName() %>">
<label for="image21"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(20).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image22" value="<%= images.get(21).getImageName() %>">
<label for="image22"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(21).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image23" value="<%= images.get(22).getImageName() %>">
<label for="image23"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(22).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image24" value="<%= images.get(23).getImageName() %>">
<label for="image24"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(23).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image25" value="<%= images.get(24).getImageName() %>">
<label for="image25"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(24).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image26" value="<%= images.get(25).getImageName() %>">
<label for="image26"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(25).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image27" value="<%= images.get(26).getImageName() %>">
<label for="image27"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(26).getImage())) %>" ></label>
</div>
					</div>
					
					
					
					<div class="image-container">
					 <div class="image">
<input type="checkbox" name="image1" id="image28" value="<%= images.get(27).getImageName() %>">
<label for="image28"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(27).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image29" value="<%= images.get(28).getImageName() %>">
<label for="image29"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(28).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image30" value="<%= images.get(29).getImageName() %>">
<label for="image30"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(29).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image31" value="<%= images.get(30).getImageName() %>">
<label for="image31"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(30).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image32" value="<%= images.get(31).getImageName() %>">
<label for="image32"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(31).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image33" value="<%= images.get(32).getImageName() %>">
<label for="image33"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(32).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image34" value="<%= images.get(33).getImageName() %>">
<label for="image34"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(33).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image35" value="<%= images.get(34).getImageName() %>">
<label for="image35"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(34).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image36" value="<%= images.get(35).getImageName() %>">
<label for="image36"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(35).getImage())) %>" ></label>
</div>
					</div>
					
					
					
					<div class="image-container">
					 <div class="image">
<input type="checkbox" name="image1" id="image37" value="<%= images.get(36).getImageName() %>">
<label for="image37"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(36).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image38" value="<%= images.get(37).getImageName() %>">
<label for="image38"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(37).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image39" value="<%= images.get(38).getImageName() %>">
<label for="image39"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(38).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image40" value="<%= images.get(39).getImageName() %>">
<label for="image40"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(39).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image41" value="<%= images.get(40).getImageName() %>">
<label for="image41"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(40).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image42" value="<%= images.get(41).getImageName() %>">
<label for="image42"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(41).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image43" value="<%= images.get(42).getImageName() %>">
<label for="image43"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(42).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image44" value="<%= images.get(43).getImageName() %>">
<label for="image44"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(43).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image45" value="<%= images.get(44).getImageName() %>">
<label for="image45"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(44).getImage())) %>" ></label>
</div>
					</div>
					
					
					
					<div class="image-container">
					 <div class="image">
<input type="checkbox" name="image1" id="image46" value="<%= images.get(45).getImageName() %>">
<label for="image46"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(45).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image47" value="<%= images.get(46).getImageName() %>">
<label for="image47"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(46).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image48" value="<%= images.get(47).getImageName() %>">
<label for="image48"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(47).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image49" value="<%= images.get(48).getImageName() %>">
<label for="image49"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(48).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image50" value="<%= images.get(49).getImageName() %>">
<label for="image50"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(49).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image51" value="<%= images.get(50).getImageName() %>">
<label for="image51"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(50).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image52" value="<%= images.get(51).getImageName() %>">
<label for="image52"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(51).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image53" value="<%= images.get(52).getImageName() %>">
<label for="image53"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(52).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image54" value="<%= images.get(53).getImageName() %>">
<label for="image54"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(53).getImage())) %>" ></label>
</div>
					</div>
					
					
					
					<div class="image-container">
					 <div class="image">
<input type="checkbox" name="image1" id="image55" value="<%= images.get(54).getImageName() %>">
<label for="image55"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(54).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image56" value="<%= images.get(55).getImageName() %>">
<label for="image56"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(55).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image57" value="<%= images.get(56).getImageName() %>">
<label for="image57"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(56).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image58" value="<%= images.get(57).getImageName() %>">
<label for="image58"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(57).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image59" value="<%= images.get(58).getImageName() %>">
<label for="image59"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(58).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image60" value="<%= images.get(59).getImageName() %>">
<label for="image60"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(59).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image61" value="<%= images.get(60).getImageName() %>">
<label for="image61"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(60).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image62" value="<%= images.get(61).getImageName() %>">
<label for="image62"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(61).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image63" value="<%= images.get(62).getImageName() %>">
<label for="image63"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(62).getImage())) %>" ></label>
</div>
					</div>
					
					
					
					<div class="image-container">
					 <div class="image">
<input type="checkbox" name="image1" id="image64" value="<%= images.get(63).getImageName() %>">
<label for="image64"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(63).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image65" value="<%= images.get(64).getImageName() %>">
<label for="image65"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(64).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image66" value="<%= images.get(65).getImageName() %>">
<label for="image66"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(65).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image67" value="<%= images.get(66).getImageName() %>">
<label for="image67"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(66).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image68" value="<%= images.get(67).getImageName() %>">
<label for="image68"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(67).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image69" value="<%= images.get(68).getImageName() %>">
<label for="image69"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(68).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image70" value="<%= images.get(69).getImageName() %>">
<label for="image70"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(69).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image71" value="<%= images.get(70).getImageName() %>">
<label for="image71"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(70).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image72" value="<%= images.get(71).getImageName() %>">
<label for="image72"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(71).getImage())) %>" ></label>
</div>
					 
					</div>
					
					
					<div class="image-container">
					 <div class="image">
<input type="checkbox" name="image1" id="image73" value="<%= images.get(72).getImageName() %>">
<label for="image73"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(72).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image74" value="<%= images.get(73).getImageName() %>">
<label for="image74"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(73).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image75" value="<%= images.get(74).getImageName() %>">
<label for="image75"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(74).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image76" value="<%= images.get(75).getImageName() %>">
<label for="image76"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(75).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image77" value="<%= images.get(76).getImageName() %>">
<label for="image77"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(76).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image78" value="<%= images.get(77).getImageName() %>">
<label for="image78"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(77).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image79" value="<%= images.get(78).getImageName() %>">
<label for="image79"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(78).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image80" value="<%= images.get(79).getImageName() %>">
<label for="image80"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(79).getImage())) %>" ></label>
</div>
<div class="image">
<input type="checkbox" name="image1" id="image81" value="<%= images.get(80).getImageName() %>">
<label for="image81"><img src="data:image/png;base64, <%= new String(Base64.getEncoder().encode(images.get(80).getImage())) %>" ></label>
</div>
					</div>
					
				<br>
				<div class="button-container">
					<input type="submit" value="Save" />
				</div>
			</form>
		</div>
	</div>
	
	<script>
	
	const form = document.getElementById('myForm');

	form.addEventListener('submit', (event) => {
	  const checkboxes = document.querySelectorAll('input[type="checkbox"]');
	  let checkedCount = 0;
	  for (let i = 0; i < checkboxes.length; i++) {
	    if (checkboxes[i].checked) {
	      checkedCount++;
	    }
	  }
	  if (!(checkedCount == 3)) {
	    event.preventDefault();
	    alert('Please select no more than 3 checkboxes');
	  }
	});

	
	</script>

</body>
</html>