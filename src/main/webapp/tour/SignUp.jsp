<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="userCreate">
		ID: <input type="text" name="userid" id="userid" value="yunje2"><font
			id="id_feedback" size="2"></font> <br>
		PW: <input type="password" id="password" name="password" value="1234"><br>
		PW확인: <input type="password" id="repassword" name="repassword" value="1234"><font id="pw_feedback" size="2"></font><br>
		Name:<input type="text" name="name" value="KWONYUNJE"><br>
		Tel: <input type="text" name="tel" value="010-1111-1111"><br>
		Gender: <input type="text" name="gender" value="male"><br>
		Nickname: <input type="text" name="nickname" id="nickname"
			value="YUEIS"><font id="nick_feedback" size="2"></font> <br>
		<button type="submit" id="signUpBtn" disabled="disabled">회원가입</button>
	</form>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
			var idCheckResult = "false";
			var nickCheckResult = "false";
			var pwCheckResult = "false";
			$("#signUpBtn").attr("disabled", true);	/* id중복체크가 이루어지기 전까지 회원가입 버튼을 비활성화  */
				$('#userid').keyup(function() {
					let useridval = $("#userid").val();	/*userid의 value를 가져와서 useridval 넣음  */
					
					$.ajax({
						url : "idCheck",	/* Controller의 idCheck */
						type : "post",
						data : {	
							userid : useridval	/* kye는 userid 값은 useridval */
						},
						dataType : 'json',
						success : function(result) {		
							if (result.userid1 == "null") {		/* 결과값중 userid1키의 값이 문자열 "null"일 경우 */
								$("#id_feedback").html('사용할 수 있는 아이디입니다.');
								$("#id_feedback").attr('color', '#2fb380');
								idCheckResult = "true";
								if(idCheckResult == "true" && nickCheckResult == "true" && pwCheckResult == "true"){
									if($("#signUpBtn").prop("disabled")==true){
										  $("#signUpBtn").attr("disabled", false);
										}
								}else{
									if($("#signUpBtn").prop("disabled")==false){
										  $("#signUpBtn").attr("disabled", true);
										}
								}
							} else {
								$("#id_feedback").html('이미 사용중인 아이디입니다.');
								$("#id_feedback").attr('color', '#dc3545');
								idCheckResult = "false";
								if(idCheckResult == "true" && nickCheckResult == "true"  && pwCheckResult == "true"){
									if($("#signUpBtn").prop("disabled")==true){
										  $("#signUpBtn").attr("disabled", false);
										}
								}else{
									if($("#signUpBtn").prop("disabled")==false){
										  $("#signUpBtn").attr("disabled", true);
										}
								}
							}
						},
						error : function(request, status, error) {
							console.log("code: " + request.status)
							console.log("message: " + request.responseText)	
							console.log("error: " + error);
							alert("서버요청실패");
						},
						
					})
					});
				/* ========================================================================== */
					$('#nickname').keyup(function(){
						let nicknameval = $("#nickname").val();	/*userid의 value를 가져와서 useridval 넣음  */
						
						$.ajax({
							url : "nickCheck",	/* Controller의 nickCheck */
							type : "post",
							data : {	
								nickname : nicknameval	/* kye는 nickname 값은 nicknameval */
							},
							dataType : 'json',
							success : function(result) {		
								if (result.nickname1 == "null") {		/* 결과값중 userid1키의 값이 문자열 "null"일 경우 */
									$("#nick_feedback").html('사용할 수 있는 닉네임입니다.');
									$("#nick_feedback").attr('color', '#2fb380');
									nickCheckResult = "true";
									if(idCheckResult == "true" && nickCheckResult == "true" && pwCheckResult == "true"){
										if($("#signUpBtn").prop("disabled")==true){
											  $("#signUpBtn").attr("disabled", false);
											}
									}else{
										if($("#signUpBtn").prop("disabled")==false){
											  $("#signUpBtn").attr("disabled", true);
											}
									}
									
								} else {
									$("#nick_feedback").html('이미 사용중인 닉네임입니다.');
									$("#nick_feedback").attr('color', '#dc3545');
									nickCheckResult = "false";
									if(idCheckResult == "true" && nickCheckResult == "true" && pwCheckResult == "true"){
										if($("#signUpBtn").prop("disabled")==true){
											  $("#signUpBtn").attr("disabled", false);
											}
									}else{
										if($("#signUpBtn").prop("disabled")==false){
											  $("#signUpBtn").attr("disabled", true);
											}
									}
								}
							},
							error : function(request, status, error) {
								console.log("code: " + request.status)
								console.log("message: " + request.responseText)
								console.log("error: " + error);
								alert("서버요청실패");
							}
							
					})
					});
					/* ========================================================================== */
					$('#repassword').keyup(function(){
						var pw = $('#password').val();
						var repw = $('#repassword').val();
						if(pw == repw){
							$("#pw_feedback").html('일치');
							$("#pw_feedback").attr('color', '#2fb380');
							pwCheckResult = "true";
							if(idCheckResult == "true" && nickCheckResult == "true" && pwCheckResult == "true"){
								if($("#signUpBtn").prop("disabled")==true){
									  $("#signUpBtn").attr("disabled", false);
									}
							}else{
								if($("#signUpBtn").prop("disabled")==false){
									  $("#signUpBtn").attr("disabled", true);
									}
							}
						}else{
							$("#pw_feedback").html('불일치');
							$("#pw_feedback").attr('color', '#dc3545');
							pwCheckResult = "false";
							if(idCheckResult == "true" && nickCheckResult == "true" && pwCheckResult == "true"){
								if($("#signUpBtn").prop("disabled")==true){
									  $("#signUpBtn").attr("disabled", false);
									}
							}else{
								if($("#signUpBtn").prop("disabled")==false){
									  $("#signUpBtn").attr("disabled", true);
									}
							}
						}
					})
					$('#password').keyup(function(){
						var pw = $('#password').val();
						var repw = $('#repassword').val();
						if(pw == repw){
							$("#pw_feedback").html('일치');
							$("#pw_feedback").attr('color', '#2fb380');
							pwCheckResult = "true";
							if(idCheckResult == "true" && nickCheckResult == "true" && pwCheckResult == "true"){
								if($("#signUpBtn").prop("disabled")==true){
									  $("#signUpBtn").attr("disabled", false);
									}
							}else{
								if($("#signUpBtn").prop("disabled")==false){
									  $("#signUpBtn").attr("disabled", true);
									}
							}
						}else{
							$("#pw_feedback").html('불일치');
							$("#pw_feedback").attr('color', '#dc3545');
							pwCheckResult = "false";
							if(idCheckResult == "true" && nickCheckResult == "true" && pwCheckResult == "true"){
								if($("#signUpBtn").prop("disabled")==true){
									  $("#signUpBtn").attr("disabled", false);
									}
							}else{
								if($("#signUpBtn").prop("disabled")==false){
									  $("#signUpBtn").attr("disabled", true);
									}
							}
						}
					})
			</script>
</body>
</html>