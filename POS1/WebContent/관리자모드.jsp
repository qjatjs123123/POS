<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자모드</title>

</head>
<script
          src="https://code.jquery.com/jquery-3.3.1.js"
          integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
          crossorigin="anonymous">
    </script>
<style>
body{
	background-color : ivory;
}
h2{
	font-size : 40px;
	margin-left : 15px;
}
.menu {
	padding: 20px;
	display: flex;
	justify-content: center;
	flex-flow: column wrap;
	margin: 10 px;
	background-color: #C79467;
}

.pic {
	margin: 0 auto;
	padding: 0;
	width: 150px;
	height: 150px;
}
.name, .price {
	width: 120px;
	border: 1px solid;
	font-size: 20px;
	color: black;
	font-weight: bold;

}
.group {
	margin: 0 auto;
	padding: 0;
	width: 250px;
	height: auto;
	text-align: center;
	background-color: rgb(114, 36, 23);
	box-shadow: 0px 0px 5px 5px rgba(0, 0, 0, 0.4);
}

.group1 {
	width: 250px;
	height: auto;
	text-align: center;
	background-color: rgb(114, 36, 23);
	box-shadow: 0px 0px 5px 5px rgba(0, 0, 0, 0.4);
}
#menu_id{
	width:100%;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	flex-flow: row wrap;
	background-color: #C79467;
	
}
iframe{
	width:1050px;
	height : 600px;
	margin : 10px;
}
.first{
}

.upload_form{
	width : 500px;
	padding : 15px;
	margin : 10px;
	border : 1px solid black;
}

.full{
}
#add_btn{
	
}
#idid{
	font-size : 20px;
}
#tab_count{
	font-size : 20px;
}
#nono{
	font-size : 25px;
	margin : 10px;
}
.upload_form{
	width : 500px;
	padding : 15px;
	margin : 10px;
	border : 1px solid black;
}
#back{
cursor : pointer;
background-color:gray;
position:absolute;
margin-left:400px;
width:200px;
font-size : 30px;
margin-top:-60px;
height:50px;
color:white;
text-align: center;
}

#clear{
cursor : pointer;
background-color:gray;
position:absolute;
margin-left:650px;
width:200px;
font-size : 25px;
margin-top:-60px;
height:50px;
color:white;
text-align: center;
}
</style>
<%@ page import="java.sql.*" %>
<%
	String driverName= "org.gjt.mm.mysql.Driver";
	String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
	Class.forName(driverName);
	Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
	Statement stmt = con.createStatement();

   
   String id =  request.getParameter("id").trim();
   String query = "SELECT * FROM "+ id + "_menu";
   ResultSet rs = stmt.executeQuery(query);
   
%>
<script>
	var xmlhttp = false;
	var form = new FormData();
	var settings;
	var id;
	var upload = false;
	var upload_wait = false;

    
	
	
	window.onload = function(){
		id=getParameterByName('id');
		document.getElementById('idid').innerHTML ="아이디 = "+id;
		tab_count = localStorage.getItem(id+"_count");
		document.getElementById('tab_count').innerHTML ="현재 테이블 수 : "+tab_count;

	}
	function getParameterByName(name) {
		name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		results = regex.exec(location.search);
		return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}

	
	function create_tableDB(){
		var state = document.getElementById('txt').value;	
		var state1 = localStorage.getItem(id+"_count");
		if (state != 0){
		xmlhttp= new XMLHttpRequest();
	      var url = "테이블DB생성.jsp?state="+state+"&id="+id+"&state1="+state1 ;
	      xmlhttp.open("GET",url,true);
	      
	      xmlhttp.send(null);
	      localStorage.setItem(id+"_count", state);
	      alert("테이블 개수가 변경되었습니다.");
	      location.reload();
		}
		else{
			alert("0이상의 숫자를 입력하세요");
		}
	}
	function getNum(){
		if(upload_wait){
		      var state = document.getElementById('n1').value;
		      var state1 = document.getElementById('n2').value;
		      var state2 = URL1; 
		      xmlhttp= new XMLHttpRequest();
		      var url = "메뉴DB저장.jsp?state="+state+"&state1="+state1 +"&state2="+state2+"&id="+id;
		      xmlhttp.open("GET",url,true);
		      //xmlhttp.onreadystatechange = updatePage;
		      xmlhttp.send(null);
		      alert("추가되었습니다.");
		      setTimeout(function(){location.reload()}, 1000);
			}
			else{
				alert("아직 이미지 업로드가 완료되지 않았습니다. 잠시만 기다려주세요.");
			}
		
	}
	function change_menu(beforemenu){
		var state = document.getElementById(beforemenu).value;
		aftermenu = state;
		var state1= beforemenu;
		xmlhttp= new XMLHttpRequest();
	      var url = "메뉴DB변경.jsp?state="+state+"&state1="+state1+"&id="+id ;
	      xmlhttp.open("GET",url,true);
	      
	      alert("메뉴 이름이 변경되었습니다.");
	      xmlhttp.send(null);
	      setTimeout(function(){location.reload()}, 1000);
		
	}
	
	function change_price(beforemenu){
		var state = document.getElementById(beforemenu+"1").value;
		
		
		var state1= beforemenu;
		xmlhttp= new XMLHttpRequest();
	      var url = "메뉴가격DB변경.jsp?state="+state+"&state1="+state1+"&id="+id ;
	      xmlhttp.open("GET",url,true);
	      alert("메뉴 가격이 변경되었습니다.");
	      xmlhttp.send(null);
	      setTimeout(function(){location.reload()}, 1000);
		
	}
	function delete_menu(beforemenu){	
		var state= beforemenu;
		xmlhttp= new XMLHttpRequest();
	      var url = "메뉴삭제DB변경.jsp?state="+state+"&id="+id;
	      xmlhttp.open("GET",url,true);
	      
	      xmlhttp.send(null);
	      alert("삭제되었습니다.");
	      setTimeout(function(){location.reload()}, 1000);
	}
	function ch(){
		var tt = document.getElementById('imageUpload').files[0];
		form.append("image", tt);
		settings={
			"url": "https://api.imgur.com/3/image",
			"method": "POST",
			"timeout": 0,
			"headers": {
			"Authorization": "Client-ID 3c8f5222252febf"
			},
		    "processData": false,
			"mimeType": "multipart/form-data",
			"contentType": false,
			"data": form

		};
		$.ajax(settings).done(function(response){
			var a= JSON.parse(response);
			console.log(a);
			URL1=a.data.link;
			upload_wait = true;
		});
	}
