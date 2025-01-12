<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <meta charset="UTF-8">
  <title>The Grand Budapest Hotel</title>
<jsp:include page="/Header.jsp"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/e13e35fb00.js" crossorigin="anonymous"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
  <script src="js/jquery-3.6.0.min.js"></script>
  <script src="js/slick.min.js"></script>
  <link rel="stylesheet" href="/css/slick-theme.css">
  <link rel="stylesheet" href="/css/slick.css">
  <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
  <link rel="stylesheet" href="/css/movie.css">
  <script src="js/movie.js" defer></script>
<link rel="stylesheet" href="/css/albery.css">
<script src="js/albery.js"></script>
<link rel="stylesheet" href="/css/nav-fo.css">
<!-- <link rel="stylesheet" href="css/cinema_style.css"> -->


<style>

.navbar {
  height: 72px;
  font-weight: 500;
  background-color: transparent;
  font-size: 0.875rem;
  line-height: 0.875rem;
  transition: all 300ms ease-in-out;
}

.navbar_display {
  background-color: #ffffff;
  box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.05);
}
  .back_img {
  background: url("/images/2/aaa.jpg") center top/cover no-repeat;
}
card-body {
    height: 250px;
  }
  .card-text {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 4; /* 라인수 */
    -webkit-box-orient: vertical;
    word-wrap:break-word; 
  }
</style>


</head>
<body>



  <!-- 배경 상단 백그라운드 이미지  -->
  <div class="back_img">
  
  </div>



  
  <!-- 영화  포스터 및 정보 섹션 -->
  <section id="movie">
    
    <div class="poster">
      <img src="/images/2/gg.jpg">
      
    </div>

    <!-- 태그 위치 수정-->
    <div class="about_movie">

    
      <h2>그랜드 부다페스트 호텔</h2>
      <sub>2014 · 미국</sub><br><br>
      <p>The Grand Budapest Hotel</p>
      <p>평균 ★4.5 (4,239명)</p>


      <!-- 리뷰 모달 기능 -->
      
        <!-- Button trigger modal -->
<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
  <i class="fas fa-pencil-alt"></i>  Review
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cinemaway</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h2 style="text-align: center;">리뷰 작성하기</h2>
        <form action="/review.do" method="post">
        제목 <input type="text" name="title" size="50%">
        <textarea name="review" id="review" cols="55" rows="20" style="margin-top: 20px;" placeholder=" 텍스트를 입력하세요."></textarea>
       
        
        <div class="filebox"> 
          <label for="imgPath">업로드</label> 
          <input type="file" id="imgPath" name="imgPath"> 
          
          <input class="upload-name" value="파일선택">
        </div>

          
      </div>
      <div class="modal-footer">
        <span class="icon"><i class="fab fa-twitter"></i>
          <i class="fab fa-instagram"></i>
          <i class="fab fa-facebook-square"></i></span>
        
        <input type="submit" class="btn btn-primary sign_up" data-bs-dismiss="modal" value="리뷰등록">
        <input type="button" class="btn btn-secondary" data-bs-dismiss="modal" value="닫기">
      </form>
      </div>
        
    </div>
  </div>
</div>
      
      
    

  </section>








<!--네 번째 섹션-->

<!-- div 태그 추가 -->
<div class="back_color">
<section class="movie_content">

