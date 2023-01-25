<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	
</head>
<body>
	
	<span class='span_dataset1'></span>
	
	<div id="content" class="bg-image  d-flex align-items-center justify-content-center" style="background-color: rgba(0, 0, 0, 0.2);">
      <div class="container">
        <h1 class="text-white text-center mb-8">추천 여행지</h1>
        <div class="row row-cols-1 row-cols-md-3 g-4">
          <div class="col">
            <div class="card mb-3">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="" class="img0 img-fluid rounded-start" style="height: 140px;" onload="resize(this)">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title title0" ></h5>
                    <p class="card-text">
                    
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card mb-3">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="" class="img1 img-fluid rounded-start" style="height: 140px;" onload="resize(this)">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title title1"></h5>
                    <p class="card-text">
                      
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card mb-3">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="" class="img2 img-fluid rounded-start" style="height: 140px;" onload="resize(this)">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title title2"></h5>
                    <p class="card-text">
                      
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card mb-3">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="" class="img3 img-fluid rounded-start" style="height: 140px;" onload="resize(this)">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title title3"></h5>
                    <p class="card-text">
                      
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card mb-3">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="" class="img4 img-fluid rounded-start" style="height: 140px;" onload="resize(this)">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title title4"></h5>
                    <p class="card-text">
                      
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card mb-3">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="" class="img5 img-fluid rounded-start" style="height: 140px;" onload="resize(this)">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title title5"></h5>
                    <p class="card-text">
                      
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
	<script>

	
    $.ajax({
        method: "POST",
        // url: "https://dapi.kakao.com/v2/search/blog",
        url: "http://127.0.0.1:5050/plus",  // flask 서버로 던진다.
        // data: { review : ["리뷰1","리뷰2","리뷰3"]}
        data: {"x" : "${survaylist}"},
        traditional: true,
        async: false,
        
        // headers: {Authorization: "KakaoAK 9068483aa30e9a2150dad3527a5295a4"}
    })
        .done(function (args) {
        	
            
            for (var i = 0; i < 6; i++) {
            	$('.img' + i).attr("src", args.place[1][i]);
            	$('.title' + i).text(args.place[0][i]);
			}
        });
</script>
	
</body>
</html>