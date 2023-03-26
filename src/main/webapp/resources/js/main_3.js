console.log("main.js3 loaded.");
console.log("project3 check");


const memberTable = document.getElementById("memberTable");
// 회원 정보 조회 비동기 통신 (AJAX)

   
  	$(function() {
		timer = setInterval( function () {
			//----------------------------------------------------------------------------------
			$.ajax ({
				"url" : "member/resetmtable",  // 요청이 전송될 URL 주소
				type: "GET",
				success : function () { // ----- (2)
				
				console.log("qkqsssssh");
				

                // 2) ul 요소 생성
                const tr = document.createElement("tr");

                // 3) li 요소 생성 * 5 + 내용 추가
                const td1 = document.createElement("td");
                td1.innerText =  member.memberEmail;
					
                

                // 4) ul에 li를 순서대로 추가
                tr.append(td1);

                // 5) div에 ul 추가
               memberTable.append(tr);

        
				}
			});
			//----------------------------------------------------------------------------------
		}, 10000); // 10초에 한번씩 받아온다.
	});
    
 /*
timer = setInterval( function () {

    $.ajax ({
  url : "member/resetmtable",
        type: "POST",
        dataType: "JSON", // dataType : 응답데이터 형식 지정
                        // -> JSON으로 지정 시 자동으로 JS객체로 변환
        success: function(member) {
			console.log(member);
			
			
			if(member != null){ // 회원 정보 존재 O

                // 2) ul 요소 생성
                const tr = document.createElement("tr");

                // 3) li 요소 생성 * 5 + 내용 추가
                const td1 = document.createElement("td");
                td.innerText = "이메일 : " + member.memberEmail;

                

                // 4) ul에 li를 순서대로 추가
                td.append(td);

                // 5) div에 ul 추가
               

            } else { // 회원 정보 존재 X

            }

        }, 
        error: function(request, status, error) {
			console.log("ajax 에러발생");
			console.log("상태코드 : " + request.status); // 404, 500
        }

    }, 1000);

});

 */
