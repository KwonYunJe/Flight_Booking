<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- BootStrap-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<!-- MDB -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css">

<style type="text/css">
	* {
  font-family: 'Jua', sans-serif;
}


html,
body {
  margin: 0;
  padding: 0;
  height: 100%;
  background-position: center;
  background-size: cover;
}

h1 {
  position: relative;
  top: 100%;
  left: 0%;
}

button {
  width: 180px;
}

.wrapper {
  display: flex;
  flex-direction: column;
  height: 100%;
}
#content {
  flex: 1;
  margin: 0;
  padding: 0;
  height: 100%;
}

#footer {
  padding: 30px 0;
}

#att_zone {
  padding: 10px;
  border-style: solid;
  border-color: white;
}

#att_zone:empty:before {
  content: attr(data-placeholder);
  color: rgb(0, 255, 255);
  font-size: 0.9em;
}

#card-header {
  padding: 30px 15px;
  color: rgb(0, 52, 255);

}

#myTabContent {
  padding: 30px 15px 45px 15px;
}

.card-title {
  padding: 0px 0px;
}

.card-body {
 padding: 8px;
}

.col-1 {
  width: 15%;
}

.only-sr {
  overflow: hidden !important;
  position: absolute !important;
  left: -9999px !important;
  width: 1px;
  height: 1px;
}

/* form | radio */
.radio-items {
  display: table;
  width: 100%;
  border: 1px solid #454a60;
  border-radius: 4px;
  box-sizing: border-box;
  padding : 15px;
}
.radio-items > div {
  display: table-cell;
  height: 49px;
  line-height: 49px;
  border-left: 1px solid #454a60;
  text-align: center;
}
.radio-items > div:first-child {
  border-left: none;

}
.radio-items label {
  display: block;
  width: 100%;
  height: 100%;
  color: #454a60;
  vertical-align: middle;
  box-sizing: border-box;
  cursor: pointer;
}
.radio-items input[type=radio]:checked + label {
  background-color: #454a60;
  color: #fff;
}

#loading {
	width: 100%;
	height: 100%;
	right: 0%;
	bottom: 0%;
	position: fixed;
	display: block;
	opacity: 0.8;
	background: #34495E;
	background-position: center;
    background-size: cover;
	z-index: 99;
	text-align: center;
}

#loading > img {
	position: relative;
	top: 25%;
	left: 0%;
	z-index: 100;
}

#myTab{
	left: 50%;
	font-size: 50px;
}

.nav-tabs .nav-link {
    border: solid transparent;
    border-width: 0 0 2px;
    border-radius: 0;
    text-transform: uppercase;
    line-height: 1;
    font-weight: 500;
    font-size: 12px;
    color: #ffffff;
    padding: 17px 29px 16px;
}
	
</style>

<script type="text/javascript">
function hasClass(target, className) {
	  if( (' ' + target.className + ' ').replace(/[\n\t]/g, ' ').indexOf(' ' + className + ' ') > -1 ) return true;
	  return false;
	}
	function removeClass(target, className){
	    var elClass = ' ' + target.className + ' ';
	    while(elClass.indexOf(' ' + className + ' ') !== -1){
	         elClass = elClass.replace(' ' + className + ' ', '');
	    }
	    target.className = elClass;
	}
	function addClass(target, className){
	    target.className += ' ' + className;
	}

	if( hasClass( document.getElementsByTagName('jsp')[0], 'ie8' ) ) { // ie8 일 경우
	    var radios = document.querySelectorAll('input[type="radio"]'),
	        i,
	        len = radios.length;
	　
	    for( i = 0; i < len; i++ ) {
	        radios[i].attachEvent('onchange', function(e) {
	            var siblingsChecked = this.parentNode.parentNode.querySelector('.checked'); // 이전 checked 버튼

	            removeClass(siblingsChecked, 'checked'); // checked 삭제
	            addClass(this, 'checked'); // checked 부여
	        });
	    }
	}

</script>
</head>
<body>

<div id="content" class="bg-image"  style="background-color: rgba(0, 0, 0, 0.2);">
      <div class="container d-flex align-items-center justify-content-center text-center h-100">
