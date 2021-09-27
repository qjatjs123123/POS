<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>로그인</title>
    <style>
    body{
     background-color: #C79467;
     margin: 0;
     padding: 0;
            
     }
         header {
            padding: 0;
            width: 100%;
            height: 120px;
            float: left;
            color: white;
            background-color:  rgb(110,73,58);
        }

         #table_section{

            background-color:antiquewhite;
             margin-left:20px;
             position:absolute;
             margin-top:130px;
             width:780px;
             height:490px;
             border-radius: 10px;
             overflow:scroll;
             border-radius: 10px;
         }
         #table_button{
           
            background-color:antiquewhite;
             position:absolute;
             margin-top:625px;
             height:100px;
             width:780px;
             margin-left:20px;
             border-radius: 10px;
         }
        #table_blank{

             background-color:antiquewhite;
             position:absolute;
             margin-top:730px;
             height:220px;
             width:780px;
             margin-left:20px;
             border-radius: 10px;
        }
        #menu_img{
            background-color:antiquewhite;
            height:180px;
            width:180px;
            margin-top:20px;
            margin-left:150px;
            position:absolute;
        }
        #menu_name{
            background-color:antiquewhite;
            height:60px;
            width:300px;
            margin-left:450px;
            margin-top:20px;
            position:absolute;
            text-align:center;
            font-size:40px;
        }
        #menu_count{
            background-color:antiquewhite;
            height:100px;
            width:200px;
            margin-left:450px;
            margin-top:100px;
            position:absolute;
            text-align:center;
            font-size:80px;
        }
        #menu{
            background-color:#C79467;
            height:820px;
            width:1104px;
            margin-left:800px;
            position:absolute;
            margin-top:120px;
            

        }
        #menu_room{
            
            width:950px;
            margin-left:100px;
            height:700px;
            position:absolute;
            margin-top:10px;
            display: flex;
            justify-content: space-around;
			flex-flow: row wrap;
			align-items:flex-start;
			background-color: antiquewhite;
			overflow:scroll;
			overflow-x:hidden;
        }
        #button_room{
            background-color:antiquewhite;
            width:950px;
            margin-left:100px;
            height:110px;
            position:absolute;
            margin-top:710px;
            float:right;
        }
        #btn_count{
            background-color:gray;
            width:120px;
            height:80px;
            position:absolute;
            margin-left:30px;
            margin-top:10px;
            color:white;
            font-size:x-large;
            
        }
        #btn_plus{
            background-color:gray;
            width:60px;
            height:80px;
            position:absolute;
            margin-left:160px;
            margin-top:10px;
            color:white;
            font-size:x-large;
        }
        #btn_minus{
            background-color:gray;
            width:60px;
            height:80px;
            position:absolute;
            margin-left:230px;
            margin-top:10px;
            color:white;
            font-size:x-large;
        }
        #btn_all_delete{
            background-color:gray;
            width:140px;
            height:80px;
            position:absolute;
            margin-left:300px;
            margin-top:10px;
            color:white;
            font-size:x-large;
        }
        #div_income{
        	background-color:antiquewhite;
            width:120px;
            height:80px;
            position:absolute;
            margin-left:470px;
            margin-top:10px;
            color:black;
            font-size:30px;
            text-align: center;
            vertical-align:middle;
        }
        #div_income1{
        	background-color:antiquewhite;
            width:180px;
            height:80px;
            position:absolute;
            margin-left:590px;
            margin-top:10px;
            color:black;
            font-size:30px;
            text-align: center;

        }
        .menu {
	
	display: flex;
	justify-content: center;
	flex-flow: column wrap;
	margin: 10px;
	background-color: antiquewhite;
	
}
        
        .group {
	margin: 0 auto;
	padding: 0;
	width: 150px;
	height: auto;
	text-align: center;
	background-color: rgb(114, 36, 23);
	box-shadow: 0px 0px 5px 5px rgba(0, 0, 0, 0.4);
}
.name, .price {
	width: 100px;
	background-color: rgb(114, 36, 23);
	text-align: center;
	border: none;
	font-size: 20px;
	color: white;
	font-weight: bold;
	pointer-events: none;
	margin-top : 5px;
}
.btn {
	width: 110px;
	height: 30px;
	background-color: gray;
	text-align: center;
	border: none;
	font-size: 20px;
	color: white;
	font-weight: bold;
	margin-bottom : 5px;
	margin-top : 10px;
}
.t_table {
    width: 100%;
    border: 1px solid #444444;
  }
  .t_th, .t_td, .t_td1, .t_td2, .t_td3 {
    border: 1px solid #444444;
  }
  .btn_delete{
  background-color:red;
  color:white;
  }
  #btn_close{
  width:200px;
  background-color:gray;
  position:absolute;
  color:white;
  margin-left:700px;
  height:100px;
   margin-top:5px;
   font-size:x-large;
  }
  #btn_cal{
  width:200px;
  background-color:gray;
  color:white;
  height:100px;
  margin-left:490px;
  margin-top:5px;
  position:absolute;
  font-size:x-large;
  }
        #leftside{
            width:400px;
            height:480px;
            margin-top:10px;
            margin-left:30px;
            position:absolute;
           
        }
        #rightside{
            width:490px;
            height:460px;
            margin-top:10px;
            margin-left:440px;
            position:absolute;
            
        }
        #get_money{
            width:100px;
            height:60px;
             background-color:white;
            margin-top:10px;
            position:absolute;
            font-size:x-large;
            text-align:center;
        }
        #give_money{
            width:100px;
            height:60px;
             background-color:white;
            margin-top:210px;
            position:absolute;
            font-size:x-large;
            text-align:center;
        }
        #total{
            width:100px;
            height:60px;
             background-color:white;
            margin-top:110px;
            position:absolute;
            font-size:x-large;
            text-align:center;
        }
        #get_num{
            width:200px;
            height:60px;
             background-color:white;
            margin-top:10px;
            margin-left:120px;
            position:absolute;
            font-size:x-large;
            text-align:center;
            background-color:white;
        }
        #num_total{
            width:200px;
            height:60px;
             background-color:white;
            margin-top:110px;
            margin-left:120px;
            position:absolute;
            font-size:x-large;
            text-align:center;
        }
        #give_num{
            width:200px;
            height:60px;
             background-color:white;
            margin-top:210px;
            margin-left:120px;
            position:absolute;
            font-size:x-large;
            text-align:center;
        }
        #last_total{
            width:320px;
            height:110px;
            margin-top:310px;
            position:absolute;
            background-color:white;
            font-size:50px;
            text-align:center;
        }
        .bt{
            font-size:30px;
            background-color:gray;
            color:white;

        }
        .bt1{
            font-size:30px;
            color:white;
            background-color:coral;
        }
        #dia_close{
            width:100px;
            height:50px;
            margin-top:450px;
            background-color:gray;
            color:white;
            margin-left:785px;
        }
                #dia_back{
            width:100px;
            height:50px;
            margin-top:450px;
            background-color:red;
            color:white;
            margin-left:655px;
            position:absolute;
        }
    </style>
    <%@ page import="java.sql.*" %>
    <%
  
    String driverName= "org.gjt.mm.mysql.Driver";
	String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
	Class.forName(driverName);
	Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
	Statement stmt = con.createStatement();
	Statement stmt0 = con.createStatement();
   String str = request.getParameter("id").trim();

   String[] id0= str.split("\\?");
   String id = id0[0].trim();
   String[] id1 = id0[1].split("\\=");
   String num = id1[1];
  
   
   String query = "SELECT * FROM "+ id0[0].trim() + "_menu";
   ResultSet rs = stmt.executeQuery(query);
   
   String query1 = "SELECT * FROM "+ id + "_table_"+id1[1].trim();
   ResultSet rs1 = stmt0.executeQuery(query1);
   
