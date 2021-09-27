var list;
var request = null;





window.onload = function(){
    list = get_query();
    
    req();
    
}


function get_query(){
    var url = document.location.href;
    var qs = url.substring(url.indexOf('?') + 1).split('&');
    for(var i = 0, result = {}; i < qs.length; i++){
        qs[i] = qs[i].split('=');
        result[qs[i][0]] = decodeURIComponent(qs[i][1]);
    }
    return result;
}

function req(){
    var id = document.getElementById("id");
    var na = document.getElementById("name");
    var em = document.getElementById("email");
    var HE = document.getElementById("HELLO");
	localStorage.setItem(list.id+"_count", 0);
	localStorage.setItem(list.id+"_income", 0);
    HE.innerHTML = list.id+"님, 환영합니다.";
    id.innerHTML = list.id;
    na.innerHTML = list.name;
    em.innerHTML = list.em;
}

function login(){
    location.href="main.html";
}

