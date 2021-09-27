<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주방</title>
</head>
<style>
 header{
            	border:2px solid;
                width : 100%;
                height: 80px;
                background-color: #C79467;
                text-align : center;
                padding-top : 30px;
                font-size : 40px;
                border-radius: 20px;
            }
            
body{
background-color: ivory;
	font-family: '�������', 'Malgun Gothic', sans-serif;

	font-weight: bold;
	font-size: 20px;
}
#section1{
display: flex;
justify-content: space-around;
align-items: center;
flex-flow: row wrap;
}
.class_div{
background-color:#FFF4CB;
                border:2px solid;
                width: 350px;
                height: 400px;
                border-radius: 10px;
                border-radius: 10px;
                margin : 10px;
                }

.class_t_n{
background-color: #D4C2AA;
                height:30px;
                text-align:center;
                border-radius: 10px 10px 0px 0px;
               }
               
.class_leftside{
                height:370px;
                width:175px;
                text-align:center;
                position:absolute;
                 border-radius: 10px;
                
                }
.class_rightside{

                height:370px;
                width:175px;
                text-align:center;
                position : absolute;
                margin-left:175px;
                 border-radius: 10px;
                
                }
               
</style>

<script>
var id;

window.onload = function () {
    id=getParameterByName('id');
	   create_table()
	   setInterval(db, 1000); 
	   
 }
function getParameterByName(name) {
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	results = regex.exec(location.search);
	return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
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
function db(){

	var state1 = id;
	count = localStorage.getItem(id+"_count");	
	var state3 =count;
	xmlhttp= new XMLHttpRequest();
	
	var url = "테이블DB불러오기.jsp?state1="+state1+"&state3="+state3;
	
	xmlhttp.open("GET",url,true);
	xmlhttp.onreadystatechange = updatePage1;
	xmlhttp.send(null);
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
		j=0;
		count = localStorage.getItem(id+"_count");	
		k=0;
		var table_num = document.getElementsByClassName('class_t_n');
		var leftside = document.getElementsByClassName('class_leftside');
		var rightside = document.getElementsByClassName('class_rightside');
		var arr_name="";
		var arr_count="";
		for (i=0;i<array.length;i++){

			arr =array[i].trim();
			if(arr != '!'){
				if(k == 0){
				arr_name += arr + "<br/>";					
				k++;
				}
				else if(k==1){						
					k++;
				}
				else if(k==2){						
					arr_count += array[i] + "<br/>";
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
				table_num[j].innerHTML = (j+1)+"테이블";
				leftside[j].innerHTML = arr_name;				
				rightside[j].innerHTML = arr_count;
				arr_name="";
				arr_count="";
				j++;
				k=0;
				
			}
		}
		
	
		}
			
			
			
			
	}
	
	
	
	
function made_table(table_count) {
	get_DB(table_count);
	for(i=0;i<table_count;i++){
		var div = document.createElement("div");
		var div_table_num = document.createElement("div");
        var div_leftside = document.createElement("div");
        var div_rightside = document.createElement("div");
        
        
        div.setAttribute("class","class_div");
        div_table_num.setAttribute("class", "class_t_n");
        div_leftside.setAttribute("class", "class_leftside");
        div_rightside.setAttribute("class", "class_rightside");
        
        var room = document.getElementById("section1");
        div.appendChild(div_table_num);
        div.appendChild(div_leftside);
        div.appendChild(div_rightside);
        room.appendChild(div);
        
        
	}
	
}
</script>
<body>
<header>주방</header>
<section id="section1">

</section>

</body>
</html>