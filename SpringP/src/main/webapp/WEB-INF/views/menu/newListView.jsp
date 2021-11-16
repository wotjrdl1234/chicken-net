<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.back{
  	text-decoration: none;
    padding:5px 5px 5px 5px;
    margin:20px;
    color: white;
    display:inline-block;
    border-radius: 15px;
    transition:all 0.1s; 
  	position: absolute;
	left : 1000px;
	top: 500px;
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
	left : 650px;
	top: 500px;
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
  
  .image{
    border-color:black;
    position: absolute;
    left : 450px;
    top: 200px;
  }	
</style>
</head>
<body>


    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h2 align="center"><img src="${ pageContext.servletContext.contextPath }/resources/images/source1.JPG" class="image"></h2>
            <br>             
            <br>
         	
   			<input type="button" value="뒤로가기" onclick="location.href='http://localhost:8090/spring/'" class="back orange">
   			<input type="button" value="가까운 치킨집 찾기" onclick="location.href='near.bo'" class="choice yellow">
           </div>
           </div>

   
</body>
</html>