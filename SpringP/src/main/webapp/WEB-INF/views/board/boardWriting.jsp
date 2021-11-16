<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  
  .title{
  	position: absolute;
	left : 830px;
	top: 230px;
	font-size:0.8rem;
	
  }
  
  .text{
  	position: absolute;
	left : 630px;
	top: 150px;
	text-align: center;
	background-color: white;
	width: 700px;
	height:50px;
  }
  
  .text2{
  	position: absolute;
	left : 700px;
	top: 280px;
	background-color: orange;
	width: 560px;
	height:300px;
	text-align: center;	
  }
  
  .text3{
  	position: absolute;
	left : 1050px;
	top: 230px;
	font-size:0.8rem;	
  }
  
  .join{
	  text-decoration: none;
      font-size:1rem;
      color:white;
      padding:10px 18px 10px 18px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 880px;
	  top :650px;
	  border-color:white;	  
	}
	
	.join:active{
      transform: translateY(3px);
    }
	.join.orange:active{
      border-bottom:2px solid #165195;
    }

    .join.orange{
      background-color: orange;
      text-decoration:none; 
    }
	
	.join:hover {
	 color : brown;
	}
	
	.join2{
	  text-decoration: none;
      font-size:1rem;
      color:white;
      padding:10px 18px 10px 18px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 970px;
	  top :650px;
	  border-color:white;
	}
	
	.join2:active{
      transform: translateY(3px);
    }
	.join2.yellow:active{
      border-bottom:2px solid #165195;
    }

    .join2.yellow{
      background-color: yellow;
      text-decoration:none; 
    }
	
	.join2:hover {
	 color : brown;
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
	left : 1170px;
	top: 610px;
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
        <div class="innerOuter">
            
            <br>

            <form id="enrollForm" action="insert.bo" method="post">
                <div class="form-group" id="write">
                    <h3 class="title"><label for="boardContent">브랜드 :</label>
                   	<c:out value="${ b.boardTitle }"/>
                    <div id="checkResult" style="display:none; font-size:0.8em"></div></h3>
                    <br>
                    
                    <h1 class="text"><label for="boardTitle"></label>
                    <c:out value="${ b.boardContent }"/></h1>
                    
                    <br>
                                
                    <h3 class="text2"><label for="content"></label>
                    <c:out value="${ b.content }"/></h3>
                    <br>
                    
                    <h3 class="text3"><label for="createDate">작성일 :</label>
                    <c:out value="${ b.createDate }"/></h3>
              
                  	
                </div>
                <br>
                <div class="btns" align="center">
                    <input type="button" value="수정" class="join orange" onclick="location.href='boardUpdateView.bo?boardNo=${b.boardNo}'"></button>
                    <button type="reset" class="join2 yellow" onclick="location.href='deleteBoard.bo?boardNo=${b.boardNo}'" >삭제</button>
                    <input type="button" value="뒤로가기" onclick="location.href='list.bo'" class="back orange">
                </div>
            </form>
        </div>
        <br><br>
    </div>
   
	
</body>
</html>