<div class="d-none d-md-block">
  <div class="container">
      <div class="row">
          <div class="col-md-10 text-black">
              <h4>기본 정보</h4><br>
              <p>그랜드 부다페스트 호텔<br>
                2014 · 독일 · 드라마<br>
                1시간 40분 · 청불<br>
                <br>1927년 세계대전이 한창이던 어느 날, 세계 최고 부호 ‘마담 D.(틸다 스윈튼)’가 ‘그랜드 부다페스트 호텔’에 다녀간 지 얼마 지나지 않아 의문의 살인을 당한다. 그녀는 유언을 통해 가문 대대로 내려오던 명화 ‘사과를 든 소년’을 전설적인 호텔 지배인이자 연인 ‘구스타브(랄프 파인즈)’ 앞으로 남긴다. 마담 D.의 유산을 노리고 있던 그의 아들 ‘드미트리(애드리언 브로디)’는 구스타브를 졸지에 유력한 용의자로 지목하게 되고, 구스타브는 충실한 호텔 로비보이 ‘제로(토리 레볼로리)’와 함께 누명을 벗기기 위한 기상천외한 모험을 시작한다. 한편, 드미트리는 그녀의 유품과 함께 ‘그랜드 부다페스트 호텔’까지 차지하기 위해 무자비한 킬러 ‘조플링(윌렘 대포)’를 고용하기에 이르는데...</p>
                
        </div>
      </div>
  </div>
</div>

</section>

   <!--두 번째 섹션-->

    <section class="movie_content">
      
      <!-- 패딩 수정 -->
      <div class="box-padding grey-bg">
        <div class="container">
          <!-- 타이틀 -->
          <h5><i class="fas fa-map-marker-alt"></i> 독일 괴를리츠</h5><br>
        <div class="row">
          <div class="col-md-6">
            <div class="box-padding">
                  <!--캐러셀 영역 설정-->
                  <div class="carousel slide" data-bs-ride="carousel" id="movie2"> 
                      <!--캐러셀 슬라이드 영역-->
                      <div class="carousel-inner">
                          <!--캐러셀 슬라이드 콘텐츠 추가-->
                          <div class="img-wrap carousel-item active">
                            <img src="/images/2/g8.png">
                            <!--캐러셀 슬라이드 제목 및 설명 추가-->
                            
                          </div>
                          <div class="carousel-item">
                            <img src="/images/2/g5.png">
                          </div>
                          <div class="carousel-item">
                            <img src="/images/2/g9.png">
                          </div>
                          
                      </div>
          
                      <!--캐러셀 좌우 버튼 영역-->
                      <a href="#movie2" class="carousel-control-prev" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon"></span>
                      </a>
                      <a href="#movie2" class="carousel-control-next" data-bs-slide="next">
                          <span class="carousel-control-next-icon"></span>
                      </a>
                  </div>
        </div>
    </div>
    <div class="col-md-6">
      <a href="https://www.google.com/maps/d/viewer?mid=1EDdFSZJ_DmDe7Q-_7yFixfNGtPM&ll=49.715492197893276%2C15.872462499999962&z=6"><img src="/images/2/map.png" alt="" width="550px"></a> 
    
</div>
</div>
</div>
</div>

</section>


<!--세 번째 섹션-->

