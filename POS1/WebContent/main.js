
var request = null;
var id = "";
function createRequest(){
	try{
		request = new XMLHttpRequest();
	} catch(failed) {
		request = null;
	}
	if(request == null)
		alert("Error creating request object!");
}

function login(){
	createRequest();
	id = document.getElementById('id').value;
	var ps = document.getElementById('passwd').value;
	var url = "main.jsp";
	var qry = "id="+id+"&ps="+ps;
	
	request.open("POST", url, true);
	request.onreadystatechange = link;
	
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	request.send(qry);
}
function link(){
	if(request.readyState == 4  && request.status == 200){
		var check = request.responseText;
		alert(check);
		if(check.trim() == "f"){
			alert("아이디와 비밀번호를 확인해주세요");
		}
		else{
			location.href = "4모드선택페이지.html"+"?name="+check+"?id="+id;
		}
	}	
}