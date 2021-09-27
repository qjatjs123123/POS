<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

body{
background-color: whitesmoke;
}

#passwd_find{
width: 500px;
height: 220px;
border:1px solid;
text-align:center;
margin:0 auto;
left:50%;
margin-left:-255px;
position:absolute;
margin-top:160px;

}
#id_article{
margin:0 auto;
left:50%;
margin-left:-255px;
position:absolute;
background-color: #D4C2AA;
width: 125px;
height: 50px;
cursor:pointer;


}

#pwd_article{
margin:0 auto;
left:50%;
margin-left:-135px;
position:absolute;
background-color: #D4C2AA;
width: 125px;
height: 50px;
cursor:pointer;
color:red;

}


header{
background-color: #D4C2AA;
height: 65px; 
width: 100%;
}

#infor_text{
width: 500px;
height: 100px;
margin:0 auto;
left:50%;
margin-left:-255px;
position:absolute;
margin-top:65px;

}


</style>

<script>
var num1=false;
var num2 = false;
var request = null;

	function over(num){
		id_article = document.getElementById("id_article");
		pwd_article = document.getElementById("pwd_article");
		
		if(num == 1){
			id_article.style.color="red";
			pwd_article.style.color="black";
		}
		else if(num == 2){
			id_article.style.color="black";
			pwd_article.style.color="red";
		}
		
		
	}
	
	function out(){
		pwd_article = document.getElementById("pwd_article");
		id_article = document.getElementById("id_article");
		pwd_article.style.color="red";
		id_article.style.color="black";
	}


	function fc2(){
	    var pw = document.getElementById("text2").value;
	    var num = pw.search(/[0-9]/g);
	    var eng = pw.search(/[a-z]/ig);
	    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	    var p = document.getElementById("id_chk");
	
	
	    if (num < 0 || eng < 0 || spe < 0 || pw.length < 8 || pw.length > 16) {
	    	p.style.color = "red";
	        document.getElementById("id_chk").innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
	        num1 = false;
	    }
	    else {
	         p.style.color = "limegreen";
	        document.getElementById("id_chk").innerHTML = "사용 가능";
	         num1 = true;
	    }
	}






	function fc3() {
	    var pw = document.getElementById("text2").value;
	    var pwc = document.getElementById("text3").value;
	    var p = document.getElementById("id_chk");
	    if (pw == pwc) {
	        p.style.color = "limegreen";
	        document.getElementById("id_chk").innerHTML = "비밀번호 일치";
	        num2 = true;
	    }
	    else {
	        p.style.color = "red";
	        document.getElementById("id_chk").innerHTML = "비밀번호가 일치하지 않습니다.";
	        num2 = false;
	    }
	
	}

	function fc5(id) {
	
	    if (!num1) {
	        alert("비밀번호를 입력해주세요");
	    }
	    else if (!num2) {
	        alert("비밀번호 재확인을 확인해주세요");
	    } 
	    else {
	    	var state1 = id;
	    	var state = document.getElementById('text2').value;
	    	xmlhttp= new XMLHttpRequest();
	    	var url = "비밀번호DB변경.jsp?state="+state+"&state1="+state1;
	    	xmlhttp.open("GET",url,true);
	    	xmlhttp.onreadystatechange = updatePage;
	    	xmlhttp.send(null);
	    	location.href="비밀번호변경완료.html";

	    }
	  
	    
	}
	function updatePage(){
		var pw = document.getElementById("text2").value;
		
		if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
			pw.innerHTML = xmlhttp.responseText;

			
		}
	}




function updatePage(){
	
}

function start(num){
	
	if(num == 0){
		alert("입력하신 아이디를 찾을 수 없습니다.");
		location.href="비밀번호찾기(입력).html";
	}
	else{
		
		
	}
}
    
    


</script>
<%@ page import="java.sql.*" %>
<%int chk=0; %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String driverName= "org.gjt.mm.mysql.Driver";
String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
Class.forName(driverName);
Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
Statement stmt = con.createStatement();

String id = request.getParameter("id");


String query = "SELECT * FROM member;";

ResultSet rs = stmt.executeQuery(query);
boolean a = true; 
while(rs.next()){
	if(id.equals(rs.getString("id"))){
		a = false;
	}
}
if(a){
	chk=0;
}
else{
	chk=1;
}



%>
<body onload="start(<%= chk%>)">
<header>
<article id=id_article onmouseover="over(1)" onmouseout="out()">
<br>
아이디 찾기
</article >
<article id=pwd_article onmouseover="over(2)">
<br>
비밀번호 찾기
</article>

</header>
<section id="infor_text">
<br>
<span style="font-weight:bolder;">
비밀번호 변경
<hr>
</span>

<span style="font-size:13px;">새로운 비밀번호를 입력하세요</span>

</section>





<section id="passwd_find">

<br>
<form method="post" action="비밀번호변경.jsp">
아이디 : <span style="color:red;"><%= id %></span><p>
<input type="password" id = "text2" name="pwd" placeholder="새 비밀번호" style="width:300px;height:30px; border-radius:5px; " onchange="fc2()"><p>
<input type="password" id="text3" name="pwd1" placeholder="새 비밀번호 확인" style="width:300px;height:30px; border-radius:5px;" onchange="fc3()"><p>
<label id="id_chk"></label><br>
<input type ="button" value="확인" style="width:50px;height:30px;" onclick="fc5('<%= id %>')">

</form>
</section>

</body>
</html>