<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!-- header inner -->
         <div class="header">
            <div class="head_top">
               <div class="" style="width:1500px; margin: auto;">
                  <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                       <div class="top-box">
                        <ul class="sociel_link">
                         <li> <a href="#"><i class="fa"></i></a></li>
                    
                     </ul>
                    </div>
                  </div>
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                       <div class="top-box">
                       
                    </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="" id="head-top" style="width:1500px; margin: auto;">
            <div class="row">
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div  id="logo" class="logo"> <a href="index.html"><img src="${ pageContext.request.contextPath }/resources/images/hanabank-logo.png" id="hana-logo" alt="logo"/></a> </div>
                     </div>
                  </div>
               </div>
              
              
              
               <div class="col-xl-6">
                  <div class="menu-area">
                     <div class="limit-box">
 
		<nav class="main-menu">                    
           <ul class="menu-area-main">
   
             <li class="active"> <a href="${ pageContext.request.contextPath }">Home</a> </li>
     
         
         <li class="nav-item dropdown">
         <a class="nav-link dropdown-toggle" href="${ pageContext.request.contextPath }/hanaro" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            하나로통장
          </a>
          
         <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">             		  	
     	    <li><a class="dropdown-item" href="${ pageContext.request.contextPath }/hanaro/selectJoin">상품가입</a></li>
            <li><a class="dropdown-item" href="${ pageContext.request.contextPath }/hanaro/${loginMember.userCode}">My하나로통장</a></li>
            <li><a class="dropdown-item" href="${ pageContext.request.contextPath }/hanaro/dashBoard/${loginMember.userCode}">예산설정</a></li>
         </ul>
         </li>
         
         	<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           	 내 소비
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="${ pageContext.request.contextPath }/spending/myCalendar">소비현황</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/spending/spendingAnalysis">카테고리별 소비</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/spending/challenge">도전하기</a></li>
          </ul>
      	</li>
         	<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           	 대시보드
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/dashBoard/budgetAnalysis">예산현황</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/dashBoard/savingAnalysis">저축현황</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/dashBoard/savingAnalysis">추천상품</a></li>
        
          </ul>
      	</li>
        
      

	              
      </ul>
      </nav>
                     </div>
                  </div>
               </div>
              
               <div class="col-xl-3 col-lg-2 col-md-2 col-sm-2">
                     <c:choose>
                     	<c:when test="${ empty loginMember }">
                    	 	<li><a id="loginBtn" class="buy" href="${ pageContext.request.contextPath }/member/login">로그인</a></li>
                    	 	<li><a style =" margin :18px 5px; background: white; border: 3px solid #009b9d; padding-top : 7px;width: 141px; height:50px;text-align: center;border-radius: 5px;float: right; color:#009b9d"
    						id="loginBtn" class="">회원가입</a></li>
                    	</c:when>
               			<c:otherwise>
               			 
                      
                       		<li><a id="loginBtn" class="buy" href="${ pageContext.request.contextPath }/member/logout">로그아웃</a></li>
                        <span style="font-size : 24px; float: right; font-weght : 600; margin : 20px 30px; color:black"> ${ loginMember.name } 님 </span>
                     	</c:otherwise>
                     </c:choose>
          		</div>
            </div>
         </div>
        
         </div>
         <!-- end header inner --> 