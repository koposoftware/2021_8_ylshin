<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>	
 	<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<style>
	 #main-layout {
		width : 90%;
		margin: 0 auto;
	}
	
	.main {
		width : 90%;
		display : flex;
		justify-content : center;
		margin-right: 30px;
	}
	
	section {
    	width : 1200px;
    }
    

	#acc-trans-btn {
		margin :  30px 15px 0px 80px;
	}
	#acc-delete-btn{
		margin :  30px 50px 0px 15px;
	}

	#nickname {

		font-size : 28px;
		font-weight : bold;
		margin-left:10px;
	}	
	#accountNo {
		font-size : 23px;
	}
	
	#balance {
		font-size : 32px;
	}
	.product .title {
		padding-bottom : 0px;
	}
	
	.product .title h2:after {
		width : 1140px;
	}
	
	.product .title h2 {
		font-size : 40px;
		margin-bottom : 12px;
	}
	
	table {
		font-size : 22px;
	}
	
	#trans-info-col {
		width : 30%;
	}
	

	th#balance-col {
		padding-left : 30px;
	}
	
	th#trans-date-col{
		padding-left : 60px;
	}
	th#send-trans-money {
		color : #d74351;
	/* 	text-align:right;
		padding-right :150px; */
	}
	
	th#receive-trans-money {
		color : #0c7ffa;

	}
	.table td, .table th {
    padding: .75rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
    text-align: center;
}
	.readmore {
	
	}
</style>
<script>
/* $(document).ready(function() {
	let l = ${basicHistoryList}
	console.log(l)
}) */
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
      
      <body class="main-layout">
      <div class="row main">
      <aside id="side-menu">
			<div id="diyLnb" class="on">
			<h2 class="tit">하나로통장</h2>
			<ul class="depth1">
				
						<li class="on"><a href="#//HanaBank" >통장전환</a></li>
						
						<li><a href="#//HanaBank">My하나로통장</a></li>
						
						<li><a href="#//HanaBank">대시보드</a></li>
	
				</ul>
				</div>
		</aside>
   
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
            <div class="row">
            
               <div class="col-md-12">
                  <div class="service-box account-box">
               
                    <h3 id="nickname">비상금</h3> 
                 
                     <h4 id="accountNo">${ hanaro.accountNo }</h4>
                     <h1 id="balance"> ${ hanaro.savingBalance }원</h1>
                    <div class="row">
                  	<button id="acc-trans-btn" class="col-md-5 read-more">이체</button>
                  	<button id="acc-delete-btn" class="col-md-5 read-more">잔액이동</button>
                  	</div>
                  </div>
               </div>
        
            </div>
         </div>
      </div>
      <!-- end service -->
      
           <div class="product">
         	<div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title history-title">
                     <h2>거래 <strong class="black">내역</strong></h2>
                     <!-- <span>We package the products with best services to make you a happy customer.</span> -->
                  </div>
                  <table class="table">
					  <thead>
					    <tr>
					      <th scope="col" id="trans-date-col">날짜</th>
					      <th scope="col" id="trans-info-col">거래정보</th>
					      <th></th>
					      <th scope="col" id="trans-money-col">금액</th>
					   	  <th scope="col" id="balance-col">잔액</th>
					    </tr>
					  </thead>
					  <tbody>					      
					<!--       [SplitHistoryVO [code=0, accountNo=null, transCode=null, splitFrom=consumption_balance, splitTo=basic_balance, transMoney=50000, transDate=2021-09-12 12:09:03, memo=null, basicBalance=150000, consumptionBalance=0, savingBalance=0] -->
					<c:forEach items="${ historyList }" var="savingHistory" varStatus="loop">
					    <tr>
					   <td>${ savingHistory.transDate }</td>
					   <c:choose>
					    <c:when test="${ savingHistory.splitFrom eq 'saving_balance' }"> 
					      <td>${ savingHistory.splitTo }</td>
					      <td>${ savingHistory.memo }</td>
					      <th scope="row" id="send-trans-money">  -${ savingHistory.transMoney }원</th>
					     </c:when>
					     <c:otherwise>
					      <td>${ savingHistory.splitFrom}</td>
					       <td>${ savingHistory.memo }</td>
					      <th scope="row" id="receive-trans-money"> +${ savingHistory.transMoney } 원</th>
					    </c:otherwise>
					    </c:choose>
					      <td>${ savingHistory.savingBalance }원</td>
					    </tr>
					 </c:forEach>
				
					   
					  </tbody>
					</table>
               </div>
            </div>
         </div>
      </div>
     
      
      </section>  
      </div>
</body>
      <%-- footer --%>
      <footer>
         <jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
      </footer>
      <%-- end footer --%>
      
      <!-- Javascript files--> 
  		<jsp:include page="/WEB-INF/jsp/include/javascriptFiles.jsp"></jsp:include>
</body>
</html>