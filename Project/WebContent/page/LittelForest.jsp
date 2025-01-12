<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Little Forest</title>
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
  .back_img {
    background: url("/image1/11/2-2.jpg") center/cover no-repeat;
    background-position: center top;
    background-size: cover;
  
  }
  .card-body {
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
      <img src="/image1/11/Little_Forest_(리틀_포레스트).jpg">

    </div>

    <div class="about_movie">
      <h2>리틀 포레스트</h2>
      <sub>평균 ★4.0 (55만명)</sub><br><br>
      <p>Little Forest</p>
      <p>2018 ・ 드라마 ・ 한국</p>
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
        <div class="star-rating space-x-4 mx-auto">
          <input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
          <label for="5-stars" class="star pr-4">★</label>
          <input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
          <label for="4-stars" class="star">★</label>
          <input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
          <label for="3-stars" class="star">★</label>
          <input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
          <label for="2-stars" class="star">★</label>
          <input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
          <label for="1-star" class="star">★</label>
        </div>
        <textarea name="" id="" cols="55" rows="20" style="margin-top: 20px;" placeholder=" 텍스트를 입력하세요."></textarea>
       
        
        <div class="filebox"> 
          <label for="file">업로드</label> 
          <input type="file" id="file"> 
          
          <input class="upload-name" value="파일선택">
        </div>

          
      </div>
      <div class="modal-footer">
        <span class="icon"><i class="fab fa-twitter"></i>
          <i class="fab fa-instagram"></i>
          <i class="fab fa-facebook-square"></i></span>
        
        <button type="button" class="btn btn-primary sign_up" data-bs-dismiss="modal">리뷰 등록</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
        
    </div>
  </section>



 <!--첫 번째 섹션-->
 





 <div class="back_color">
  <section class="movie_content">

        <div class="d-none d-md-block">
          <div class="container">
              <div class="row">
                  <div class="col-md-10 text-black">
                      <h4>기본 정보</h4><br>
                      <p>리틀 포레스트<br>
                        2018 · 한국 · 드라마<br>
                        1시간 43분 · 전체<br>
                        <br>“잠시 쉬어가도, 달라도, 평범해도 괜찮아!
                    모든 것이 괜찮은 청춘들의 아주 특별한 사계절 이야기”
                    시험, 연애, 취업… 뭐하나 뜻대로 되지 않는 일상을 잠시 멈추고
                    고향으로 돌아온 혜원은 오랜 친구인 재하와 은숙을 만난다
                    
                    남들과는 다른, 자신만의 삶을 살기 위해 고향으로 돌아온 ‘재하’,
                    평범한 일상에서의 일탈을 꿈꾸는 ‘은숙’과 함께
                    직접 키운 농작물로 한끼 한끼를 만들어 먹으며
                    겨울에서 봄, 그리고 여름, 가을을 보내고 다시 겨울을 맞이하게 된 혜원.
                    
                    그렇게 특별한 사계절을 보내며 고향으로 돌아온 진짜 이유를 깨닫게 된 혜원은
                    새로운 봄을 맞이하기 위한 첫 발을 내딛는데…</p>
            </div>
          </div>
      </div>
    </div>
</section>


   <!--두 번째 섹션-->

    <section class="movie_content">

   <div class="box-padding grey-bg">
    <div class="container">
      <h5><i class="fas fa-map-marker-alt"></i> 경북 군위</h5><br>
        <div class="row">
          <div class="col-md-6">
            <div class="box-padding">
                  <!--캐러셀 영역 설정-->
                  <div class="carousel slide" data-bs-ride="carousel" id="movie1"> 
                      <!--캐러셀 슬라이드 영역-->
                      <div class="carousel-inner">
                          <!--캐러셀 슬라이드 콘텐츠 추가-->
                          <div class="img-wrap carousel-item active">
                              <img src="/image1/11/2-1.jpg">
                              <!--캐러셀 슬라이드 제목 및 설명 추가-->
                             
                          </div>
                          <div class="carousel-item">
                              <img src="/image1/11/2-2.jpg">
                          </div>
                          <div class="carousel-item">
                              <img src="/image1/11/2-3.jpg">
                          </div>
                          
                      </div>
          
                      <!--캐러셀 좌우 버튼 영역-->
                      <a href="#movie1" class="carousel-control-prev" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon"></span>
                      </a>
                      <a href="#movie1" class="carousel-control-next" data-bs-slide="next">
                          <span class="carousel-control-next-icon"></span>
                      </a>
                  </div>
        </div>
    </div>
    <div class="col-md-6">
      <div id="map" style="width:100%;height:350px;"></div>
    
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
                <img src="/image1/11/3-1.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="/image1/11/3-2.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="/image1/11/3-3.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="/image1/11/3-4.jpg" class="w-100">
              </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
          <div class="row">
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="/image1/11/3-4.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="/image1/11/3-3.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="/image1/11/3-2.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="/image1/11/3-1.jpg" class="w-100">
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
                
                <p>군위군에는 네티즌이 뽑은 가장 아름다운 간이역인 화본역이 있다. 화본역은 주말 당일치기로 다녀올 수 있는 기차 여행지이다. 
                  정겨운 시골 간이역 모습을 그래로 유지하고 있으며, 증기기관차 시절의 급수탑이 그 자리를 지키고 있다. 
                  기찻길 옆 화본마을 곳곳에 그려진 벽화를 구경하는 것도 소소한 재미! 
                  벚꽃이 피는 봄과 단풍으로 물드는 가을에 팔공산으로 드라이브 코스를 잡거나 내륙의 제주도라 불리는 한밤마을 돌담길을 느긋하게 걸어보는 것도 좋다.
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
                <img src="/image1/11/5-1.jpg" class="w-100">
                <div class="card-body">
                <h5 class="card-title">행복한 하루 그리고 한용원</h5>
                <p class="card-text">평점 ★5.0/5.0</p>
                <p class="card-text">한용원님이 추천하신 여행지 너무 좋았어요 가족들과 행복한 시간 보냈어요</p>
                </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="/image1/11/5-2.jpg" class="w-100">
                  <div class="card-body">
                  <h5 class="card-title">한용원 그는 누구인가</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">킹갓제네럴엠페러충무공마제스티하이퍼울트라판타스틱익스트림지니어스화룡정점마스터한용원</p>
                  </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="/image1/11/5-3.jpg" class="w-100">
                    <div class="card-body">
                    <h5 class="card-title">사랑하는 한용원</h5>
                    <p class="card-text">평점 ★5.0/5.0</p>
                    <p class="card-text">사랑하는 한용원님과 좋은 여행지 다녀왔습니다. 이렇게 좋은 날씨에 한용원님과 이곳저곳
                                        다니면서 맛있는 맛집들도 돌아다녔습니다. 사랑하는 연인과 같이 여행하기 좋은곳입니다.
                    </p>
                    </div>
                  </div>
                  </div>	
            </div>
          </div>
          <div class="carousel-item">
          <div class="row">
            <div class="col-xl-4 p-1">				
              <div class="card">
                <img src="/image1/11/5-3.jpg" class="w-100">
                <div class="card-body">
                  <h5 class="card-title">사랑하는 한용원</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">사랑하는 한용원님과 좋은 여행지 다녀왔습니다. 이렇게 좋은 날씨에 한용원님과 이곳저곳
                                      다니면서 맛있는 맛집들도 돌아다녔습니다. 사랑하는 연인과 같이 여행하기 좋은곳입니다.
                  </p>
                  </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="/image1/11/5-2.jpg" class="w-100">
                  <div class="card-body">
                    <h5 class="card-title">한용원 그는 누구인가</h5>
                    <p class="card-text">평점 ★5.0/5.0</p>
                    <p class="card-text">킹갓제네럴엠페러충무공마제스티하이퍼울트라판타스틱익스트림지니어스화룡정점마스터한용원</p>
                    </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="/image1/11/5-1.jpg" class="w-100">
                    <div class="card-body">
                      <h5 class="card-title">행복한 하루 그리고 한용원</h5>
                      <p class="card-text">평점 ★5.0/5.0</p>
                      <p class="card-text">한용원님이 추천하신 여행지 너무 좋았어요 가족들과 행복한 시간 보냈어요</p>
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

   <!-- 푸터 영역-->
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
<!-- 푸터 끗-->


        <script>
          // navbar transparent
          const navbar = document.querySelector('#navbar');
          const navbarHeight = navbar.getBoundingClientRect().height;
          
          document.addEventListener('scroll',() => {
            // console.log(window.scrollY);
            if(window.scrollY>navbarHeight){
              navbar.classList.add('navbar_display');
            }else{
              navbar.classList.remove('navbar_display');
            }
          });
          
          
          
          // 모달 부분 파일 불러오기
          $("#file").on('change',function(){
            var fileName = $("#file").val();
            $(".upload-name").val(fileName);
          });
          
          // 불러오기 끝
          </script>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=f227d02def2a3ff8e10e918268f049ab"></script>
  <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
          center: new kakao.maps.LatLng(36.179624087037986, 128.66445747903668)
, // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };
    
    // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption); 
    </script>

    </body>
    </html>
    
</body>
</html>