function show2(){
	 
	 window.open("메뉴.html?id="+id, "a", "width=1100, height=600, left=100, top=50"); 
}
function show1() { 
	window.open("기록1.jsp?id="+id, "a", "width=600, height=900, left=100, top=50"); 
}
function show3() { 
	window.open("기록2.jsp?id="+id, "a", "width=600, height=900, left=100, top=50"); 
}
function gobackp(){
	window.history.back();
}
function clear1(){
	xmlhttp= new XMLHttpRequest();
    var url = "일일매출초기화.jsp?id="+id;
    xmlhttp.open("GET",url,true);
    
    alert("초기화되었습니다..");
    xmlhttp.send(null);
	
	localStorage.setItem(id+"_today_total",0);
	
}

</script>
<body>
<h1>관리자 모드<span id="idid"></h1>
<div id="back" onclick="gobackp()" >

나가기
</div>

<div id="clear" onclick="clear1()" >
일일매출 초기화
</div>

<h3>1. 테이블 수 변경</h3>
<label>좌석 수를 입력하세요 : </label> <input type="text" id="txt" style="height:20px;" /> <input type="button" id="txtbtn" value="입력" style="height:26px;" onclick="create_tableDB()"/> <span id="tab_count"></span><br />
<h3>2. 메뉴 등록</h3>
 <form class = "upload_form">
	      	 메뉴 이미지 업로드 : 　　　<input type="file" id="imageUpload" name="imageUplode" onchange="ch()" >
			<p>
	      	메뉴 입력 : <input id="n1" type="text" name="num1" autocomplete="off"><p>
	       	가격 입력 : <input id="n2" type="text" name="num2" autocomplete="off"><p>
	      　<input type="button" id = "add_btn" value="추가하기" onclick ="getNum()">
</form>
<h3>3. 매출요약</h3>
날짜 매출 전표 <input type="button" value="이동" onclick="show1()"> 
날짜/시간별 매출현황 <input type="button" value="이동" onclick="show2()"> 
일일 매출 전표 <input type="button" value="이동" onclick="show3()"> 
<h3>4. 메뉴 이름 및 가격 변경</h3>
<section id="menu_id">
        <% int i = 0;
        while(rs.next()){%>
            <article class="menu">
                <div class="group">
                    <img src="<%=rs.getString("path")%>" class="pic">
                    <input type="text" id="<%= rs.getString("menu")%>" class = "name" placeholder="메뉴이름변경" value = "<%= rs.getString("menu")%>"><input type="button" value="변경" onclick="change_menu('<%= rs.getString("menu")%>')">
                    <input type="text" id="<%= rs.getString("menu")%>1" class = "price" placeholder="가격변경"  value = "<%= rs.getString("price")%>"><input type="button" value="변경" onclick="change_price('<%= rs.getString("menu")%>')"><br><br>
                    <input type="button" class= "btn" value="삭제하기" id = "<%= rs.getString("menu")%>,<%= rs.getString("price")%>" onclick="delete_menu('<%= rs.getString("menu")%>')">
                   </div>
            </article>
        <%i++;
        }
        %>
        
    	</section>
    	<%if(i==0){%>
        	<span id="nono">메뉴가 없습니다!!!</span>	
        <%} %>
 </section>

</body>
</html>