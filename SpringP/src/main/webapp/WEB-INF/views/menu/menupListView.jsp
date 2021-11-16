<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
table{
	border-style: solid;
	border-width: 3px;
	border-color: gray;
	width: 550px;
	height: 1000px;
	text-align: center;
	border-radius: 15px;
	position: absolute;
	left : 650px;
	top: 190px;
  }
  td{
	border-style: solid;
	border-width: 3px;
	border-color: gray;
  }
   th{
	border-style: solid;
	border-width: 3px;
	border-color: gray;
  }
  
  .title{
  	position: absolute;
	left : 860px;
	top: 80px;
  }
  
  .back{
  	text-decoration: none;
    padding:5px 5px 5px 5px;
    margin:20px;
    color: white;
    display:inline-block;
    border-radius: 15px;
    transition:all 0.1s; 
  	position: absolute;
	left : 1110px;
	top: 1185px;
	border-color:white;
  }
  
  .back:active{
      transform: translateY(3px);
    }
  
  .back.orange:active{
      border-bottom:2px solid #165195;
    }

  .back.orange{
      background-color: gray;
      text-decoration:none; 
    }
	
  .back:hover {
	 color : black;
	}
</style>
</head>
<body>


    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h1 class="title">랭킹 추천</h1>
            <br>             
            <br>
          <table id="menuList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th>순위</th>
                    <th>이름</th>                 
                    <th>브랜드</th>  
                    <th>가격</th>
                    <th>추천</th>              
                  </tr>
                </thead>
                <tbody>                       
		<c:set var="i" value="0"/>            
                   <c:forEach items="${ menu }" var="m">
		<c:set var="i" value="${ (i+1) }"/>
                       <tr>     
                       <td>
                        <c:if test="${ i < 25 }">
						<c:out value="${ i }" />
						</c:if>
						</td>                   
                           <td><c:out value="${ m.brand }" /></td>
                           <td><c:out value="${ m.chicken }"/></td>                   
                           <td><c:out value="${ m.price }"/></td>
                           <td><button type = "button" class="recommend" data-chicken="${ m.chicken }">추천</button></td>                          
                       </tr>
                    </c:forEach>                      
                                                                        
                </tbody>
            </table>
   			<input type="button" value="뒤로가기" onclick="location.href='rank.bo'" class="back orange">
   			
           </div>
           </div>

   <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> <!-- Jquery 사용하려고 CDN 사용한거임-->
   <script >
   $(".recommend").on("click", function(){ //클릭 이벤트임 selector 랑 jquery 문법같은거 몇개 찾아보셈 
	   var chicken = $(this).data("chicken"); // jquery 데이터 속성사용하는거임
	   
	   $.ajax({ // ajax 검색해서 보셈
		    url:'/spring/recommend.bo', // 보낼 url 
		    type:'post',  // 전송 타입 GET POST
		    data:{chicken : chicken},  // data  보낼데이터 JSON 형식이라 key map {key : data} 형식으로씀 여러개 보낼시 {key1 : data1, key2 : data2} 이런식으로 씀 다양하게있으니까 찾아보셈
		    success: function(data) { // 응답성공시 이쪽로직탐
		        //알림창 채우면댐 //이쪽에 하고싶은 로직 추가하면댐
		        alert("추천되었습니다.");
		    },
		    error: function(err) { // 에러시 이쪽로직탐
		    	console.log(err);
		    }
		});
   })
	   
   </script>
   
</body>
</html>