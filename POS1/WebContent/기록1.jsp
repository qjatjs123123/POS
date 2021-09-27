<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출 기록</title>
<style>
html{
	display : flex;
	justify-content: center;
}
    .year, .month, .day{
        margin : 10px;
        display : flex;
        flex-direction : row;
        flex-wrap : wrap;
        justify-content: flex-start;
        align-items: flex-start;
        align-content: flex-start;
    }
     .text{
        font-size: 25px;
        color : rgb(139, 96, 40);
    }
    section{
        display : flex;
    }
        #s_year{
        width : 90px;
        height : 30px;
        font-size: 15px;
    }
    #s_month, #s_day{
        width : 70px;
        height: 30px;
        font-size: 15px;
    }
    #my-tbody{
    width : 550px;
    }
    th, td {
  text-align: center;
}
</style>
<script>
		var xmlhttp = null;
		var s_year;
		var s_month;
		var s_day;
		var sales = new Array();
		window.onload = function(){
		    INIT();
		    id = getParameterByName('id');
		    get_sales();
		    
		}
		
		function getParameterByName(name) {
	        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	        results = regex.exec(location.search);
	        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	    }
		
		function INIT(){
		    var today = new Date();
		    var Y = document.getElementById('s_year');
		    var M = document.getElementById('s_month');
		    var D = document.getElementById('s_day');
		    s_year = today.getFullYear();
		    s_month = today.getMonth();
		    s_day = today.getDate();
		    for(i = 0 ; i<31; i++){
		        if(i<12){
		            var Option = document.createElement("option");
		            Option.text = (s_year-i)+"년";
		            Option.value = s_year-i;
		            Y.options.add(Option);
		        }
		        if(i<12){
		            var Option = document.createElement("option");
		            Option.text = (i+1)+"월";
		            Option.value = i+1;
		            M.options.add(Option);
		        }
		        var Option = document.createElement("option");
		            Option.text = (i+1)+"일";
		            Option.value = i+1;
		            D.options.add(Option);
		    }
		    Y.options[0].selected = true;
		    M.options[s_month].selected = true;
		    D.options[s_day-1].selected = true;
		    s_month +=1;
		}
		
		function createRequest(){
		    try{
			    xmlhttp = new XMLHttpRequest();
		    } catch(failed) {
			    xmlhttp = null;
		    }
		    if(xmlhttp == null)
			    alert("Error creating request object!");
		}
		function get_sales(){
		    createRequest();
		    var url = "관리자_매출.jsp";
		    var qry = "ID="+id;
		    xmlhttp.open("POST", url, true);
		    xmlhttp.onreadystatechange = update;
		
		    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");             
		    xmlhttp.send(qry);  
		}
		
		function update(){
			
		    if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
		        var get_sales =  xmlhttp.responseText;
		        get_sales = get_sales.trim();
		        get_sales = get_sales.split(',');
		        for(i = 0; i<get_sales.length-1; i++){
		            if(i%4 ==0){
		                var str = new Array();
		                str.push(get_sales[i]);
		                str.push(get_sales[i+1]);
		                str.push(get_sales[i+2]);
		                str.push(get_sales[i+3]);
		                sales.push(str);
		                
		            }
		        }
		        
		    }
		    btn_change1();
		}
		
		function op_change(){
			delete_row();
	        var y = document.getElementById('s_year');
	        s_year = y.options[y.selectedIndex].value;
	        
	        var m = document.getElementById('s_month');
	        s_month = m.options[m.selectedIndex].value;
	        

	        var d = document.getElementById('s_day');
	        s_day = d.options[d.selectedIndex].value;
	        
	        btn_change();
	        	       
	    }
		function btn_change1(){
			var cost_y = 0;
	        var cost_m = 0;
	        var cost_d = 0;
	        today = new Date();   

	        year = today.getFullYear(); // 년도
	        month = today.getMonth() + 1;  // 월
	        date1 = today.getDate();  // 날짜
	        
	        
	        tb_name = document.getElementsByClassName('tb_name');
	        tb_time = document.getElementsByClassName('tb_time');
	        tb_count = document.getElementsByClassName('tb_count');
	        tb_price = document.getElementsByClassName('tb_price');
	        tb_total = document.getElementsByClassName('tb_total');
	        var my_tbody = document.getElementById('my-tbody');
	        
	        for(i=0; i<sales.length; i++){
	        	
	            var date = new Date(sales[i][3]);
	            if(year == date.getFullYear() && month == (date.getMonth()+1) && date1 == date.getDate()){
	            	
	            	lo_row = document.createElement("TR")
	            	newRow = my_tbody.insertRow();
	            	newCell1 = newRow.insertCell(0);
	            	newCell2 = newRow.insertCell(1);
	            	newCell3 = newRow.insertCell(2);
	            	newCell4 = newRow.insertCell(3);
	            	newCell5 = newRow.insertCell(4);
	            	
	            	newCell1.innerHTML = sales[i][0];
	            	newCell2.innerHTML = comma(sales[i][1])+"원";
	            	newCell3.innerHTML = sales[i][2];
	            	newCell4.innerHTML = sales[i][3];
	            	newCell5.innerHTML = comma(parseInt(sales[i][1]) * parseInt(sales[i][2]))+"원";

	            }
	        }
	        cost_y = 0;
	        cost_m = 0;
	        cost_d = 0;
	        
	        
		}
		
		
		function btn_change(){
	        var cost_y = 0;
	        var cost_m = 0;
	        var cost_d = 0;
	        j=0;
	        tb_name = document.getElementsByClassName('tb_name');
	        tb_time = document.getElementsByClassName('tb_time');
	        tb_count = document.getElementsByClassName('tb_count');
	        tb_price = document.getElementsByClassName('tb_price');
	        tb_total = document.getElementsByClassName('tb_total');
	        var my_tbody = document.getElementById('my-tbody');
	      
	        for(i=0; i<sales.length; i++){
	            var date = new Date(sales[i][3]);
	            if(s_year == date.getFullYear() && s_month == (date.getMonth()+1) && s_day == date.getDate()){
	            	lo_row = document.createElement("TR")
	            	newRow = my_tbody.insertRow();
	            	newCell1 = newRow.insertCell(0);
	            	newCell2 = newRow.insertCell(1);
	            	newCell3 = newRow.insertCell(2);
	            	newCell4 = newRow.insertCell(3);
	            	newCell5 = newRow.insertCell(4);
	            	
	            	newCell1.innerHTML = sales[i][0];
	            	newCell2.innerHTML = comma(sales[i][1])+"원";
	            	newCell3.innerHTML = sales[i][2];
	            	newCell4.innerHTML = sales[i][3];
	            	newCell5.innerHTML = comma(parseInt(sales[i][1]) * parseInt(sales[i][2]))+"원";

	            }
	        }
	        cost_y = 0;
	        cost_m = 0;
	        cost_d = 0;
	        
	        
	    }
		
		function delete_row() {
		    var my_tbody = document.getElementById('my-tbody');
		    num = my_tbody.rows.length-1
		    for(i=0; i<num; i++){
		    	my_tbody.deleteRow(-1);
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

String query = "SELECT * FROM "+id+"_kitchen";

ResultSet rs = stmt.executeQuery(query);
%>
</head>
<body>
<section>
        <div class="year">
            <span class = 'text'>연별　</span>
            <select id="s_year" onchange="op_change()"></select><br><br><br>
            <table id="month_table" border="1" cellspacing="0"></table>
        </div>
        <div class="month">

            <span class = 'text'>월별　</span>
            <select id="s_month" onchange = "op_change()"></select><br><br><br>
            <table id="day_table" border="1" cellspacing="0"></table>
        </div>
        <div class="day">
            <span class = 'text'>일별　</span>
            <select id="s_day" onchange = "op_change()"></select><br><br><br>
            <table id="hour_table" border="1" cellspacing="0"></table>
        </div>
    </section>
    
	<table id="my-tbody" border="1" cellspacing = "0">
		<tr>
			<th>메뉴명</th>
			<th>가격</th>
			<th>주문수량</th>
			<th>주문시간</th>
			<th>총 가격</th>
		</tr>
		
		
	</table>
</body>
</html>