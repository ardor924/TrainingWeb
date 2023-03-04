<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 부트스트랩 캐러셀 배너 -->
<div id="carouselExampleDark" class="carousel slide " data-bs-ride="carousel">
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
      	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      	<div class="carousel-item active" data-bs-interval="10000">
        	<img src="${banner1}" class="d-block w-100" alt="...">
        	<div class="carousel-caption d-none d-md-block">
        		<h2>개발자 스터디 커뮤니티</h2>
          		<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. </div>
        	</div>
      	</div>
      	<div class="carousel-item" data-bs-interval="2000">
        	<img src="${banner2}" class="d-block w-100" alt="...">
        	<div class="carousel-caption d-none d-md-block">
          	<h2>코린이를 위한 개발자 스터디 게시판</h2>
          	<div class="banner-button-wrap">
            	<div class="button">
                	<a class="btn btn-primary btn-sm " href="#" role="button">Button1</a>
            	</div>
            	<div class="button">
                	<a class="btn btn-warning btn-sm " href="#" role="button">Button2</a>
            	</div>
            	<div class="button">
                	<a class="btn btn-danger btn-sm " href="#" role="button">Button3</a>
            	</div>
        	</div>
        	</div>
      	</div>
      	<div class="carousel-item">
        	<img src="${banner3}" class="d-block w-100" alt="...">
        	<div class="carousel-caption d-none d-md-block">
          	<h2>Third slide label</h2>
          	<div>Some representative placeholder content for the third slide.</div>
        	</div>
      	</div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
</div>