%>
    <script>
    
    var array ;
            window.onload = function () {
           id0=getParameterByName('id').split('?');
           
           num=getParameterByName('num');
          id=id0[0];
          
			
		   
           start();
           total_income();
		   
        }
            function getParameterByName(name) {
		        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		        results = regex.exec(location.search);
		        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	        }

            function start() {
            beforeafter = document.getElementById('beforeafter');
            id_date = document.getElementById('date');
            id_time = document.getElementById('time');
			host_name = document.getElementById('host');
			host_name.innerHTML = "아이디 : "+id;
            var aa = new Date()

            var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
    
            var today = new Date().getDay();
            var todayLabel = week[today];

            id_date.innerHTML = aa.getFullYear() + "년 " + (aa.getMonth() + 1) + "월" + aa.getDate() + "일 " + todayLabel;

            if (aa.getHours > 12) {
                beforeafter.innerHTML = "오후";

                id_time.innerHTML =  aa.getHours() + "시" + aa.getMinutes() + "분"
            }
            else {
                beforeafter.innerHTML = "오전";
                id_time.innerHTML =  aa.getHours() + "시" + aa.getMinutes() + "분"
            }

            setInterval(start, 1000);         // setTimeout(“실행할함수”,시간) 시간은1초의 경우 

        }
      function total_income(){
    	  div_income1 = document.getElementById("div_income1");
    	  var y = document.getElementsByClassName('t_td1');
    	  var z = document.getElementsByClassName('t_td2');
    	  var x = document.getElementsByClassName('t_td3');
    	  var t = document.getElementsByClassName('table_tr');
    	  income = 0;
    	  for(i = 0;i<t.length;i++){
    		  income += x[i].outerText*z[i].outerText;
    	  }
    	  div_income1.innerHTML = comma(income)+"원";
    	  return income;
      }
            
      function menu_btn(menu,price){  	 
    	var state = menu;    	 
    	var state1 = price;


  		  xmlhttp= new XMLHttpRequest();
  	      var url = "테이블DB메뉴넣기.jsp?state="+state+"&state1="+state1+"&id="+id+"&num="+num ;
  	      xmlhttp.open("GET",url,true);
  	   	  xmlhttp.onreadystatechange = alertContents;
  	      xmlhttp.send(null);
  	  	  
  	      
  	      
      }
      function alertContents(){
    	  location.reload();
      }
      function tr_click(count,menu,count1){
    	  var x = document.getElementsByClassName('table_tr');
    	  for(i=0;i<x.length;i++){
    	  x[i].style.backgroundColor="white";
    	  }
    	  x[count].style.backgroundColor="yellow";
    	  var state = menu;    	 
    	  total_income();
	

    	  xmlhttp= new XMLHttpRequest();
    	  var url = "이미지경로얻기.jsp?state="+state+"&id="+id+"&num="+num ;
    	  xmlhttp.open("GET",url,true);  	 
    	  xmlhttp.send(null);    	  
    	  xmlhttp.onreadystatechange = function updatePage(){
    	  		
    	  		menu_img = document.getElementById('menu_img');
    	  		menu_name = document.getElementById('menu_name');
    	  		menu_count = document.getElementById('menu_count');
    			if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
    				str = xmlhttp.responseText;
    				array = str.split(",");
    				menu_img.src=array[1];
    				menu_name.innerHTML = menu;
    				menu_count.innerHTML = count1;
    				
    			}
    		};

      }
      
      function change_plus(){
    	  num1 = -1;
    	  k=0;
    	  var x = document.getElementsByClassName('table_tr');
    	  var y = document.getElementsByClassName('t_td1');
    	  var z = document.getElementsByClassName('t_td2');
    	  var menu_count = document.getElementById('menu_count');
    	  for(i=0;i<x.length;i++){
    	  		if(x[i].style.backgroundColor=="yellow"){
    	  			num1 = i;
    	  			var menu  = y[num1].outerText;
    	  			break;
    	  			
    	  		}
    	  }
    	  if(num1 == -1){
    	  alert("수량을 증가할 메뉴를 선택해주세요");
    	  }
    	  else{
    		  xmlhttp= new XMLHttpRequest();
      	      var url = "수량증가.jsp?state="+menu+"&id="+id+"&num="+num ;
      	      xmlhttp.open("GET",url,true);
      	      xmlhttp.onreadystatechange = function updatePage2(){
      	    	  str = xmlhttp.responseText;
      	    	  array = str.split(",")
      	    	  
      	    	  menu_count.innerHTML=array[1];
      	    	 var x = document.getElementsByClassName('table_tr');
      	    	  for(i=0;i<x.length;i++){
      	    		  if(x[i].style.backgroundColor=="yellow"){
      	    			  k=i;
      	    			  z[i].innerHTML = array[1];
      	    			 total_income()
      	    			  break;
      	    		  }
      	    	  }
      	    	  
      	    	   	 
      	      }
      	      xmlhttp.send(null);
      	    
    	  }
    	  
    	  
      }
      
      function change_minus(){
    	  num1 = -1;
    	  k=0;
    	  var x = document.getElementsByClassName('table_tr');
    	  var y = document.getElementsByClassName('t_td1');
    	  var z = document.getElementsByClassName('t_td2');
    	  var menu_count = document.getElementById('menu_count');
    	  for(i=0;i<x.length;i++){
    	  		if(x[i].style.backgroundColor=="yellow"){
    	  			num1 = i;
    	  			var menu  = y[num1].outerText;
    	  			break;
    	  			
    	  		}
    	  }
    	  if(num1 == -1){
    	  alert("수량을 감소할 메뉴를 선택해주세요");
    	  }
    	  else{
    		  xmlhttp= new XMLHttpRequest();
      	      var url = "수량감소.jsp?state="+menu+"&id="+id+"&num="+num ;
      	      xmlhttp.open("GET",url,true);
      	      xmlhttp.onreadystatechange = function updatePage3(){
      	    	  
      	    	  str = xmlhttp.responseText;
      	    	  
      	    	  array = str.split(",")
      	    	  
      	    	  if(array[1] != -1){
      	    	  menu_count.innerHTML=array[1];
      	    	 var x = document.getElementsByClassName('table_tr');
      	    	  for(i=0;i<x.length;i++){
      	    		  if(x[i].style.backgroundColor=="yellow"){
      	    			  k=i;
      	    			  z[i].innerHTML = array[1];
      	    			 total_income()
      	    			  break;
      	    		  }
      	    	  }
      	    	  
      	    	  }
      	    	if(array[1] == 0){
      	    		location.reload();
    	    	  }
      	    	   	 
      	      }
      	      xmlhttp.send(null);
      	    
    	  }
    	 
    	  
      }
      
      function change_delete(){
    	  xmlhttp= new XMLHttpRequest();
  	      var url = "전체삭제.jsp?id="+id+"&num="+num ;
  	      xmlhttp.open("GET",url,true);
  	 
  	      xmlhttp.send(null);
  	    location.reload();
      }
      
      
      function menu_delete(menu){
    	  xmlhttp= new XMLHttpRequest();
  	      var url = "삭제버튼.jsp?id="+id+"&num="+num+"&menu="+menu ;
  	      xmlhttp.open("GET",url,true);
  	 
  	      xmlhttp.send(null);
  	      location.reload();
      }
      
      function comma(num){
          var len, point, str; 
             
          num = num + ""; 
          point = num.length % 3 ;
          len = num.length; 
         
          str = num.substring(0, point); 
          while (point < len) { 
              if (str != "") str += ","; 
              str += num.substring(point, point + 3); 
              point += 3; 
          } 
           
          return str;
       
      }

      function get_click() {

      }


      function show(num) {
          var a = document.getElementById('get_num');
          var last_total = document.getElementById("last_total");
          str = a.outerText;

              a.innerHTML = str + num;

          
          

      }


      function onedelete() {
          var n = document.getElementById("get_num");
          n.innerHTML = n.outerText.substring(0, n.outerText.length - 1);
      }

      function cal() {
          var get_num = document.getElementById("get_num").outerText;
          var last_total = document.getElementById("last_total");
          var give_num = document.getElementById("give_num");
          var num_total = document.getElementById("num_total").outerText;
          var fic = document.getElementById("dia_close");
          if (get_num - num_total < 0) {
              last_total.innerHTML = "잔액 부족";
          }
          else {
              last_total.innerHTML = parseInt(get_num - num_total);
              give_num.innerHTML = parseInt(get_num - num_total);
              fic.disabled = false;
              fic.style.background="red";
          }
      }
      function di_back(){
    	  var a = document.getElementById('finish'); 
          a.close();
      }
      function last_cal(){
    	  a = document.getElementById("finish");
    	  num_total = document.getElementById("num_total");
    	  num_total.innerHTML=total_income();
          a.showModal();
      }
      
      function di_close() {
    	  alert("결제완료");
          var a = document.getElementById('finish'); 
          num_total = document.getElementById("num_total").outerText;
         a.close();
         
         count = localStorage.getItem(id+"_count");	
         num1 = localStorage.getItem(id+"_today_total");
         total = parseInt(num1)+parseInt(num_total);
         localStorage.setItem(id+"_today_total",total);
         
         
         xmlhttp= new XMLHttpRequest();
 	      var url = "기록.jsp?id="+id+"&num="+num ;
 	      xmlhttp.open("GET",url,true);
 	     xmlhttp.onreadystatechange = updatePage11;
 	     xmlhttp.send(null);

       
         
     }
      function goback(){
    	  window.history.back();
      }
      function updatePage11(){
    	  if(xmlhttp.readyState == 4 && xmlhttp.status == 200){ 
    		
    		
    		  change_delete();
    		  location.reload();
    		}
      }
    </script> 