<section class="movie_content" style="border-bottom: transparent;">

  <div class="box-padding grey-bg">
    <div class="container">
        <div class="row">
          <h3>여행지에 대한 소개</h3><br>

          <div id="carouselFourColumn" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
            <li data-target="#carouselFourColumn" data-slide-to="0" class="active"></li>
            <li data-target="#carouselFourColumn" data-slide-to="1"></li>
            <li data-target="#carouselFourColumn" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="row">
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/2/gb2.jpeg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/2/gb3.jpeg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/2/gb4.jpeg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/2/gb5.jpeg" class="w-100">
                </div>
                </div>
              </div>
            </div>
            <div class="carousel-item">
            <div class="row">
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/2/gb4.jpeg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/2/gb5.jpeg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/2/gb3.jpeg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/2/gb2.jpeg" class="w-100">
                </div>
                </div>
              </div>
            </div>
            </div>
            <a class="carousel-control-prev" href="#carouselFourColumn" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only"></span>
            </a>
            <a class="carousel-control-next" href="#carouselFourColumn" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only"></span>
            </a>
          </div>
    </div>
  </div>
  </div>
  
  </section>
  

  <!--네 번째 섹션-->

  <section class="movie_content">

  <div class="d-none d-md-block box-padding-big">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
              

                <p>괴를리츠는 나이세 강에 인접해 있으며 동명의 지구에서 가장 큰 도시로, 고딕 양식과 르네상스 양식부터 바로크 양식과 아르누보 양식에 이르기까지 다양한 건축 양식이 자리해 있습니다. 시내 중심가를 걸어 다니며 도시의 역사와 스타일을 느껴보세요.

                  운터마르크트 광장에서 괴를리츠 시청 과 같은 구시가지의 건물을 살펴보고 이 14세기 구조물의 극적인 외관과 시계탑을 감상해 보세요.
                  
                  장엄한 세인트 피터스 교회에서 도시의 종교적 역사에 대해 알아보고 로마네스크 양식의 외관과 구리로 된 지붕을 사진으로 찍어보세요. 도시의 북서부에 위치한 홀리 그라베도 놓치지 말아야 할 곳으로, 이 예배당은 예루살렘에 있는 원본 건물을 본떠서 15세기 후반에 세워졌습니다.
                  
                  괴를리츠 빈티지 미니어처 철도에서 독특한 각도로 도시를 조망해 보고 구시가지 옆에 있는 공원을 따라 운행하는 녹색 및 노란색 기관차에 아이들을 태워보세요.
                  
                  괴를리츠는 폴란드의 즈고셰레츠 마을과 나란히 위치하는데 두 도시는 1945년까지는 하나였습니다. 두 다리 중 하나를 통해 강을 건너 폴란드로 들어가서 괴를리츠의 역사적인 나머지 절반을 둘러보세요.
                  
                  도시의 다양한 건축물로 인해 이곳은 바스터즈: 거친 녀석들, 책도둑, 더 리더: 책 읽어주는 남자 그리고 그랜드 부다페스트 호텔 같은 많은 영화들의 무대가 되었습니다.
                  
                  춥고 어두운 겨울이 오고 눈이 온 도시를 뒤덮으면 건축물에 또 다른 매력이 더해집니다. 여름에는 온화한 날씨를 즐기고 괴를리츠 보존 동물원과 잎이 무성한 드넓은 들판과 삼림으로 이루어진 괴를리츠 시립공원으로 여행을 떠나보세요.
                  
                  이 도시는 독일의 가장 동쪽에 있는 베르츠도르퍼 호수 옆에 위치해 있으며 작센의 스위스 국립공원이 근처에 있습니다. 항공편으로 드레스덴 공항까지 와서 차를 몰거나 기차를 갈아타고 100km를 더 오세요. 베를린에서는 괴를리츠 역까지 가는 열차가 있습니다.
                  
                  잎이 무성한 공원, 강, 커다란 호수와 흥미진진한 건축물이 함께 있는 아름다운 도시인 괴를리츠를 방문해 보세요.
                </p>
            </div>
        </div>
    </div>
</div>

</section>

<!--다섯 번째 섹션-->

<section class="movie_content">

