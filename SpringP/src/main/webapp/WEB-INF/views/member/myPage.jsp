<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	left : 1020px;
	top: 140px;
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
	left : 840px;
	top: 200px;	
	background-color: orange;
	padding:20px 30px 20px 30px;
	
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
	  top :580px;
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
	  top :580px;
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
	  left : 880px;
	  top :100px;
	}
</style>
</head>
<body>
	<div class="content">
		<br> <br>
		<div class="innerOuter">
			<h1 class="main">마이페이지</h1>
			<br>  

			<div class="modal fade" id="updatePwd">
				<div class="modal-dialog modal-sm">
						
					</div>
				</div>
			</div>
			<form action="update.me" method="post">
			<input type="hidden" name="userId" value="${ loginUser.userId }">
				<div class="mgroup">				
					<label for="userName">이름</label><br> <input type="text"
						class="form-control" id="userName" name="userName"
						value="${ loginUser.userName }" readonly><br><br> <label
						for="email">이메일</label><br> <input type="email"
						class="form-control" id="email" name="email"
						value="${ loginUser.email }"><br><br><label
						for="phone">전화번호</label><br> <input type="tel"
						class="form-control" id="phone" name="phone"
						value="${ loginUser.phone }"><br><br> <label>주소</label><br>
					<input type="text" class="form-control" id="address" name="address" value="${ loginUser.address }"><br><br>
				    <label for="gender">성별</label>
                    &nbsp;&nbsp;&nbsp;<c:out value="${ loginUser.gender }"/>
					

				</div>
				<br>

				<div class="btns" align="center">
					<input type="button" value="뒤로가기" onclick="location.href='http://localhost:8090/spring/'" class="back orange">
					<button type="submit" class="join orange">수정하기</button>
					<button type="button" onclick="$('#postForm').submit();"
						class="join2 yellow">탈퇴하기</button>
				</div>
			</form>

		</div>
		<br> <br>
	</div>

	<form action="delete.me" method="post" id="postForm">
		<input type="hidden" name="userId" value="${ loginUser.userId }">
	</form>

	
</body>
</html>