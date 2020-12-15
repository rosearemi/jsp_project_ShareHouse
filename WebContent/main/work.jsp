<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<%@ include file="../include/header.jsp" %>
	



		<div class="owl-carousel-wrapper">



			<div class="box-92819 shadow-lg">


				<div>
					<h1 class=" mb-3 text-black">쉐어하우스 소개</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Voluptatibus quam, ratione earum.</p>
				</div>

			</div>

			<div class="ftco-cover-1"
				style="background-image: url('images/hero_1.jpg');"></div>
		</div>

		 <div class="site-section">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-4">
            <div class="h-100 bg-white box-29291">
              <h2 class="heading-39291">Company History</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo mollitia id ea ab in! Nam eligendi distinctio, vitae.</p>
              <p>Alias odit ipsam quas unde obcaecati molestiae consequatur numquam cupiditate perferendis facere, nulla nemo id, accusantium corrupti tempora.</p>

             
            </div>
          </div>
          <div class="col-lg-8">
            <div class="owl-carousel owl-3">
              <img src="images/about_1.jpg" alt="Image" class="img-fluid">
              <img src="images/about_2.jpg" alt="Image" class="img-fluid">
              <img src="images/about_3.jpg" alt="Image" class="img-fluid">
            </div>
          </div>
        </div>
      </div>
    </div>


		<div class="site-section">
			<div class="container">
				<div class="row mb-5 align-items-center">
					<div class="col-md-7">
						<h2 class="heading-39291 mb-0">주변 시설</h2>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-6">
						<div class="media-02819">
							<a href="https://map.naver.com/v5/search/%EB%B8%94%EB%9E%99%EC%97%85%EC%BB%A4%ED%94%BC/place/38264566?placeSearchOption=fromNxList=true%26noredirect=1%26entry=pll&c=14363095.6698110,4185443.2485543,13,0,0,0,dh&placePath=%2Fhome%3Fentry=pll">
							<img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
							<h3>
								<a href="#">카페 1</a>
							</h3>
							<span>부산광역시 부산진구</span>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="media-02819">
							<a href="https://map.naver.com/v5/search/GS25%20%EC%84%9C%EB%A9%B4%EC%A4%91%EC%95%99%EB%8C%80%EB%A1%9C%EC%A0%90/place/1741762647?c=14366326.3285846,4184769.6472426,15,0,0,0,dh">
							<img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
							<h3>
								<a href="#">편의점1</a>
							</h3>
							<span>부산광역시 부산진구</span>
						</div>
					</div>

					<div class="col-lg-6">
						<div class="media-02819">
							<img src="images/img_3.jpg" alt="Image" class="img-fluid">
							<h3>
								<a href="#">셀프 빨래방</a>
							</h3>
							<span>부산광역시 부산진구</span>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="media-02819">
							<img src="images/img_4.jpg" alt="Image" class="img-fluid">
							<h3>
								<a href="#">지하철 역</a>
							</h3>
							<span>부산광역시 부산진구</span>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row mb-5 align-items-center">
					<div class="col-md-7">
						<h2 class="heading-39291 mb-0">위치</h2>
					</div>
				</div>
		
		<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
 <script>
  function initialize() {
   var myLatlng = new google.maps.LatLng(35.156166, 129.059633);
   var mapOptions = {
        zoom: 17,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
   }
   var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
   var marker = new google.maps.Marker({
       position: myLatlng,
       map: map,
       title: "ShareHouse"
});
   
   var infowindow = new google.maps.InfoWindow(
           {
            content: "<h1>ShareHouse</h1>",
            maxWidth: 300
           }
);

google.maps.event.addListener(marker, 'click', function() {
 infowindow.open(map, marker);
});
   
  }
  
  
 </script>
 <body onload="initialize()">
 <div id="map_canvas"style="width:500px; height:300px;"></div>
</body>
		
				<div class="row">
					<div class="col-lg-6">
						<div class="media-02819">
							<h3>
								<a href="#">주소</a>
							</h3>
							<span>부산 부산진구 중앙대로 708 부산파이낸스센터 4층<br> 버스: 11번 22번
								33번 <br> 지하철 2호선 서면역
							</span>
						</div>
					</div>

				</div>
			</div>
		</div>






	  <div class="site-section section-4">
      <div class="container">

        <div class="row justify-content-center text-center">
          <div class="col-md-7">
            <div class="slide-one-item owl-carousel">
              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p>동해물과 백두산이</p>
                <cite><span class="text-black">고희선</span> &mdash; <span class="text-muted">no1</span></cite>
              </blockquote>

              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p>마르고 닳도록</p>
                <cite><span class="text-black">정수미</span> &mdash; <span class="text-muted">no2</span></cite>
              </blockquote>

              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p> 하느님이 보우하사</p>
                <cite><span class="text-black">이동우</span> &mdash; <span class="text-muted">no3</span></cite>
              </blockquote>
            </div>
          </div>
        </div>
      </div>
    </div>
			</div>
		</div>



<%@ include file="../include/footer.jsp" %>