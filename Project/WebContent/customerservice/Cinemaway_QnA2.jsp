<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CinemaWay_QnA</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/cinema_style.css">
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>

    <!-- 검색창 스크립트 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <!-- 용원씨가 준 그뭐야 영화 가로 정렬 스크립트 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <!-- 폰트 스크립트 -->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
   
    <!--위로가기 버튼 구현-->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!--하기는 이영호가 사용한 css 스타일-->
    <style>
        .containerAlignCenter{
          display: flex;
          justify-content: center;
          align-items: auto;
          margin-top: 10px;
          margin-bottom: 10px;
        }
        .containerAlignCenter h2{
          display: flex;
          justify-content: center;
          align-items: auto;
          margin-top: 10px;
          margin-bottom: 10px;
        }
        .row{
          display: flex;
          justify-content: center;
          align-items: auto;
          margin-top: 10px;
          margin-bottom: 10px;
          text-align: center;
        }
        .table-responsive{
          display: flex;
          justify-content: center;
          align-items: auto;
          margin-top: 10px;
          margin-bottom: 10px;
          text-align: center;
        }
        .col-sm-2 {
            margin: 20px;
            border: 1px solid #333741;
            vertical-align: middle;
            line-height: 80px;
           }

        .col-sm-2:hover {
            animation-play-state: paused;
            background: #333741;
            color:white;
        }

        .search-full input[type="search"] {
            border: 1px solid #fff;
        }
        
        .search input[type="search"] {
            border-radius: 30px;
            box-sizing: border-box;
            color: #666;
            height: 40px;
            padding-left: 40px;
            padding-right: 20px;
            -webkit-appearance: none;
            width: 50%;
        }
        a { 
            text-decoration: none; 
        }
        /*하기는 category.loginAccountManagement에 사용된 css style...*/
        #accountPasswordChange h2{
            text-align:left;
            margin-top: 37px;
            margin-bottom: 37px;
        }
        .accordion-body{
            text-align:left;
        }
        #accountPasswordLost h2{
            text-align:left;
            margin-top: 37px;
            margin-bottom: 37px;
        }
                /*
        맨 위로 가기 버튼
         */
         #wrapBackToTop{
            margin:0 auto;
            width:300px;
            }
        #back-to-top {
            display: inline-block;
            background-color: #FF9800;
            width: 50px;
            height: 50px;
            text-align: center;
            border-radius: 4px;
            position: fixed;
            bottom: 30px;
            right: 30px;
            transition: background-color .3s, 
                opacity .5s, visibility .5s;
            opacity: 0;
            visibility: hidden;
            z-index: 1000;
            }
        #back-to-top::after {
            content: "\f0d8";
            font-family: FontAwesome;
            font-weight: normal;
            font-style: normal;
            font-size: 2em;
            line-height: 50px;
            color: #fff;
            }
        #back-to-top:hover {
            cursor: pointer;
            background-color: #333;
            }
        #back-to-top:active {
            background-color: #555;
            }
        #back-to-top.show {
            opacity: 1;
            visibility: visible;
            }
            /*
            뒤로 가기 버튼 
            */
        #wrapBackToBackPage{
            margin:0 auto;
            width:300px;
            }
        #back-to-backpage {
            display: inline-block;
            background-color: #FF9800;
            width: 50px;
            height: 50px;
            text-align: center;
            border-radius: 4px;
            position: fixed;
            bottom: 30px;
            right: 100px;
            transition: background-color .3s, 
                opacity .5s, visibility .5s;
            opacity: 0;
            visibility: hidden;
            z-index: 1000;
            }
        #back-to-backpage::after {
            content: "\f0d9";
            font-family: FontAwesome;
            font-weight: normal;
            font-style: normal;
            font-size: 2em;
            line-height: 50px;
            color: #fff;
            }
        #back-to-backpage:hover {
            cursor: pointer;
            background-color: #333;
            }
        #back-to-backpage:active {
            background-color: #555;
            }
        #back-to-backpage.show {
            opacity: 1;
            visibility: visible;
            }
      </style>
      <script>
        /* 맨 위로 가기 버튼의 스크립트.*/
        $(function(){
          $('#back-to-top').on('click',function(e){
              e.preventDefault();
              $('html,body').animate({scrollTop:0},100);
          });
          
          $(window).scroll(function() {
            if ($(document).scrollTop() > 100) {
              $('#back-to-top').addClass('show');
            } else {
              $('#back-to-top').removeClass('show');
            }
          });
        });
        /* 뒤로 가기 버튼의 스크립트.*/
        /*back-to-backpage */
        $(function(){
        //   상기 코드 중 일부 숨김...
        //   $('#back-to-backpage').on('click',function(e){
        //       e.preventDefault();
        //       $('html,body').animate({scrollTop:0},100);
        //   });
          $(window).scroll(function() {
            if ($(document).scrollTop() > 100) {
              $('#back-to-backpage').addClass('show');
            } else {
              $('#back-to-backpage').removeClass('show');
            }
          });
        });
        /*뒤로가기 자바스크립트 기능... */
        /* 뒤로가기 버튼 javacript... 그러나 기능 구현이 아니 되어 주석 처리함..
        function goBack(){
            window.history.back();
        }      
        */
      </script>
