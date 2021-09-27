var chk1 = false;
        var chk2 = false;
        var chk3 = false;
        var chk4 = false;
        
        function check() {
            if (!chk1) 
                alert("이용약관 동의해 주세요");
            else if (!chk2) 
                alert("위치정보 이용약관 동의해 주세요");               
            else if (!chk3) 
                alert("프로모션 약관 동의해 주세요");           
            if (chk1 && chk2 && chk3) 
                location.href = "회원가입양식.html";
                 
        }
        function check1() {
            if (!chk1)
                chk1 = true;
            else
                chk1 = false;
            if (chk1 && chk2 && chk3) {
                document.getElementById("ch4").checked = true;
                chk4 = true;
            }
        }
        function check2() {
            if (!chk2)
                chk2 = true;
            else
                chk2 = false;
            if(chk1 && chk2 && chk3){
                document.getElementById("ch4").checked = true;
                chk4 = true;
            }
        }
        function check3() {
            if (!chk3)
                chk3 = true;
            else
                chk3 = false;
            if(chk1 && chk2 && chk3){
                document.getElementById("ch4").checked = true;
                chk4 = true;
            }
        }
        function check4() {            
            var n1 = document.getElementById("agree1");
            var n2 = document.getElementById("agree2");
            var n3 = document.getElementById("agree3");
            if (!chk4) {
                n1.checked = true;
                n2.checked = true;
                n3.checked = true;
                chk1 = true;
                chk2 = true;
                chk3 = true;
                chk4 = true;
            }
            else if (chk4) {
                n1.checked = false;
                n2.checked = false;
                n3.checked = false;
                chk1 = false;
                chk2 = false;
                chk3 = false;
                chk4 = false;
            }

        }