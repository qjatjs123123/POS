<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>로그인</title>
    <style>
       body {
            margin: 0;
            padding: 0;
            background-color: lightgray;
        }

        header {
            padding: 0;
            width: 100%;
            height: 120px;
            float: left;
            color: white;
            background-color: dimgrey;
        }

        #room {
            width: 80%;
            margin: 0 auto;
            left: 40%;
            margin-left: -30%;
            margin-top: 120px;
            display: flex;
            justify-content: space-around;
            align-items: center;
            flex-flow: row wrap;
            background-color: lightgray;
            position: absolute;
        }

        #leftside {
            width: 10%;
            height: 100%;
            margin: 0 auto;
            left: 40%;
            margin-left: -40%;
            margin-top: 120px;
            display: flex;
            flex-direction: column;
            background-color: lightgray;
            position: fixed;
        }

        #rightside {
            width: 10%;
            margin: 0 auto;
            left: 40%;
            margin-left: 50%;
            height: 100%;
            margin-top: 120px;
            display: flex;
            flex-direction: column;
            background-color: lightgray;
            position: fixed;
        }

        #table_count {
            width: 150px;
            height: 100px;
            background-color: navy;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid;
            color: white;
            margin-left: 30px;
            border-color: black;
            text-align:center;
            
        }

        #table_income {
            width: 150px;
            height: 100px;
            background-color: navy;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid;
            color: white;
            margin-left: 30px;
            border-color: black;
            text-align:center;
        }

        #today_income {
            width: 150px;
            height: 100px;
            background-color: navy;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid;
            color: white;
            margin-left: 30px;
            border-color: black;
            text-align:center;
        }


        #cal {
            width: 150px;
            height: 100px;
            background-color: indigo;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid;
            color: white;
            border-color: black;
            cursor: pointer;
        }

        #save {
            width: 150px;
            height: 100px;
            background-color: indigo;
            margin-top: 10px;
            margin-bottom: 480px;
            border: 1px solid;
            color: white;
            border-color: black;
            cursor: pointer;
        }

        #close {
            width: 150px;
            height: 100px;
            background-color: red;
            border: 1px solid;
            border-color: black;
            color: white;
            cursor: pointer;
        }

        .num {
            width: 300px;
            height: 30px;
            background-color: #FFF4CB;
            border-right:1px solid;
            border-bottom:1px solid;
            color: black;
            margin-bottom: 220px;
            position: absolute;
            text-align:center;
        }

        .income {
            width: 300px;
            height: 40px;
            border-top: 1px solid;
            margin: 0px;
            margin-top: 265px;
            position: absolute;
            text-align: right;
        }

        .menu {
            width: 300px;
            height: 230px;
            margin-top: 30px;
            position: absolute;
        }

        .m_name {
            width: 80px;
            height: 30px;
            margin-top: 30px;
            text-align:center;
            position: absolute;
            border-top:1px solid;
            border-right:1px solid;
            border-bottom:1px solid;
            background-color:floralwhite;
        }
         .m_name_r {
            width: 80px;
            height: 205px;

            margin-top: 60px;
           
            text-align:center;
            position: absolute;

            border-right:1px solid;
            
            
        }

        .m_price {
            width: 85px;
            height: 30px;
            margin-top: 30px;
            margin-left: 80px;
            text-align:center;
            position: absolute;
            border:1px solid;
            background-color:floralwhite;
        }

         .m_price_r {
            width: 85px;
            height: 205px;
            margin-top: 60px;
            margin-left: 80px;
            text-align:right;
            position: absolute;
            border-right:1px solid;

        }
        .m_count {
            width: 40px;
            height: 30px;
            margin-top: 30px;
            margin-left: 165px;
            text-align:center;
            position: absolute;
            border:1px solid;
            background-color:floralwhite;
        }
        .m_count_r {
            width: 40px;
            height: 205px;
            margin-top: 60px;
            margin-left: 165px;
            text-align:center;
            position: absolute;
            border-right:1px solid;
            
        }

        .m_total {
            width: 94px;
            height: 30px;
            margin-top: 30px;
            margin-left: 205px;
            text-align:center;
            position: absolute;
            border:1px solid;
            background-color:floralwhite;
        }
        .m_total_r{
             width: 94px;
            height: 205px;
            margin-top: 60px;
            margin-left: 205px;
            text-align:right;
            position: absolute;
            
        }
        .blank{
            width:220px;
            height:30px;
            margin-left:80px;
            background-color:lightgray;
            border-right-color:white;
            border-top:none;
          

        }
        
               #leftside1{
            width:400px;
            height:480px;
            margin-top:10px;
            margin-left:30px;
            position:absolute;
           
        }
        #rightside1{
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
    <script>
    var xmlhttp = false;
	var form = new FormData();
	var settings;
	var upload_wait = false;
	var id;
    var table_count;
    var str;
	var array;
	
    window.onload = function () {
           id=getParameterByName('id');
           today_income = document.getElementById('today_income');
           host = document.getElementById('host');
           today_total = comma(localStorage.getItem(id+"_today_total"));
           today_income.innerHTML = "일일매출"+ "<br/>" + today_total;
		   create_table()
		   host.innerHTML = "아이디:"+id
		   
           start();
		   
        }
    
    function getParameterByName(name) {
		name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		results = regex.exec(location.search);
		return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}

    	
    	

     function get_DB(count){
    	
    	var state1 = id;
    	var state3 =count;
    	xmlhttp= new XMLHttpRequest();
    	
    	var url = "테이블DB불러오기.jsp?state1="+state1+"&state3="+state3;
    	
    	xmlhttp.open("GET",url,true);
    	xmlhttp.onreadystatechange = updatePage1;
    	xmlhttp.send(null);
    		
    }
	function updatePage1(){
		
		if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
			
			str = xmlhttp.responseText;
			num = 0;
			array = str.split(",");
			
			count = localStorage.getItem(id+"_count");			
			table_count = document.getElementById("table_count");
			today_income = document.getElementById("today_income");
			 j=0;
			 k=0;
			var arr_name="";
			var arr_price="";
			var arr_count="";
			var arr_total="";
			var arr_sum=0;
			
			var x = document.getElementsByClassName('m_name_r');
			var y = document.getElementsByClassName('m_price_r');
			var z = document.getElementsByClassName('m_count_r');
			var d = document.getElementsByClassName('m_total_r');
			var income = document.getElementsByClassName('income');
			
			for (i=0;i<array.length;i++){

				arr =array[i].trim();
				if(arr != '!'){
					if(k == 0){
					arr_name += arr + "<br/>";					
					k++;
					}
					else if(k==1){						
						arr_price += comma(arr) + "<br/>";
						k++;
					}
					else if(k==2){						
						arr_count += array[i] + "<br/>";
						arr_total += comma(array[i-1].trim()*array[i].trim())+ "<br/>";
						arr_sum = parseInt(arr_sum+array[i-1].trim()*array[i].trim());
						k=0;
					}
				}
				else{
					
					if (i == 0){
						if (arr == '!'){
							num++;
						}
					
					}
					else{
						if(array[i].trim() == '!' && array[i-1].trim() == '!'){							
							num++;
						}
					}
					arr_sum = comma(arr_sum);
					x[j].innerHTML = arr_name;
					y[j].innerHTML = arr_price
					z[j].innerHTML = arr_count
					d[j].innerHTML = arr_total
					if (arr_sum != 0)
					income[j].innerHTML=arr_sum;
					else
						income[j].innerHTML="";
					arr_name="";
					arr_total="";
					arr_count="";
					arr_price="";
					arr_sum="";
					j++;
					k=0;
					
				}
			}
			
			table_count.innerHTML = "테이블 수"+ "<br/>" + (count-num) + "/" + count;
			}
	
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
	function create_table(){
		var state1 = id;
    	xmlhttp= new XMLHttpRequest();
    	var url = "테이블개수불러오기.jsp?state1="+state1;
    	xmlhttp.open("GET",url,true);
    	xmlhttp.onreadystatechange = updatePage;
    	xmlhttp.send(null);
	}
	
	function updatePage(){
		
		if(xmlhttp.readyState == 4 && xmlhttp.status == 200){ 
			var table_count = xmlhttp.responseText;
			made_table(table_count);   
			
		}
	}

	
        function made_table(table_count) {
        	var state1 = id;
        	get_DB(table_count);
        	
        	var host = document.getElementById('host');          
        	var ro = document.getElementById('room'); 
            for (var i = 0; i < table_count; i++) {
                              //div 객체 생성
            	 var div = document.createElement("div");
                 var div_total_income = document.createElement("div");
                 var div_table_num = document.createElement("div");
                 var div_menu = document.createElement("div");
                 var div_menu_num = document.createElement("div");
                 var div_menu_name = document.createElement("div");
                 var div_menu_count = document.createElement("div");
                 var div_menu_price = document.createElement("div");
                 var div_menu_name = document.createElement("div");
                 var div_menu_price = document.createElement("div");
                 var div_menu_count = document.createElement("div");
                 var div_menu_total = document.createElement("div");
                 var div_blank = document.createElement("div");

                 var div_menu_name_room = document.createElement("div");
                 var div_menu_price_room = document.createElement("div");
                 var div_menu_count_room = document.createElement("div");
                 var div_menu_total_room = document.createElement("div");


                 div_table_num.innerHTML = (i + 1) + " 테이블";
                 div_total_income.innerHTML = "총합계";


                 div_table_num.setAttribute("class", "num");
                 div_menu.setAttribute("class", "menu");


				 div.setAttribute("class","class_div");
                 div_total_income.setAttribute("class", "income");
                 div_menu_name.setAttribute("class", "m_name");
                 div_menu_price.setAttribute("class", "m_price");
                 div_menu_count.setAttribute("class", "m_count");
                 div_menu_total.setAttribute("class", "m_total");
                 div_menu_name_room.setAttribute("class", "m_name_r");
                 div_menu_price_room.setAttribute("class", "m_price_r");
                 div_menu_count_room.setAttribute("class", "m_count_r");
                 div_menu_total_room.setAttribute("class", "m_total_r");
                 div_blank.setAttribute("class", "blank");


                 div_menu_name.innerHTML = "메뉴이름";
                 div_menu_price.innerHTML = "가격";
                 div_menu_count.innerHTML = "수량";
                 div_menu_total.innerHTML = "총합";
                 //css설정
                 div.style.border = "1px solid black";
                 div.style.margin = "20px";
                 div.style.width = "300px";
                 div.style.height = "300px";
                 div.style.display = "flex";


                 div.style.backgroundColor = 'white';
                 //css설정(div_total_income)

				 div.onmouseover = function(){
					 event.srcElement.parentNode.style.cursor="pointer";
                 };
                 
                 div.onclick = function () { //익명 메서드
                     //event.srcElement => 이벤트 발생 객체
                     class_div=document.getElementsByClassName('class_div');
                     income = document.getElementsByClassName('income');
                     count = localStorage.getItem(id+"_count");
                     table_income = document.getElementById('table_income');
                     if(event.srcElement.parentNode.style.backgroundColor == "yellow"){
                    	 event.srcElement.parentNode.style.backgroundColor = "white";
                     }
                     else{
                     table_color_white()
                     event.srcElement.parentNode.style.backgroundColor = "yellow";
                                          
                     for(i=0;i<count;i++){
                    	 if(class_div[i].style.backgroundColor=="yellow"){
                    		table_income.innerHTML = "테이블 매출" +"<br/> "+income[i].outerText;
                    	 }
                    	 
                     }
                     }
                    ro.style.backgroundColor="lightgray";


                 };
                 //** 바디의 마지막 자식으로 div 객체 추가
                 var room = document.getElementById("room");
                 div.appendChild(div_total_income);

                 div.appendChild(div_menu_name);
                 div.appendChild(div_menu_price);
                 div.appendChild(div_menu_count);
                 div.appendChild(div_menu_total);

                 div.appendChild(div_menu_name_room);
                 div.appendChild(div_menu_price_room);
                 div.appendChild(div_menu_count_room);
                 div.appendChild(div_menu_total_room);
                 

                 div.appendChild(div_table_num);
                 room.appendChild(div);
            	
            }
            
            
        }

        
        function table_color_white(){
        	count = localStorage.getItem(id+"_count");
        	class_div=document.getElementsByClassName('class_div');
        	for(i=0;i<count;i++){
        		class_div[i].style.backgroundColor = "white";
            }
        	
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
        function go_page(){
        	count = localStorage.getItem(id+"_count");
        	var class_div = document.getElementsByClassName('class_div');
        	var select_table=0;
        	 for(i=0;i<count;i++){
            	 if(class_div[i].style.backgroundColor=="yellow"){
            		
            		select_table=i+1;

            		break;
            	 }
            	 
            	 
            	 
             }
        	 if (select_table == 0){
        		 alert("테이블을 선택해주세요");
        	 }
        	 else{
        		 location.href = "메뉴판.jsp"+"?id="+id+"?num="+select_table;
        	 }
        	
        }
        function go_cal(){
        	count = localStorage.getItem(id+"_count");
        	var class_div = document.getElementsByClassName('class_div');
        	var select_table=0;
        	 for(i=0;i<count;i++){
            	 if(class_div[i].style.backgroundColor=="yellow"){
            		
            		select_table=i+1;

            		break;
            	 }
            	 
            	 
            	 
             }
        	 if (select_table == 0){
        		 alert("테이블을 선택해주세요");
        	 }
        	 else{
             	  a = document.getElementById("finish");
              	  num_total = document.getElementById("num_total");
              	  income = document.getElementsByClassName('income')[i].outerText;
              	  number = income.replace(/,/g, "");
              	  num_total.innerHTML=number;
              	  
                    a.showModal();
        	 }
        }
        
        function goback(){
        	window.history.back();
        }
        function show(num) {
            var a = document.getElementById('get_num');
            var last_total = document.getElementById("last_total");
            str = a.outerText;

                a.innerHTML = str + num;

            
            

        }

        function change_delete(){
      	  xmlhttp= new XMLHttpRequest();
      	  num=0;
      	for(i=0;i<count;i++){
       	 if(class_div[i].style.backgroundColor=="yellow"){
       		
       		num=i+1;

       		break;
       	 }
       	 
       	 
       	 
        }
      	
    	      var url = "전체삭제.jsp?id="+id+"&num="+num ;
    	      xmlhttp.open("GET",url,true);
    	 
    	      xmlhttp.send(null);
    	  location.reload()
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

        function di_close() {
      	  
            var a = document.getElementById('finish'); 
           a.close();
          
           
           for(i=0;i<count;i++){
          	 if(class_div[i].style.backgroundColor=="yellow"){
          		 
          		select_table=i+1;
          	  xmlhttp= new XMLHttpRequest();
      	      var url = "기록.jsp?id="+id+"&num="+select_table ;
      	      xmlhttp.open("GET",url,true);
      	     xmlhttp.onreadystatechange = updatePage11;
      	     xmlhttp.send(null);
          		
          		income = document.getElementsByClassName('income')[i].outerText;
          	  number = income.replace(/,/g, "");
          	  num = localStorage.getItem(id+"_today_total");
                total = parseInt(num)+parseInt(number);
               localStorage.setItem(id+"_today_total",total);

          		break;
          	 }
          	          	 
          	 
           }
         
         
           
       }
        function goback(){
      	  window.history.back();
        }
        function updatePage11(){
        	
      	  if(xmlhttp.readyState == 4 && xmlhttp.status == 200){ 
      		alert("결제완료");
      		  change_delete();
      		  
      		  
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

    <section id="room">

    </section>

    <section id="leftside">
        <div id="table_count">
            테이블 수
        </div>
        <div id="table_income">
            테이블 매출
        </div>
        <div id="today_income">
            일일매출
        </div>
    </section>

    <section id="rightside">
        <div id="cal" onclick="go_page()">
            주문하기
        </div>
        <div id="save" onclick="go_cal()">
            계산하기
        </div>
        <div id="close" onclick="goback()">
            닫기
        </div>
    </section>

 <dialog id="finish" style="height:500px;width:920px;border-radius:20px; background-color: rgb(110,73,58);">
        <div id="leftside1">
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
        <div id="rightside1">
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


