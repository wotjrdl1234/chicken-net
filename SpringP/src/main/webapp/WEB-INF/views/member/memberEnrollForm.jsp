<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	.mgroup{
	position: absolute;
	left : 840px;
	top: 200px;	
	background-color: orange;
	padding:10px 30px 10px 30px;
	
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
	  left : 830px;
	  top :750px;
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
	  left : 950px;
	  top :750px;
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
    font-size:0.5rem;
    color: white;
    display:inline-block;
    border-radius: 15px;
    transition:all 0.1s; 
  	position: absolute;
	left : 1030px;
	top: 115px;
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
	
	.main{
	position: absolute;
	left : 900px;
	top: 90px;
	}
	
	.warning{
	color:red;
	position: absolute;
	left : 800px;
	top: 150px;
	}
</style>
</head>
<body>
      
    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h1 class="main">????????????</h1>
            <h5 class="warning">???ID, ????????????, ????????? ????????????????????? ??????????????????.???</h5>
            <br>

            <form id="enrollForm" action="insert.me" method="post">
                <div class="form-group">
                	<div class="mgroup">
                    <label for="userId">ID</label><br>
                    <input type="text" class="form-control" id="userId" name="userId" required>
                    <div id="checkResult" style="display:none; font-size:0.8em"></div>
                    <br><br>
                    
                    <label for="userPwd">????????????</label><br>
                    <input type="password" class="form-control" id="userPwd" name="userPwd" required><br><br>
                    
                    <label for="checkPwd">???????????? ??????</label><br>
                    <input type="password" class="form-control" id="checkPwd" required><br><br>
                    
                    <label for="userName">??????</label><br>
                    <input type="text" class="form-control" id="userName" name="userName" required><br><br>
                    
                    <label for="email"> &nbsp;?????????</label><br>
                    <input type="email" class="form-control" id="email" name="email" ><br><br>
                                     
                    
                    <label for="phone"> &nbsp;????????????</label><br>
                    <input type="tel" class="form-control" id="phone" name="phone"><br><br>
                    
                    <label for="address"> &nbsp;??????</label><br>
                    <input type="text" class="form-control" id="address" name="address"><br><br>
             		
					
                    <label for="gender" id="gender2">?????? :</label>
                    <input type="radio" name="gender" id="Male" value="M">
                    <label for="Male">??????</label>
                    <input type="radio" name="gender" id="Female" value="F">
                    <label for="Female">??????</label><br><br>
                    </div>
                </div>
                <br>
                
                	<input type="button" value="????????????" onclick="location.href='http://localhost:8090/spring/'" class="back orange">
                    <button type="submit" id="enrollBtn" class="join orange" >????????????</button><!-- disabled  ????????????????????????-->
                    <button type="reset" class="join2 yellow"> ?????????</button>
            </form>
        </div>
        <br><br>
    </div>
   

</body>
</html>