<!--        <h1 class="text-white text-center mb-8">당신은 어떤 성향의 사용자이신가요?</h1>-->
        <div>
          <h1 class="text-white text-center mb-8">관광지를 추천해 드릴께요! <br>(현재 제주도 한정 운영)</h1>
          <div class="card text-center m-5 h-100">
            <div class="card-header-light " id="card-header" style="background-color: #2D8CFF;">
              <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist" >
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="first-tab" data-bs-toggle="tab" data-bs-target="#first"
                    type="button" role="tab" aria-controls="first" aria-selected="true">1번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="second-tab" data-bs-toggle="tab" data-bs-target="#second" type="button"
                    role="tab" aria-controls="second" aria-selected="false">2번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="third-tab" data-bs-toggle="tab" data-bs-target="#third" type="button"
                    role="tab" aria-controls="third" aria-selected="false">3번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="fourth-tab" data-bs-toggle="tab" data-bs-target="#fourth" type="button"
                    role="tab" aria-controls="fourth" aria-selected="false">4번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="fifth-tab" data-bs-toggle="tab" data-bs-target="#fifth" type="button"
                    role="tab" aria-controls="fifth" aria-selected="false">5번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="sixth-tab" data-bs-toggle="tab" data-bs-target="#sixth" type="button"
                    role="tab" aria-controls="sixth" aria-selected="false">6번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="seventh-tab" data-bs-toggle="tab" data-bs-target="#seventh" type="button"
                    role="tab" aria-controls="seventh" aria-selected="false">7번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="eighth-tab" data-bs-toggle="tab" data-bs-target="#eighth" type="button"
                    role="tab" aria-controls="eighth" aria-selected="false">8번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="ninth-tab" data-bs-toggle="tab" data-bs-target="#ninth" type="button"
                    role="tab" aria-controls="ninth" aria-selected="false">9번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="tenth-tab" data-bs-toggle="tab" data-bs-target="#tenth" type="button"
                    role="tab" aria-controls="tenth" aria-selected="false">10번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="eleventh-tab" data-bs-toggle="tab" data-bs-target="#eleventh" type="button"
                    role="tab" aria-controls="eleventh" aria-selected="false">11번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="twelfth-tab" data-bs-toggle="tab" data-bs-target="#twelfth" type="button"
                    role="tab" aria-controls="twelfth" aria-selected="false">12번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="thirteenth-tab" data-bs-toggle="tab" data-bs-target="#thirteenth" type="button"
                    role="tab" aria-controls="thirteenth" aria-selected="false">13번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="fourteenth-tab" data-bs-toggle="tab" data-bs-target="#fourteenth" type="button"
                    role="tab" aria-controls="fourteenth" aria-selected="false">14번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="fifteenth-tab" data-bs-toggle="tab" data-bs-target="#fifteenth" type="button"
                    role="tab" aria-controls="fifteenth" aria-selected="false">15번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="sixteenth-tab" data-bs-toggle="tab" data-bs-target="#sixteenth" type="button"
                    role="tab" aria-controls="sixteenth" aria-selected="false">16번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="seventeenth-tab" data-bs-toggle="tab" data-bs-target="#seventeenth" type="button"
                    role="tab" aria-controls="seventeenth" aria-selected="false">17번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="eighteenth-tab" data-bs-toggle="tab" data-bs-target="#eighteenth" type="button"
                    role="tab" aria-controls="eighteenth" aria-selected="false">18번 질문</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="nineteenth-tab" data-bs-toggle="tab" data-bs-target="#nineteenth" type="button"
                    role="tab" aria-controls="nineteenth" aria-selected="false">19번 질문</button>
                </li>
              </ul>

            </div>
            <form action="result" id="quest" method="POST" onsubmit="False">
              <div class="tab-content card-body h-30" id="myTabContent" style="background-color: #e3f2fd;">
                <div class="tab-pane fade show active" id="first" role="tabpanel" aria-labelledby="first-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">1. 나는 작은 일에서 매우 민감하다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="a1" class="only-sr" type="radio" name="survay1" value="1">
                        <label for="a1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="a2" class="only-sr" type="radio" name="survay1" value="2">
                        <label for="a2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="a3" class="only-sr" type="radio" name="survay1" value="3">
                        <label for="a3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="a4" class="only-sr" type="radio" name="survay1" value="4">
                        <label for="a4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="a5" class="only-sr" type="radio" name="survay1" value="5">
                        <label for="a5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="second" role="tabpanel" aria-labelledby="second-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">2. 나는 슬프고 무력감에 빠져있다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="b1" class="only-sr" type="radio" name="survay2" value="1">
                        <label for="b1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="b2" class="only-sr" type="radio" name="survay2" value="2">
                        <label for="b2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="b3" class="only-sr" type="radio" name="survay2" value="3">
                        <label for="b3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="b4" class="only-sr" type="radio" name="survay2" value="4">
                        <label for="b4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="b5" class="only-sr" type="radio" name="survay2" value="5">
                        <label for="b5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="third" role="tabpanel" aria-labelledby="third-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">3. 나는 열등감, 강박감이 심한 편이다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="c1" class="only-sr" type="radio" name="survay3" value="1">
                        <label for="c1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="c2" class="only-sr" type="radio" name="survay3" value="2">
                        <label for="c2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="c3" class="only-sr" type="radio" name="survay3" value="3">
                        <label for="c3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="c4" class="only-sr" type="radio" name="survay3" value="4">
                        <label for="c4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="c5" class="only-sr" type="radio" name="survay3" value="5">
                        <label for="c5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="fourth" role="tabpanel" aria-labelledby="fourth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">4. 나는 다른 사람들을 잘 이끄는 편이다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="d1" class="only-sr" type="radio" name="survay4" value="1">
                        <label for="d1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="d2" class="only-sr" type="radio" name="survay4" value="2">
                        <label for="d2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="d3" class="only-sr" type="radio" name="survay4" value="3">
                        <label for="d3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="d4" class="only-sr" type="radio" name="survay4" value="4">
                        <label for="d4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="d5" class="only-sr" type="radio" name="survay4" value="5">
                        <label for="d5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="fifth" role="tabpanel" aria-labelledby="fifth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">5. 나는 사람을 잘 조직하고 관리한다고 생각한다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="e1" class="only-sr" type="radio" name="survay5" value="1">
                        <label for="e1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="e2" class="only-sr" type="radio" name="survay5" value="2">
                        <label for="e2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="e3" class="only-sr" type="radio" name="survay5" value="3">
                        <label for="e3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="e4" class="only-sr" type="radio" name="survay5" value="4">
                        <label for="e4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="e5" class="only-sr" type="radio" name="survay5" value="5">
                        <label for="e5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="sixth" role="tabpanel" aria-labelledby="sixth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">6. 나는 사람들과 잘 어울린다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="f1" class="only-sr" type="radio" name="survay6" value="1">
                        <label for="f1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="f2" class="only-sr" type="radio" name="survay6" value="2">
                        <label for="f2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="f3" class="only-sr" type="radio" name="survay6" value="3">
                        <label for="f3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="f4" class="only-sr" type="radio" name="survay6" value="4">
                        <label for="f4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="f5" class="only-sr" type="radio" name="survay6" value="5">
                        <label for="f5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="seventh" role="tabpanel" aria-labelledby="seventh-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">7. 나는 나보다는 남을 먼저 생각한다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="g1" class="only-sr" type="radio" name="survay7" value="1">
                        <label for="g1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="g2" class="only-sr" type="radio" name="survay7" value="2">
                        <label for="g2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="g3" class="only-sr" type="radio" name="survay7" value="3">
                        <label for="g3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="g4" class="only-sr" type="radio" name="survay7" value="4">
                        <label for="g4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="g5" class="only-sr" type="radio" name="survay7" value="5">
                        <label for="g5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="eighth" role="tabpanel" aria-labelledby="eighth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">8. 나는 남을 존중하고 나를 높이지 않는다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="h1" class="only-sr" type="radio" name="survay8" value="1">
                        <label for="h1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="h2" class="only-sr" type="radio" name="survay8" value="2">
                        <label for="h2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="h3" class="only-sr" type="radio" name="survay8" value="3">
                        <label for="h3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="h4" class="only-sr" type="radio" name="survay8" value="4">
                        <label for="h4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="h5" class="only-sr" type="radio" name="survay8" value="5">
                        <label for="h5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="ninth" role="tabpanel" aria-labelledby="ninth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">9. 나는 사람을 늘 따뜻하게 대한다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="i1" class="only-sr" type="radio" name="survay9" value="1">
                        <label for="i1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="i2" class="only-sr" type="radio" name="survay9" value="2">
                        <label for="i2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="i3" class="only-sr" type="radio" name="survay9" value="3">
                        <label for="i3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="i4" class="only-sr" type="radio" name="survay9" value="4">
                        <label for="i4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="i5" class="only-sr" type="radio" name="survay9" value="5">
                        <label for="i5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="tenth" role="tabpanel" aria-labelledby="tenth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">10. 나는 새로운 체험을 좋아한다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="j1" class="only-sr" type="radio" name="survay10" value="1">
                        <label for="j1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="j2" class="only-sr" type="radio" name="survay10" value="2">
                        <label for="j2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="j3" class="only-sr" type="radio" name="survay10" value="3">
                        <label for="j3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="j4" class="only-sr" type="radio" name="survay10" value="4">
                        <label for="j4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="j5" class="only-sr" type="radio" name="survay10" value="5">
                        <label for="j5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="eleventh" role="tabpanel" aria-labelledby="eleventh-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">11. 나는 문화생활 및 여가를 즐긴다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="k1" class="only-sr" type="radio" name="survay11" value="1">
                        <label for="k1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="k2" class="only-sr" type="radio" name="survay11" value="2">
                        <label for="k2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="k3" class="only-sr" type="radio" name="survay11" value="3">
                        <label for="k3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="k4" class="only-sr" type="radio" name="survay11" value="4">
                        <label for="k4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="k5" class="only-sr" type="radio" name="survay11" value="5">
                        <label for="k5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="twelfth" role="tabpanel" aria-labelledby="twelfth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">12. 나는 늘 새로운 것을 생각한다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="l1" class="only-sr" type="radio" name="survay12" value="1">
                        <label for="l1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="l2" class="only-sr" type="radio" name="survay12" value="2">
                        <label for="l2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="l3" class="only-sr" type="radio" name="survay12" value="3">
                        <label for="l3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="l4" class="only-sr" type="radio" name="survay12" value="4">
                        <label for="l4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="l5" class="only-sr" type="radio" name="survay12" value="5">
                        <label for="l5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="thirteenth" role="tabpanel" aria-labelledby="thirteenth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">13. 나는 운동을 좋아한다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="m1" class="only-sr" type="radio" name="survay13" value="1">
                        <label for="m1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="m2" class="only-sr" type="radio" name="survay13" value="2">
                        <label for="m2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="m3" class="only-sr" type="radio" name="survay13" value="3">
                        <label for="m3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="m4" class="only-sr" type="radio" name="survay13" value="4">
                        <label for="m4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="m5" class="only-sr" type="radio" name="survay13" value="5">
                        <label for="m5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="fourteenth" role="tabpanel" aria-labelledby="fourteenth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">14.나는 여행이 나의 지식을 풍부하게 해주었으면 좋겠다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="n1" class="only-sr" type="radio" name="survay14" value="1">
                        <label for="n1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="n2" class="only-sr" type="radio" name="survay14" value="2">
                        <label for="n2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="n3" class="only-sr" type="radio" name="survay14" value="3">
                        <label for="n3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="n4" class="only-sr" type="radio" name="survay14" value="4">
                        <label for="n4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="n5" class="only-sr" type="radio" name="survay14" value="5">
                        <label for="n5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="fifteenth" role="tabpanel" aria-labelledby="fifteenth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">15. 나는 여행을 통해 학습 경험을 하고 싶다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="o1" class="only-sr" type="radio" name="survay15" value="1">
                        <label for="o1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="o2" class="only-sr" type="radio" name="survay15" value="2">
                        <label for="o2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="o3" class="only-sr" type="radio" name="survay15" value="3">
                        <label for="o3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="o4" class="only-sr" type="radio" name="survay15" value="4">
                        <label for="o4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="o5" class="only-sr" type="radio" name="survay15" value="5">
                        <label for="o5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="sixteenth" role="tabpanel" aria-labelledby="sixteenth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">16. 나는 여행을 통해 일상의 스트레스로부터 벗어나고 싶다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="p1" class="only-sr" type="radio" name="survay16" value="1">
                        <label for="p1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="p2" class="only-sr" type="radio" name="survay16" value="2">
                        <label for="p2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="p3" class="only-sr" type="radio" name="survay16" value="3">
                        <label for="p3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="p4" class="only-sr" type="radio" name="survay16" value="4">
                        <label for="p4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="p5" class="only-sr" type="radio" name="survay16" value="5">
                        <label for="p5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="seventeenth" role="tabpanel" aria-labelledby="seventeenth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">17. 나는 여행을 통해 자아를 회복하고, 나를 찾아가고 싶다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="q1" class="only-sr" type="radio" name="survay17" value="1">
                        <label for="q1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="q2" class="only-sr" type="radio" name="survay17" value="2">
                        <label for="q2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="q3" class="only-sr" type="radio" name="survay17" value="3">
                        <label for="q3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="q4" class="only-sr" type="radio" name="survay17" value="4">
                        <label for="q4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="q5" class="only-sr" type="radio" name="survay17" value="5">
                        <label for="q5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="eighteenth" role="tabpanel" aria-labelledby="eighteenth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">18. 나는 여유로운 휴식을 위한 여행을 선호한다.</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="r1" class="only-sr" type="radio" name="survay18" value="1">
                        <label for="r1">매우 그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="r2" class="only-sr" type="radio" name="survay18" value="2">
                        <label for="r2">그렇지 않다.</label>
                      </div>
                      <div class="col-1">
                        <input id="r3" class="only-sr" type="radio" name="survay18" value="3">
                        <label for="r3">보통이다.</label>
                      </div>
                      <div class="col-1">
                        <input id="r4" class="only-sr" type="radio" name="survay18" value="4">
                        <label for="r4">그렇다.</label>
                      </div>
                      <div class="col-1">
                        <input id="r5" class="only-sr" type="radio" name="survay18" value="5">
                        <label for="r5">매우 그렇다.</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="nineteenth" role="tabpanel" aria-labelledby="nineteenth-tab">
                  <div class="survays">
                    <div class="card-title">
                      <span class="survaysName">마지막 질문! 현재 기분은 어떠신가요?</span>
                    </div>
                    <br>
                    <div class="radio-items">
                      <div class="col-1">
                        <input id="s1" class="only-sr" type="radio" name="survay19" value="1">
                        <label for="s1">기쁨</label>
                      </div>
                      <div class="col-1">
                        <input id="s2" class="only-sr" type="radio" name="survay19" value="2">
                        <label for="s2">슬픔</label>
                      </div>
                      <div class="col-1">
                        <input id="s3" class="only-sr" type="radio" name="survay19" value="3">
                        <label for="s3">분노</label>
                      </div>
                      <div class="col-1">
                        <input id="s4" class="only-sr" type="radio" name="survay19" value="4">
                        <label for="s4">평범</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>

            <button class="survay-btn btn btn-primary btn-lg" id="quest_answer" type="button" width="180px">성향 파악 완료</button>
          </div>
      </div>
    </div>
    
    <script>
  //버튼을 클릭하면
    $("button.survay-btn").click(function () {
      var error = "";
      $("div.survays").each(function () {
        //해당설문이름 가져오기
        var survaysName =
          $(this)
            .find("span.survaysName")
            .text()
            .slice(0, $(this).find("span.survaysName").text().indexOf(".")) +
          "번 설문조사";
        //체크한 것들
        var checkBtn = $(this).find('input[type="radio"]:checked');
        //체크하지 않았으면
       if (!checkBtn.length) {
          //경고문저장
          error += survaysName + "를 선택하시기 바랍니다.\n";
        } 
      });

      if (error) {
                alert(error);
      }
      else {
                document.getElementById('quest').submit();
      }
    });
      
</script>


</body>
</html>