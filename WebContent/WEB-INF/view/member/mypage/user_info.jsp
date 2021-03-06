
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/include/head.jsp" %>
    
<head>
<style type="text/css">
	
	
	.uu{
		margin-left: 20%;
	}
</style>
</head>
  <body>

    
    <div class="site-wrap" id="home-section">

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>

 <%@ include file="/WEB-INF/view/include/header.jsp" %>


<div class="hero inner-page" style="background-image: url('/resources/images/hero_1_a.jpg');">
        
        <div class="container">
          <div class="row align-items-end ">
            <div class="col-lg-5">

              <div class="intro" style="width:500px">
                <h1><strong>마이페이지</strong></h1>
                <div class="custom-breadcrumbs">
                	<a href="/member/mypage/userinfo">회원정보</a> <span class="mx-2">/</span> 
                	<a href="/member/mypage/userinfomodify">회원정보 수정</a> <span class="mx-2">/</span> 
                	<a href="/member/mypage/past">과거여행</a> <span class="mx-2">/</span> 
                	<a href="/member/mypage/current">미래여행</a> <span class="mx-2">/</span> 
                	<a href="/member/mypage/wishlist">찜한 붕붕이</a>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>


    <div class="site-section bg-light" id="contact-section">
      <div class="container">
        <div class="row justify-content-center text-center">
        <div class="col-7 text-center mb-5">
          <h2>${sessionScope.user.userId} 님의 가입정보</h2>
          <p></p>
        </div>
      </div>
        <div class="row">
          
          	<table class="table table-bordered" style="width:60%; margin-left:15vw">
                  <tr>
                    <th class="product-name" style="width:40%">이름</th>
                    <td class="product-name"><h2 class="h5 text-black">${sessionScope.user.userName}</h2></td>
                  </tr>
                  <tr>
                    <th class="product-regDate">전화번호</th>
                    <td class="product-regDate"><h2 class="h5 text-black">${sessionScope.user.userPhone}</td>
                  </tr>
                  <tr>
                    <th class="product-pickDate">이메일</th>
                    <td class="product-pickDate"><h2 class="h5 text-black">${sessionScope.user.userEmail}</td>
                  </tr>
                  <tr>
                    <th class="product-total">운전면허 번호</th>
                    <td class="product-total"><h2 class="h5 text-black">${sessionScope.user.userLicense}</td>
                  </tr>
                  <tr>
                    <th class="product-total">가입일자 번호</th>
                    <td class="product-total"><h2 class="h5 text-black">${sessionScope.user.userRegDate}</td>
                  </tr>
               </table>
          
          
          
          
         
        </div>
      </div>
    </div>







   <%@ include file="/WEB-INF/view/include/footer.jsp" %>   
    </div>
  <%@ include file="/WEB-INF/view/include/script.jsp" %>

  </body>

</html>