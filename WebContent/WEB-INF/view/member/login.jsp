
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/include/head.jsp" %>
    

<html>

  <head>
    
<style type="text/css">
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  user-select: none;
}
.content{
  position: relative;
  top: 50%;
  left: 50%;
  z-index: 999;
  text-align: center;
  padding: 60px 32px;
  width: 370px;
  transform: translate(-50%,0%);
  background: rgba(255,255,255,0.04);
  box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
}
.content header{
  color: black;
  font-size: 33px;
  font-weight: 600;
  margin: 0 0 35px 0;
  font-family: 'Montserrat',sans-serif;
}
.field{
  position: relative;
  height: 45px;
  width: 100%;
  display: flex;
  background: rgba(255,255,255,0.94);
}
.field span{
  color: #222;
  width: 40px;
  line-height: 45px;
}
.field input{
  height: 100%;
  width: 100%;
  background: transparent;
  border: none;
  outline: none;
  color: #222;
  font-size: 16px;
  font-family: 'Poppins',sans-serif;
}
.space{
  margin-top: 16px;
}
.show{
  position: absolute;
  right: 13px;
  font-size: 13px;
  font-weight: 700;
  color: #222;
  display: none;
  cursor: pointer;
  font-family: 'Montserrat',sans-serif;
}
.pass-key:valid ~ .show{
  display: block;
}
.pass{
  text-align: left;
  margin: 10px 0;
}
.pass a{
  color: black;
  text-decoration: none;
  font-family: 'Poppins',sans-serif;
}
.pass:hover a{
  text-decoration: underline;
}
.field input[type="submit"]{
  background: #3498db;
  border: 1px solid #2691d9;
  color: white;
  font-size: 18px;
  letter-spacing: 1px;
  font-weight: 600;
  cursor: pointer;
  font-family: 'Montserrat',sans-serif;
}
.field input[type="submit"]:hover{
  background: #2691d9;
}
.login{
  color: black;
  margin: 20px 0;
  font-family: 'Poppins',sans-serif;
}
.links{
  display: flex;
  cursor: pointer;
  color: white;
  margin: 0 0 20px 0;
}
.facebook{
  width: 100%;
  height: 45px;
  line-height: 45px;
  margin-left: 10px;
}
.facebook{
  margin-left: 10;
  background: gold;
  border: 1px solid gold;
}

.facebook:hover{
  background: yellow;
}

.links i{
  font-size: 17px;
}
i span{
  margin-left: 8px;
  margin-right: 8px;
  font-weight: 500;
  letter-spacing: 1px;
  font-size: 16px;
  font-family: 'Poppins',sans-serif;
  color: black;
}
.signup{
  font-size: 15px;
  color: black;
  font-family: 'Poppins',sans-serif;
}
.signup a{
  color: #3498db;
  text-decoration: none;
}
.signup a:hover{
  text-decoration: underline;
}

</style>

<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
    
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
  
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

              <div class="intro">
                <h1><strong>로그인</strong></h1>
                <div class="custom-breadcrumbs"><a href="index.html">Home</a> <span class="mx-2">/</span> <strong>About</strong></div>
              </div>

            </div>
          </div>
        </div>
      </div>

    
    
    <div class="site-section bg-light" id="contact-section">
  
    <div class="bg-img">
      <div class="content">
        <header>Every 붕붕</header>
        
        
          <div class="field">
            <span class="fa fa-user"></span>
            <input type="text" class="id" id="id" name="id" required placeholder="아이디">
          </div>
	<div class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" class="pass-key" id="pw" name="pw" required placeholder="비밀번호">
            <span class="show">SHOW</span>
             
          </div>
          <span class='valid_info'></span>
	<div class="pass">
            <a> </a>
          </div>
         
	<div class="field">
            <input type="submit" value="LOGIN" onclick='login()'>
          </div>
	
	
	
	<div class="signup">회원이 아니신가요?<a href="/member/join">가입하러가기</a>
        </div>
	<div class="login">Or login with</div>
	
          	<a id="kakao-login-btn" href="javascript:loginWithKakao()">
			  <img
			    src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
			    width="222"
			  />
			</a>
			<br>
			<a href="https://developers.kakao.com/logout">로그아웃</a>
          </div>
	
	</div>
	
