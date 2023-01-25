<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
	 $(function() {
			getLocation = async () => {
				const location = await Location.getCurrentPositionAsync()
				console.log(location)
				this.setState({
					lat: location.coords.latitude,
					lng: location.coords.longitude,
				  });
				  console.log('현재위치 lat', this.state.lat);
				  console.log('현재위치 lng', process.env.MAPS_API_KEY);
		//역 지오코딩 이용해서 지역 찾기
				  axios
		          .get(
		            'https://maps.googleapis.com/maps/api/geocode/json?latlng=${this.state.lat},${this.state.lng}&key=ebb277820b6546f39506b9e2a7c26c0e',
		          ) // 위도, 경도 google maps api로 보냄
		          .then((res) => {
		            const result = res.data.results[5].formatted_address.slice(5); // 앞에 대한민국은 뺀다.
					console.log('최종 주소값', result);
					this.setState({
						location: result
					})
		          })
		          .catch((error:any) => {
		            console.log('axios 구글 maps api 에러', error);
		          });
			}
	});  
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBbSQ7yfkeab0TDeWAL0rvMtG3202T6VEw"></script>
</head>
<body>

</body>
</html>