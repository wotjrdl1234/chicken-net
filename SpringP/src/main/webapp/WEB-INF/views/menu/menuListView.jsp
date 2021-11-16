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
	top: 1170px;
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
	
  .choice{
  	text-decoration: none;
    font-size:2rem;
    padding:15px 5px 15px 5px;
    margin:20px;
    color: white;
    display:inline-block;
    border-radius: 15px;
    transition:all 0.1s; 
  	position: absolute;
	left : 760px;
	top: 1170px;
	border-color:white;
  }
  
  .choice:active{
      transform: translateY(3px);
    }
  .choice.yellow:active{
      border-bottom:2px solid #165195;
    }

  .choice.yellow{
      background-color: yellow;
      text-decoration:none; 
    }
	
  .choice:hover {
	 color : orange;
	}
  
  .title{
  	position: absolute;
	left : 800px;
	top: 80px;
  }
  
</style>
</head>
<body>


    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h1 class="title">실시간 치킨랭킹</h1>
            <br>             
            <br>
          <table id="menuList" align="center">
                <thead>
                  <tr>
                    <th>순위</th>
                    <th>이름</th>                 
                    <th>브랜드</th>  
                    <th>가격</th>              
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
                       </tr>
                    </c:forEach>                      
                                                                        
                </tbody>
            </table>
   			<input type="button" value="뒤로가기" onclick="location.href='http://localhost:8090/spring/'" class="back orange">
   			<input type="button" value="치킨추천 하러가기" onclick="location.href='menup.bo'" class="choice yellow">
           </div>
           </div>

   
</body>
</html>