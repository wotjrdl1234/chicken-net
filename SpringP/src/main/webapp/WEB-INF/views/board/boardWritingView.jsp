<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	left : 1170px;
	top: 580px;
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
	
	.mgroup{
	font-size:1.2rem;
	position: absolute;
	left : 700px;
	top: 200px;	
	background-color: orange;
	padding:20px 30px 20px 30px;
	text-align: center;
	}
	
	#boardTitle{
	width:140px;
	}
	
	#content{
	width: 500px;
	height: 200px;
	}
	
	.join{
	  text-decoration: none;
      font-size:1.2rem;
      color:white;
      padding:10px 18px 10px 18px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 830px;
	  top :610px;
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
      font-size:1.2rem;
      color:white;
      padding:10px 18px 10px 18px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 980px;
	  top :610px;
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
	
	.main{
	  position: absolute;
	  left : 910px;
	  top :80px;
	  font-size:2.5rem;
	}
	
</style>
</head>
<body> 
    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h1 class="main">등록하기</h1>
            <br>

            <form id="enrollForm" action="insert.bo" method="post">
                <div class="mgroup">
                    <label for="boardContent">&nbsp;제목 :</label>
                    <input type="text" class="form-control" id="boardContent" name="boardContent" required><br>
                    <div id="checkResult" style="display:none; font-size:0.8em"></div>
                    <br>
                    
                    <label for="boardTitle">브랜드 :</label>
                    <input type="text" class="form-control" id="boardTitle" name="boardTitle"  required><br><br>
                    
                                
                    
                    <textarea type="textarea" class="form-control" id="content" name="content" required></textarea><br><br>
              
                  	
                </div>
                <br>
                <div class="btns" align="center">
                    <button type="submit" id="enrollBtn" class="join orange">완료</button>
                    <button type="reset" class="join2 yellow"> 초기화</button>
                    <input type="button" value="뒤로가기" onclick="history.back(-1)" class="back orange">
                </div>
            </form>
        </div>
        <br><br>
    </div>
   
	
</body>
</html>