</head>
<body>
    <header>
        <table width="1880px" style="margin-left:180px;padding:0px;margin-bottom:20px;">
            <tr>
                <td>
                    <p id="date" style="color:white;font-size:30px;"> </p>
                </td>

                <td width="500px">
                    <p id="host" style="color:white;font-size:30px;">상호명</p>
                </td>
                <td>
                    <span id="beforeafter" style="font-size:20px; color:white;"> </span><span id="time" style="color:white;font-size:50px"></span>
                </td>
            </tr>

        </table>
    </header>
    <section id="table_section">
    <table class="t_table" id = "t_t1">
    <thead>
                <tr align="center">
                    <th>No</th>
                    <th>메뉴 이름</th>
                    <th>시간</th>
                    <th>수량</th>
                    <th>금액</th>
                    <th>삭제</th>
                </tr>
            </thead>

            <tbody class="t_table_body" id="t_tab">
               
                        <% int j=0; %>
    <% while(rs1.next()){%>
     <tr align="center" bgcolor="white" onclick="tr_click(<%=j%>,'<%= rs1.getString("menu")%>',<%= rs1.getString("count")%>)" class="table_tr">
     <td class="t_td"><%=++j%></td>
    <td class="t_td1"><%= rs1.getString("menu")%></td>
    <td class="t_td"><%= rs1.getString("time")%></td>
    <td class="t_td2"><%= rs1.getInt("count")%></td>
    <td class="t_td3"><%= rs1.getString("price")%></td>
    <td class="t_td"><input type="button" onclick="menu_delete('<%= rs1.getString("menu")%>')"   class= "btn_delete" value="-" ></td>
    </tr>
    <%} %>
                

            </tbody>

    </table>

    </section>
    <section id="table_button">
        <button id="btn_count" value="수량" onclick="change_count()">
            수량
        </button>
        <button id="btn_plus" value="+" onclick="change_plus()">
            +
        </button>
        <button id="btn_minus" value="-" onclick="change_minus()">
            -
        </button>
        <button id="btn_all_delete" value="-" onclick="change_delete()">
            전체취소
        </button>
        <div  id="div_income">
        총매출:
        </div>
        <div  id="div_income1">
        총매출:
        </div>

    </section>
    <section id="table_blank">
        <img id="menu_img">

        
        <div id="menu_name">

        </div>
        <div id="menu_count">

        </div>

    </section>
    <section id="menu">
        <div id="menu_room">
        <% int i=0; %>
        <% while(rs.next()){%>
       
            <article class="menu">
                <div class="group">
                    <img src="<%=rs.getString("path")%>" class="pic" style="width:100px;height:100px;">
                    <input type="text" class = "name" value = "<%= rs.getString("menu")%>">
                    <input type="text" class = "price" value = "<%= rs.getString("price")%>"><br>
                    <input type="button" onclick="menu_btn('<%= rs.getString("menu")%>',<%= rs.getString("price")%>)"  class= "btn" value="주문하기" id = "<%= rs.getString("menu")%>,<%= rs.getString("price")%>">
                   </div>
                
            </article>
        <%} %>

        </div>
        <div id="button_room">
	        <button id="btn_close" onclick="goback()">
	        닫기
	        </button>
	        <button id="btn_cal" onclick="last_cal()">
	        계산하기
	        </button>

        </div>
    </section>
    
    
 <dialog id="finish" style="height:500px;width:920px;border-radius:20px; background-color: rgb(110,73,58);">
        <div id="leftside">
            <div id="get_money">
                받은돈:

            </div>

            <div id="get_num" onclick="get_click()">

            </div>

            <div id="total">
                총금액:
            </div>
            <div id="num_total">
                0
            </div>


            <div id="give_money">
                거스름돈

            </div>
            <div id="give_num">

            </div>

            <div id="last_total">

            </div>
        </div>
        <div id="rightside">
            <table width="450px" height="430px" style="table-layout:fixed;">
                <TBODY>


                    <tr>
                        <td><input class="bt" type="button" value="7" id="7" style="width:100%;height:100%;" onclick="show(7)" /></td>
                        <td><input class="bt" type="button" value="8" id="8" style="width:100%;height:100%" onclick="show(8)" /></td>
                        <td><input class="bt" type="button" value="9" id="9" style="width:100%;height:100%" onclick="show(9)" /></td>
                    </tr>
                    <tr>
                        <td><input class="bt" type="button" value="4" id="4" style="width:100%;height:100%" onclick="show(4)" /></td>
                        <td><input class="bt" type="button" value="5" id="5" style="width:100%;height:100%" onclick="show(5)" /></td>
                        <td><input class="bt" type="button" value="6" id="6" style="width:100%;height:100%" onclick="show(6)" /></td>
                    </tr>
                    <tr>
                        <td><input class="bt" type="button" value="1" id="3" style="width:100%;height:100%" onclick="show(1)" /></td>
                        <td><input class="bt" type="button" value="2" id="2" style="width:100%;height:100%" onclick="show(2)" /></td>
                        <td><input class="bt" type="button" value="3" id="1" style="width:100%;height:100%" onclick="show(3)" /></td>
                    </tr>
                    <tr>
                        <td><input class="bt1" type="button" value="지우기" style="width:100%;height:100%" onclick="onedelete()" /></td>
                        <td><input class="bt" type="button" value="0" id="0" style="width:100%;height:100%" onclick="show(0)" /></td>
                        <td><input class="bt1" type="button" value="="  style="width:100%;height:100%" onclick="cal()"  /></td>
                    </tr>


                </TBODY>


            </table>
        </div>
		<input type="button" value="나가기" id="dia_back" onclick="di_back()"  />
        <input type="button" value="계산하기" id="dia_close" onclick="di_close()" disabled="disabled" />


    </dialog>
</body>
</html>


