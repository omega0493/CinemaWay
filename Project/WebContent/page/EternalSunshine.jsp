<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <meta charset="UTF-8">
  <title>Eternal Sunshine</title>
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
  background: url("/images/1/ee.jpg") center top/cover no-repeat;
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
      <img src="/images/1/es.png">
      
    </div>

    <!-- 태그 위치 수정-->
    <div class="about_movie">

    
      <h2>이터널 선샤인</h2>
      <sub>2004 · 드라마/로맨스/SF · 미국</sub><br><br>
      <p>Eternal Sunshine of the Spotless Mind</p>
      <p>평균 ★4.2 (4,239명)</p>


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
        <form action="review.do" method="post">
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
              <p>이터널 선샤인<br>
                2004 · 미국 · 드라마<br>
                1시간 47분 · 15세<br>
                <br>조엘은 아픈 기억만을 지워준다는 라쿠나사를 찾아가 헤어진 연인 클레멘타인의 기억을 지우기로 결심한다. 기억이 사라져 갈수록 조엘은 사랑이 시작되던 순간, 행복한 기억들, 가슴 속에 각인된 추억들을 지우기 싫어지기만 하는데..</p>
                
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
          <h5><i class="fas fa-map-marker-alt"></i> 뉴욕 몬탁</h5><br>
        <div class="row">
          <div class="col-md-6">
            <div class="box-padding">
                  <!--캐러셀 영역 설정-->
                  <div class="carousel slide" data-bs-ride="carousel" id="movie2"> 
                      <!--캐러셀 슬라이드 영역-->
                      <div class="carousel-inner">
                          <!--캐러셀 슬라이드 콘텐츠 추가-->
                          <div class="img-wrap carousel-item active">
                            <img src="/images/1/e1.jpg">
                            <!--캐러셀 슬라이드 제목 및 설명 추가-->
                            
                          </div>
                          <div class="carousel-item">
                            <img src="/images/1/e2.jpg">
                          </div>
                          <div class="carousel-item">
                            <img src="/images/1/e3.jpg">
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
      <a href="https://www.google.com/maps/@41.0336283,-72.0594591,10.74z"><img src="images/1/eeee.png" alt="" width="450px"></a>
    
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
                  <img src="/images/1/e4.jpg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/1/e5.jpg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/1/e7.jpg" class="w-100">
                </div>
              </div>
              <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/1/e66.jpg" class="w-100">
                </div>
                </div>
              </div>
            </div>
            <div class="carousel-item">
            <div class="row">
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/1/e7.jpg" class="w-100">
                </div>
              </div>
              <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/1/e66.jpg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/1/e4.jpg" class="w-100">
                </div>
                </div>
                <div class="col-xl-3 p-1">            
                <div class="card">
                  <img src="/images/1/e5.jpg" class="w-100">
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
              

                <p>롱아일랜드 '땅끝 마을' 몬탁(Montauk)은 새해 일출을 보는 곳으로 유명하다. 미 초대 대통령 조지 워싱턴이 명한 등대가 있는 몬탁. 그 이름은 인디안 원주민 '몬타켓(Montaukett)'에서 이름을 따왔다.  몬타켓 인디언은 이 곳에서 낚시, 사냥을 했으며, 소를 기르며 살았다. 아직도 몬탁 베이에는 요트들이 정박해 있고, 낚시를 즐기는 이들이 적지 않다. 내륙에는 곳곳에 하이킹과 캠핑을 즐길 수 있는 공원이 펼쳐있다.
                  영화 속 주인공들이 처음 만났던 기차를 타고, 함께 걷던 해변을 찾아가 보는 것은 이곳에서의 여행을 특별하게 만들어 줄 거에요.

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
                <img src="/images/1/e11.jpg" class="w-100">
                <div class="card-body">
                <h5 class="card-title">너무 좋네요</h5>
                <p class="card-text">평점 ★5.0/5.0</p>
                <p class="card-text">역시 뉴욕 몬탁 새벽 4시에 리뷰를 쓰고 있습니다 하...</p>
                <br><br>
                </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="/images/1/e12.jpg" class="w-100">
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
                    <img src="/images/1/e13.jpg" class="w-100">
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
                <img src="/images/1/e12.jpg" class="w-100">
                <div class="card-body">
                <h5 class="card-title">오석님이 추천해 주신 여행지!</h5>
                <p class="card-text">평점 ★5.0/5.0</p>
                <p class="card-text">너무 멋지네요 역시 오석님 최고~! (석님 칭찬 글 올렸으니 때리지 마세요)</p>
                <br><br>
                </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="/images/1/e13.jpg" class="w-100">
                  <div class="card-body">
                  <h5 class="card-title">여행 잘 다녀왔습니다.</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">여행지 추천해 주신 석님께 감사드리고 이터널 선샤인 너무 재밌게 봤는데 다시 봐야겠네요 ㅎㅎ</p>
                  <br><br>
                  </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="/images/1/e11.jpg" class="w-100">
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
				 <a href="#"><img class="logo" src="/images/logo1.png" alt=""></a>
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

  


<!-- 네비바부분 투명하게 -->
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

<!-- 네비바부분 투명하게 끝 -->




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
    
    
    
    
    
    
    

  
  
</body>
</html>