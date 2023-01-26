<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>    
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>With Us</title>

     <!-- Custom fonts for this template-->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

	<!-- Favicons -->
	<link href="../resources/img/icon.png" rel="icon">
	<link href="../resources/img/apple-touch-icon.png" rel="apple-touch-icon">
	
    <!-- Custom styles for this template-->
    <link href="../resources/css/sb-admin-2.css" rel="stylesheet">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">계정을 만들어 보세요!</h1>
                            </div>
                            <form class="user" action="userCreate">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="name"
                                            placeholder="Name">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" name="nickname" id="nickname"
                                            placeholder="Nickname">
                                    <font id="nick_feedback" size="2"></font>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" name="userid" id="userid"
                                        placeholder="Email Address">
                                    <font id="id_feedback" size="2"></font>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            name="password" id="password" placeholder="Password">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            name="repassword" id="repassword" placeholder="Repeat Password">
                                    <font id="pw_feedback" size="2"></font>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            name="gender" placeholder="Gender">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            name="tel" placeholder="Tel">
                                    </div>
                                </div>
                                <input type="submit" value="계정 등록" id="signUpBtn" disabled="disabled" class="btn btn-primary btn-user btn-block"/>
                                    
                                <hr>
                                <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">비밀번호를 잊어버리셨나요?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.jsp">이미 계정이 있으신가요?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
    <script type="text/javascript">
    var idCheckResult = "false";
	var nickCheckResult = "false";
	var pwCheckResult = "false";
	
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
	</script>

    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>
</body>

</html>