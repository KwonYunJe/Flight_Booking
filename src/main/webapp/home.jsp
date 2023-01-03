<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<script type="text/javascript">
var li2 = document.getElementsByClassName("li");

function handleClick(event) {
  console.log(event.target);
  // console.log(this);
  // 콘솔창을 보면 둘다 동일한 값이 나온다

  console.log(event.target.classList);

  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < li2.length; i++) {
      li2[i].classList.remove("clicked");
    }

    event.target.classList.add("clicked");
  }
}

function init() {
  for (var i = 0; i < li2.length; i++) {
    li2[i].addEventListener("click", handleClick);
  }
}

init();

</script>

<style type="text/css">

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    background-color: #333;
}
ul:after{
    content:'';
    display: block;
    clear:both;
}
li {
	width:50%;
    float: left;
}
li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #555;
    color: white;
}

.clicked{
	color:blue;
}



#btnArea {
	background-color: blue;
	color: white;
	height: auto;
}

#menu {
	background-color: gray;
	width: 20%;
	height: auto;
	min-height: 800px;
	float: left;
}

#contents {
	background-color: purple;
	width: 80%;
	height: auto;
	min-height: 800px;
	float: left;
}
</style>
</head>
<body>
<div id="btnArea">
	<nav>
                <ul>
                        <li><a class="li2" href="#menu" >항공권 검색</a></li>
                        <li><a class="li2" href="#contents" >여행지 커뮤니티 및 정보</a></li>
                </ul>
        </nav>
</div>
<div id="functionScreen">
	<div id = "menu">menu area</div>
	<div id = "contents">contents area</div>
</div>


</body>
</html>