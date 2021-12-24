<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰게시판-게시글</title>
    <link rel="stylesheet" href="css/cinema_style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>\

   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet"></head>
    <style>
      .img {
        width: 300px;

      }
    </style>
</head>
<body>

<jsp:include page="/Header.jsp"/>
<div class="m-5"><img src="images/자리차지용.jpg" alt=""></div>
<div class="container gap-2">
    <div class="row">
        <div class="col-2">
          <h5>게시판 선택</h5>
          <hr>
          <!--왼쪽 게시판 내 선택상자-->
          <div class="list-group">
            <a href="Cinemaway_review.html" class="list-group-item list-group-item-action bg-dark active" aria-current="true">
              리뷰게시판
            </a>
            <a href="Cinemaway_pre.html" class="list-group-item list-group-item-action">자유게시판</a>
            <a href="Cinemaway_QNA1.html" class="list-group-item list-group-item-action">고객센터</a>
          </div>
        </div>
        <!--게시판 테이블 시작-->
        <div class="col">
          <h2>리뷰게시판</h2>
          <hr>
           <c:forEach var="review" items="${noReviews }">
            <h6><b>${review.title}</b></h6>
            <hr>
            <img src="${review.imgPath}">
                <p>
                ${review.review}
              </p>
              <hr>
              </c:forEach>
          <div class="form-group">
            <textarea class="form-control" rows="3" name="bdContent"
                placeholder="댓글을 작성해주세요"></textarea>
              </div>
              <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='Cinemaway_page_writer.html'">댓글달기</button>
              </div>
        </div>    
        </div>
        </div>
    
<!--페이지 넘기는 버튼이랑, 검색창-->
<div class="container">
  <div class="row m-5">
    <div class="col-5">
    </div>
    <div class="col">
      <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
        <div class="btn-group" role="group" aria-label="First group">
          <button type="button" class="btn btn-outline-secondary"><i class="bi bi-chevron-double-left"></i></button>
          <button type="button" class="btn btn-outline-secondary">1</button>
          <button type="button" class="btn btn-outline-secondary">2</button>
          <button type="button" class="btn btn-outline-secondary">3</button>
          <button type="button" class="btn btn-outline-secondary">4</button>
          <button type="button" class="btn btn-outline-secondary"><i class="bi bi-chevron-double-right"></i></button>
        </div>
      </div>
    </div>
    <div class="col-3">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="게시판 내 검색" aria-label="Input group example" aria-describedby="btnGroupAddon2">
        <button type="button" class="btn btn-outline-secondary"><span class="bi bi-search"></i></button>
      </div>
    </div>
  </div>
</div>
<jsp:include page="/Tail.jsp"/>
</body>
</html>