</head>
<body>
<jsp:include page="/Header.jsp"/>

        <!-- 이영호 작업본. 2.customerservice.category.loginAccountmanagement
            body 부분은 곧 div이며 div 안에 3개의 ID를 선언하여 구분 하였음. 하기는 div id를 풀의함.
 
        -->

    <div class="row">
        <div id="emptySpaceForHeadSection" style="height:82px;">   
            <!--헤더 섹션이 없어서 emptySpace를 div으로 선언함...-->            
        </div>
        <div id="bodyOfCustomerService"> 
            <!--질문 검색창-->
            
                <div id="searchtool" class="searchtool">
                    <div id="main-content" style="height:190px; max-width: 100%; background-color: #333741">
                        <div class="hero-inner" style="height:190px;">
                            <br>
                                <h1 style="color: white; height: 80px;">Cinemaway</h1>
                        </div>
                    </div>
                </div>
            
        </div> 


        <!--여기서 부터 로그인 및 계정 관리 div 를 작성함...-->
        <!--첫번째 아코디언-->
        <div id="accountPasswordChange">
            <h2><strong>[계정/비밀번호 변경]</strong></h2>
            <div class="accordion" id="accordionPanelsStayOpenExample">
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                        가입한 이메일 주소와 비밀번호를 변경하고 싶어요.
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingOne">
                    <div class="accordion-body">
                        <br>
                        이메일과 비밀번호는 왓챠 '설정'에서 변경할 수 있어요. 아래 방법을 확인해 주세요!
                        <br><br>
                        PC 웹에서 변경하기
                        - 이메일 변경 : 설정 > 프로필의 이메일 변경
                        - 비밀번호 변경 : 설정 > 프로필의 비밀번호 변경
                        <br><br>
                        모바일 App에서 변경하기
                        - 이메일 변경 : 마이페이지 > 설정 > 계정 설정 > 이메일 변경
                        - 비밀번호 변경 : 마이페이지 > 설정 > 계정 설정 > 비밀번호 변경.
                        <br><br><br>
                    </div>
                </div>
                </div>
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                        @privaterelay 주소로 가입되어 있어요. 어떻게 변경하나요?
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                    <div class="accordion-body">
                        <br>
                        'Apple로 계속하기 & 나의 이메일 가리기'로 가입하시면 임시 이메일 주소 @privaterelay.appleid.com로 가입되어요.
                        <br><br>
                        아래 절차에 따라 변경해 주세요 :)
                        <br><br>
                        1. 왓챠 앱 > 마이페이지 > 설정 > 계정 설정
                        2. '비밀번호 초기화' 에서 비밀번호 설정
                        3. '이메일 변경' 에서 이메일 주소 변경
                        <br><br>
                        * 애플 ID로 가입하는 과정에 비밀번호 설정이 없으므로 2번 단계에서 비밀번호를 설정해 주셔야 합니다.
                        * 앱 버전 1.9.96 부터 '비밀번호 초기화' 메뉴 이용이 가능합니다.
                        <br><br><br>
                    </div>
                </div>
                </div>
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                        @privaterelay 주소로 가입된 계정은 가족 혹은 친구에게 어떻게 공유할 수 있나요?
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                    <div class="accordion-body">
                        <br>
                        <strong>‘Apple로 계속하기 & 나의 이메일 가리기‘</strong>로 가입하시면 임시 이메일 주소 @privaterelay.appleid.com로 가입되어요.
                        <br><br>   
                        아래 절차에 따라 비밀번호 설정 및 이메일 주소 변경 후 계정을 공유해 주세요 :)
                        <br><br>    
                        1. 왓챠 앱 > 마이페이지 > 설정 > 계정 설정
                        2. '비밀번호 초기화' 에서 비밀번호 설정
                        3. '이메일 변경' 에서 이메일 주소 변경
                        <br><br>
                        * 애플 ID로 가입하는 과정에 비밀번호 설정이 없으므로 2번 단계에서 비밀번호를 설정해 주셔야 합니다.
                        * 이메일 주소 변경을 원치 않으시면 변경하지 않으셔도 됩니다.
                        * 앱 버전 1.9.96 부터 '비밀번호 초기화' 메뉴 이용이 가능합니다.
                        <br><br>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <!--두번째 질문 답변.. 계정 비밀번호 분실...-->
        <!--두번째 아코디언-->
        <div id="accountPasswordLost">
            <h2><strong>[계정/비밀번호 분실]</strong></h2>
            <div class="accordion" id="accordionPanelsStayOpenExample">
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="true" aria-controls="panelsStayOpen-collapseFour">
                        이메일 주소/비밀번호가 기억나지 않아요.
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
                    <div class="accordion-body">
                        <br>
                        &lt;이메일 주소를 잊으신 경우 &gt;
                        <br><br>
                        하단의 [문의 등록]으로 아래 내용을 모두 보내주시면 조회 도와드릴게요.
                        <br><br>
                        - 닉네임 (성함으로 하셨을 수도 있어요)
                        - 가입하셨다고 예상되는 이메일 주소를 모두 알려주세요.
                        - 무료 기간 후 결제된 적이 있다면, 결제 문자 혹은 이메일 등 결제 내역 캡처본 꼭 보내주세요.
                        <br><br>
                        <br><br>
                        <br><br>
                        <비밀번호를 잊으신 경우>
                        <br><br>
                        1. PC 웹에서 비밀번호 찾기: 로그인 화면 > '비밀번호를 잊어버리셨나요?' > 가입한 이메일 입력 > 수신된 이메일에서 변경 원하는 비밀번호 입력
                        2. 모바일 앱에서 비밀번호 찾기: 로그인 화면 > '비밀번호를 잊으셨나요?' > 가입한 이메일 입력 > 수신된 이메일에서 변경 원하는 비밀번호 입력
                        <br><br>
                        <br><br>
                        <br><br>
                        가입하신 이메일 주소가 잘못 되었거나 이메일 수신이 안 되는 경우, 아래 [문의 등록]으로 왓챠 가입한 이메일 주소와 함께 문의해 주세요.
                        <br><br><br>
                    </div>
                </div>
                </div>
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingFive">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
                        변경된 이메일 계정을 찾을 수 없어요.
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
                    <div class="accordion-body">
                        <br>
                        아래 [문의등록]으로 변경되기 전 왓챠 이메일 계정을 보내주시면 확인 도와드릴게요.
                        <br><br><br>
                    </div>
                </div>
                </div>
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingSix">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
                        로그인 상태에서 비밀번호가 기억나지 않아요.
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
                    <div class="accordion-body">
                        <br>
                        로그인 상태에서는 비밀번호 재설정을 할 수 없어요.
                        <br><br>
                        비밀번호가 기억나지 않으신다면, 우선 로그아웃 후 로그인 화면에서 '비밀번호를 잊으셨나요' 를 통해 재설정 메일을 받아 진행해주세요.
                        <br><br><br>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <!--세번째 질문 답변.. 기타등등...-->
        <!--세번째 아코디언-->
        <div id="accountPasswordLost">
            <h2><strong>[기타]</strong></h2>
            <div class="accordion" id="accordionPanelsStayOpenExample">
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingSeven">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSeven" aria-expanded="true" aria-controls="panelsStayOpen-collapseSeven">
                        등록된 기기에서 모두 로그아웃하고 싶어요.
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseSeven" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSeven">
                    <div class="accordion-body">
                        <br>
                        등록된 모든 기기에서 로그아웃을 원하신다면 비밀번호를 변경해 주세요. 비밀번호 변경 시 로그인 되어있던 모든 기기에서 로그아웃 되어요.
                        <br><br><br>
                    </div>
                </div>
                </div>
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingEight">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseEight" aria-expanded="false" aria-controls="panelsStayOpen-collapseEight">
                        로그인 하는데 '서비스 이용불가' 메시지가 안내되어요.
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseEight" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingEight">
                    <div class="accordion-body">
                        <br>
                        이 경우는 문의 등록을 통해 <a href="index_test.yhthomaslee.customerservice.category.inquiry.html">[문의 등록]</a> 부탁 드립니다.
                        
                        <br><br><br>
                    </div>
                </div>
                </div>
                <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingNine">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseNine" aria-expanded="false" aria-controls="panelsStayOpen-collapseNine">
                        개인 정보에 대해 문의하고 싶어요.
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseNine" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingNine">
                    <div class="accordion-body">
                        <br>
                        저희는 회원의 개인정보보호를 가장 중요시하며, 회원의 개인정보가 훼손, 침해 또는 누설되지 않도록 최선을 다하고 있어요. 서비스를 이용하시면서 발생하는 아래 등의 내용은 당사 앱/웹 [고객센터 > 로그인/계정 관리] 또는 [문의 등록]을 통해 확인 및 처리가 가능해요. 문의주시면 7일 이내에 회신 드릴게요.
                            - 개인 정보 수집.이용.제공 등의 동의 철회
                            - 수집된 개인정보 내역 확인 및 수정 요청
                            - 수집된 개인정보의 이용 내역
                            <br>
                            왓챠 계정의 보안을 위해 다음의 몇 가지 방법을 꼭 확인해 주세요.
                            - 비밀번호를 주기적으로 변경해 주세요.
                            - 공용기기(PC 등)에서 사용 후 꼭 로그아웃해 주세요.
                            - 공용기기(PC 등)에서는 아이디/비밀번호를 저장하시면 안돼요.

                            <a href="index_test.yhthomaslee.customerservice.category.inquiry.html">[문의 등록]</a>
                        <br><br><br>
                    </div>
                </div>
                </div>
            </div>
        </div>
        
    </div>

 <!-- 푸터 영역-->
<jsp:include page="/Tail.jsp"/>
<!-- 푸터 끗-->

        <!-- 맨 위로 가기 버튼의 스크립트.-->
        <div id="wrapBackToBackPage">
            <a id="back-to-backpage" onclick="location.href='index_test.yhthomaslee.customerservice.main.html'"><!--해당 코드는 뒤로가기 기능을 적용했으나 작동하지 않아 url로 대처함.--></a>
        </div>
        <div id="wrapBackToTop">
            <a id="back-to-top"></a>
        </div>

    </body>
    </html>