<div class="box-padding grey-bg">
  <div class="container">
      <div class="row">
        <div class="aa text-black"><h3>여행지 리뷰</h3></div>
      </div>
      
        <div id="carouselThreeColumn" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
          <li data-target="#carouselThreeColumn" data-slide-to="0" class="active"></li>
          <li data-target="#carouselThreeColumn" data-slide-to="1"></li>
          <li data-target="#carouselThreeColumn" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="row">
              <div class="col-xl-4 p-1">				
              <div class="card">
                <img src="/images/2/g10.jpeg" class="w-100">
                <div class="card-body">
                <h5 class="card-title">웨스 앤더슨 감독 신작이 10월에 나옵니다.</h5>
                <p class="card-text">평점 ★5.0/5.0</p>
                <p class="card-text">진짜 꼭 보세요 2번 보세요 아니 3번 보세요</p>
                <br><br>
                </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="/images/2/gb10.jpeg" class="w-100">
                  <div class="card-body">
                  <h5 class="card-title">힘들다...</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">리뷰 6개 쓰기 힘드네요... 그냥 복붙하겠습니다...</p>
                  <br><br>
                  </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="/images/2/gb12.jpeg" class="w-100">
                    <div class="card-body">
                    <h5 class="card-title">진정한 여행2</h5>
                    <p class="card-text">평점 ★5.0/5.0</p>
                    <p class="card-text">불멸의 춤은 아직 추어지지 않았으며
                      가장 빛나는 별은 아직 발견되지 않은 별.
                      무엇을 해야 할 지 더 이상 알 수 없을 때
                      그 때 비로소 진실로 무엇인가를 할 수 있다
                      어느 길로 가야할 지 더 이상 알 수 없을 때
                      그 때가 비로소 진정한 여행의 시작이다.</p>
                    <br><br>
                    </div>
                  </div>
                  </div>	
            </div>
          </div>
          <div class="carousel-item">
          <div class="row">
            <div class="col-xl-4 p-1">				
              <div class="card">
                <img src="/images/2/gb12.jpeg" class="w-100">
                <div class="card-body">
                <h5 class="card-title">웨스 앤더슨 감독 신작이 10월에 나옵니다.</h5>
                <p class="card-text">평점 ★5.0/5.0</p>
                <p class="card-text">진짜 꼭 보세요 2번 보세요 아니 3번 보세요</p>
                <br><br>
                </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="/images/2/gb10.jpeg" class="w-100">
                  <div class="card-body">
                  <h5 class="card-title">환상적인 미장센</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">아아... 그는 인간의 탈을 쓴 신인가?... 이토록 황홀하고 아름다운 광경은 처음이다.</p>
                  <br><br>
                  </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="/images/2/g10.jpeg" class="w-100">
                    <div class="card-body">
                    <h5 class="card-title">진정한 여행</h5>
                    <p class="card-text">평점 ★5.0/5.0</p>
                    <p class="card-text">가장 훌륭한 시는 아직 씌어지지 않았다
                      가장 아름다운 노래는 아직 불려지지 않았다
                      최고의 날들은 아직 살지 않은 날들
                      가장 넓은 바다는 아직 항해되지 않았고
                      가장 먼 여행은 아직 끝나지 않았다.
                      </p>
                    <br><br>
                    </div>
                  </div>
                  </div>	
            </div>
          </div>
          
          <a class="carousel-control-prev" href="#carouselThreeColumn" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only"></span>
          </a>
          <a class="carousel-control-next" href="#carouselThreeColumn" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only"></span>
          </a>
        </div>
        </div>
      </div>
  </div>

</section>
</div>

<footer class="ht-footer full-width-ft">
	<div class="row">
		<div class="flex-parent-ft">
			<div class="flex-child-ft item1">
				 <a href="#"><img class="logo" src="images/logo1.png" alt=""></a>
				 <p>비트캠프 | <br>
                    서울 강남구 강남대로94길 20, 삼오빌딩(5층 ~ 9층)</p>
				<p>Bitcamp : <a href="#">JAVA 211 B-4</a></p>
			</div>
			<div class="flex-child-ft item2">
				<h4>Resources</h4>
				<ul>
					<li><a href="#">서비스 이용약관</a></li> 
					<li><a href="#">개인정보 처리방침</a></li>
					<li><a href="#">회사 안내</a></li>
				</ul>
			</div>
            <div class="flex-child-ft item3">
				<h4>JAVA 211 B-4</h4>
				<ul>
                    <p>한용원<br>오석<br>지은혜<br>강다현<br>이영호</p>
				</ul>
			</div>
			<div class="flex-child-ft item4">
				<h4>Copyright</h4>
				<p>© 2021 by JAVA 211 B-4, Inc. All rights reserved.</p>
			</div>
            <div class="flex-child-ft item5">
				<h4></h4>
				<ul>
				</ul>
			</div>
		</div>
		</div>
	</div>
</footer>
  







        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=f227d02def2a3ff8e10e918268f049ab"></script>
  <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };
    
    // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption); 
    
  </script>

    </body>
    </html>
    
    