</div>
</div>
</div>
<script>
      const pass_field = document.querySelector('.pass-key');
      const showBtn = document.querySelector('.show');
      showBtn.addEventListener('click', function(){
       if(pass_field.type === "password"){
         pass_field.type = "text";
         showBtn.textContent = "HIDE";
         showBtn.style.color = "#3498db";
       }else{
         pass_field.type = "password";
         showBtn.textContent = "SHOW";
         showBtn.style.color = "#222";
       }
      });
      
      let login = () =>{
			const url = '/member/loginimpl';
			
			let params = {};
			params.id = id.value;
			params.pw = pw.value;
			
			let headerObj = new Headers();
			
			headerObj.append("content-type", "application/x-www-form-urlencoded");
			
			fetch(url,{
				method:"post",
				headers:headerObj,
				
				body:"data=" + JSON.stringify(params) 
			}) 
			.then(response => {
				if(response.ok){ 
					return response.text();
				}else{
					throw new AsyncResponseError(response.text());
				}
			})
			.then(text => {
				if(text == 'fail'){
					document.querySelector('.valid_info').innerHTML = '아이디나 비밀번호를 확인하세요';
				}else if(text =='success'){
					location.href="/";
				}
			}).catch((error)=>{
				error.alertMessage();
			})
		}
	
    
      
      function loginWithKakao() {
    	    Kakao.Auth.login({
    	      success: function(authObj) {
    	        alert(JSON.stringify(authObj))
    	      },
    	      fail: function(err) {
    	        alert(JSON.stringify(err))
    	      },
    	    })
    	    
    	  }
     
      //<![CDATA[
      // 사용할 앱의 JavaScript 키를 설정해 주세요.
      Kakao.init('4d17ea56d4446f9717ad7ae08873916f');
      // 카카오 로그인 버튼을 생성합니다.
      Kakao.Auth.createLoginButton({
          container: '#kakao-login-btn',
          success: function (authObj) {
              alert(JSON.stringify(authObj));
          },
          fail: function (err) {
              alert(JSON.stringify(err));
          }
      });
    //]]>
     
      
      
      /*
      Kakao.init('4d17ea56d4446f9717ad7ae08873916f');
      // 카카오 로그인 버튼을 생성합니다.
      Kakao.Auth.createLoginButton({
          container: '#kakao-login-btn',
          success: function (authObj) {
        	Kakao.API.request({
        		url:'/v2/user/me',
        		success: function(res){
        			console.log(res){
        				console.log(res);
        				var id = res.id;
        				var email = res.kakao_account.email;
        				var name = res.properties.nickname;
						var html = '<br>' + email + '<br>' + name;
						
						$('body').append(html);
					
        			
        			}
        			}
        		
        	})
        	}
      })
     
      Kakao.Auth.login({
			success.function(authObj){
				
				Kakao.API.request({
					uri:'/v2/user/me',
					success: function(res){
						console.log(res);
						
						var id = res.id;
						var email = res.kakao_account.email;
						var name = res.properties.nickname;
						var html = '<br>' + email + '<br>' + name;
						
						$('body').append(html);
					
						//location.href='kakaoRedirectForm.jsp?email='+ email + '&name=' + name;
					
					}
				})
			
				console.log(authObj);
				var token = authObj.access_token;
			
			},
			fail: function(err){
				alert(JSON.stringify(err));
			}
		});
		
      */
      
      
      
     /* 
      Kakao.Auth.authorize({
    	 redirectUri: 'http://localhost:9090/member/mypage' 
      });
      
     */
      //4d17ea56d4446f9717ad7ae08873916f
      
    </script>
    
    
    
    

<%@ include file="/WEB-INF/view/include/footer.jsp" %>   
    </div>
  <%@ include file="/WEB-INF/view/include/script.jsp" %>

  </body>

</html>