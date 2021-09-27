var num0 = false;
var num1 = false;
var num2 = false;
var num3 = false;
var num4 = false;
var array = new Array();

var request = null;

function createRequest(){
	try{
		request = new XMLHttpRequest();
	} catch(failed) {
		request = null;
	}
	if(request == null)
		alert("Error creating request object!");
}

function id_check(){
	createRequest();
	var id = document.getElementById('text1').value;
	var url = "id_check.jsp";
	var qry = "ID="+id;
	
	request.open("POST", url, true);
	request.onreadystatechange = update;
	
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	request.send(qry);
}
function update(){
	if(request.readyState == 4  && request.status == 200){
		var check = request.responseText;
		var txt = document.getElementById('id');
		
		if(check.trim() == "t"){
			txt.style.color = "limegreen";
			txt.innerHTML = "사용 가능한 아이디 입니다.";
			num0 = true;
		}
		else{
			txt.style.color = "red";
			txt.innerHTML = "중복된 아이디 입니다.";
			num0 = false;
		}
	}	
}

function fc1() {
    var n = document.getElementById("email");
    var p = document.getElementById("emailp");
    var text = n.value;
   
    if (text.indexOf("@") == -1) {
		p.style.color = "red";
        p.innerHTML = "'@'포함하여 이메일 주소를 입력해주세요";
        num4 = false;
    }

    else if (text.indexOf("@") >= 0) {
        p.style.color = "limegreen";
        p.innerHTML = "";
        num4 = true;
    }
}

function fc2() {
    var pw = document.getElementById("text2").value;
    var num = pw.search(/[0-9]/g);
    var eng = pw.search(/[a-z]/ig);
    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    var p = document.getElementById("password");


    if (num < 0 || eng < 0 || spe < 0 || pw.length < 8 || pw.length > 16) {
        document.getElementById("password").innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        num1 = false;
        p.style.color = "red";
    } else {
        p.style.color = "limegreen";
        document.getElementById("password").innerHTML = "사용 가능";
        num1 = true;
    }

}

function fc3() {
    var pw = document.getElementById("text2").value;
    var pwc = document.getElementById("text3").value;
    var p = document.getElementById("passwordcheck");
    if (pw == pwc) {
        p.style.color = "limegreen";
        document.getElementById("passwordcheck").innerHTML = "비밀번호 일치";
        num2 = true;
    } else {
        p.style.color = "red";
        document.getElementById("passwordcheck").innerHTML = "비밀번호가 일치하지 않습니다.";
        num2 = false;
    }
}

function fc4() {
    var n = document.getElementById("text4").value;
    if (n == "") {
        document.getElementById("name").innerHTML = "필수 정보입니다.";
        num3 = false;
    } else {
        document.getElementById("name").innerHTML = "";
        num3 = true;
    }
}

function fc5() {
    if (!num0) {
        alert("아이디를 다시 입력해주세요");
    } else if (!num1) {
        alert("비밀번호를 입력해주세요");
    } else if (!num2) {
        alert("비밀번호 재확인을 확인해주세요");
    } else if (!num3) {
        alert("이름을 입력해주세요");
    } else if(!num4){
		alert("이메일을 확인해주세요");
	}else {
    
    	createRequest();
		var id = document.getElementById('text1').value;
		var ps = document.getElementById('text2').value;
		var na = document.getElementById('text4').value;
		var em = document.getElementById('email').value;
		
		
		var url = "insert.jsp";
		var qry = "ID=" + id + "&PS=" + ps + "&NA="+na+ "&EM=" + em;
	
		request.open("POST", url, true);
		
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		request.send(qry);
		
		location.href = "회원가입완료.html"+"?id="+id+"&name="+na+"&em="+em;
		
		
  
    }
}