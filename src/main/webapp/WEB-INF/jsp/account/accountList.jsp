<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>	
 	<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<!--  	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script> -->
<style>
	
	section {
		margin-bottom : 150px;
	}
	
	.title {
	 padding-bottom : 70px;
	}
	
	.bankType {
		text-align : center;
		font-size : 27px;
	
		height : 60px;
		/* margin-bottom : 40px; */
	}
	
	
	#yr-bank {
/* 	background : #ffc221;*/
	background :#e2e2e2; 
	/* border : 3px solid #e2e2e2;
	border-bottom : white; */
	}
	
	#other-bank {
		border-bottom: 3px solid #e2e2e2;
	}
	
	div.accountList {
		margin-top : 80px;
	}
	
	#btn-read-more {
		margin : 30px 50px 0px 50px auto;
	}
	
	.account-box {
		margin : 20px;
	
	}
	
	.account-box:hover {
		border : 3px solid #e2e2e2; 
		opacity :0.9;
	}
	
	.account-add-box {
		margin : 40px 20px;
	}
	
	#nickname {
		color : black;
		/* text-align : left; */
		font-size : 24px;
		font-weight : bold;
		/* color : #ffc221; */
		margin-left:10px;
	}	
	#accountNo {
	/* 	text-align : left; */
		font-size : 18px;
	}
	
	#balance {
		font-size : 26px;
	}
</style>
<script>

	function goAccountDetail(accountNo) {
		location.href='${ pageContext.request.contextPath }/account/accountDetail.do?accountNo='+accountNo
		
	}

</script>
<script>
$(document).ready(function(){
	$('#add-account-btn').click(function(){
		alert(dd)
		location.href = "${ pageContext.request.contextPath }/account/accountOpen.do"
	})
})
</script>
</head>
 <!-- body -->
<body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="${ pageContext.request.contextPath }/resources/images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader --> 
      <!-- header -->
      <header>
 			<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>      
      </header>
      <!-- end header -->
      
      
      <section>
      
        <div class="brand_color">
         <div class="container">
            <div class="row">
                <div class="col-md-12">
                   
                </div>
            </div>
         </div>
    	</div>
      
      	<!-- service --> 
      <div class="service">
    
    	 
         <div class="container">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <div class="title">
                     <h2>my <strong class="black">account</strong></h2>
             <!--         <span>Easy and effective way to get your device repaired.</span> -->
                  </div>
               </div>
            </div>
            </div>
            
             <div class="row">
               <div class="col-md-6 bankType" id="yr-bank">
               <a href="${ pageContext.request.contextPath }/account/accountList.do">YR Bank</a>
               </div>
               <div class="col-md-6 bankType" id="other-bank">
               <a href="${ pageContext.request.contextPath }/account/openBankAccountList.do">타행계좌</a>
               </div>
          </div>
         
        
            <div class="container accountList">
            <div class="row">
            
				
				
				
			<c:forEach items="${ accountList }" var="account" varStatus="loop">	
               <div class="col-md-6">
                  <div class="service-box account-box" onclick="goAccountDetail('${account.accountNo}')">
                  <div id="nickname"> 
                     ${ account.accountNickName }
                  </div>
                     <h4 id="accountNo">${ account.accountNo }</h4>
                     <h1 id="balance"> ${ account.balance }원</h1>
                    <div class="row">
                  	<button id="btn-read-more" class="col-md-5 read-more" onclick="goAccountDetail('${account.accountNo}')">이체</button>
                  	<button id="btn-read-more" class="col-md-5 read-more" onclick="goAccountDetail('${account.accountNo}')">이용내역</button>
                  	</div>
                  </div>
               </div>
               </c:forEach>
            
               
               <div class="col-md-6">
                  <div class="service-box account-add-box">
                  <i><img src="/YRBank-MVC/resources/icon/service2.png"></i>
                     <button id="btn-read-more add-account-btn" class="col-md-5 read-more">계좌 추가 개설하기</button>
                  	</div> 
                  </div>
               </div>
            
              
            </div>
         </div>

      <!-- end service -->
      </section> 

      <%-- footer --%>
      <footer>
         <jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
      </footer>
      <%-- end footer --%>
      
      <!-- Javascript files--> 
  		<jsp:include page="/WEB-INF/jsp/include/javascriptFiles.jsp"></jsp:include>
</body>
</html>