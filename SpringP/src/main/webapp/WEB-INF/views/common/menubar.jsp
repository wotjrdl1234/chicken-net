<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<style>
   
  body {

	font-family:"BMJUA_ttf";

	src:url('/spring/resources/font/BMJUA_ttf.ttf');

	src:url('/spring/resources/font/BMJUA_ttf.ttf?#iefix') format('embedded-opentype'),

	url('/spring/resources/font/NanumGothic.woff') format('woff'),

	url('/spring/resources/font/NanumGothic.svg#NanumGothic') format('svg')

	src:local(※), url('/spring/resources/font/NanumGothic.woff') format('woff');

	}

    .main{
	color:orange;
	position: absolute;
	left : 900px;
	top :180px;
	
	}
			
	.menu1{
	color:orange;
	position: absolute;
	left : 540px;
	top : 250px;
	
	}
	
	.menu2{
	 position: absolute;
	 left : 920px;
	 top : 330px;
	
	}
	
	.menu3{
	 color:orange;	
	 position: absolute;
	 left : 1220px;
	 top :470px;
	
	}
	
	.rank{
	color:black;
	position: absolute;
	left : 750px;
	top : 290px;
	}
	
	.new{
	position: absolute;
	left : 830px;
	top : 400px;
	
	}
	
	.near{
	  text-decoration: none;
      font-size:2rem;
      color:white;
      padding:40px 18px 40px 18px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 810px;
	  top :620px;
	}
	
	.near:active{
      transform: translateY(3px);
    }
    
	.near.orange:active{
      border-bottom:2px solid #165195;
    }

    .near.orange{
      background-color: orange;
      text-decoration:none; 
    }
	
	.near:hover {
	 color : black;
	}
		
	.list{
	 color:black;
	 position: absolute;
	 left : 1400px;
	 top :495px;
	}
	
	.join{
	  text-decoration: none;
      font-size:2rem;
      color:white;
      padding:40px 18px 40px 18px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 1120px;
	  top :300px;
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
	 color : black;
	}
	
	.join2{
	  text-decoration: none;
      font-size:2rem;
      color:white;
      padding:40px 18px 40px 18px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 1310px;
	  top :300px;
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
	 color : black;
	}
	
	.join3{
	  text-decoration: none;
      font-size:2rem;
      color:white;
      padding:40px 7px 40px 7px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 1120px;
	  top :320px;
	}
	
	.join3:active{
      transform: translateY(3px);
    }
	.join3.orange:active{
      border-bottom:2px solid #165195;
    }

    .join3.orange{
      background-color: orange;
      text-decoration:none; 
    }
	
	.join3:hover {
	 color : black;
	}
	
	.join4{
	  text-decoration: none;
      font-size:2rem;
      color:white;
      padding:40px 7px 40px 7px;
      margin:20px;
      display:inline-block;
      border-radius: 15px;
      transition:all 0.1s;   
	  position: absolute;
	  left : 1305px;
	  top :320px;
	}
	
	.join4:active{
      transform: translateY(3px);
    }
	.join4.yellow:active{
      border-bottom:2px solid #165195;
    }

    .join4.yellow{
      background-color: yellow;
      text-decoration:none; 
    }
	
	.join4:hover {
	 color : black;
	}
	
	.welcome{
	  position: absolute;
	  left : 950px;
	  top :450px;
	}
	
	 .some{
	border-style: solid;
	border-width: 3px;
	border-color: gray;
	width: 310px;
	height: 250px;
	text-align: center;
	border-radius: 15px;
	position: absolute;
	left : 1150px;
	top: 520px;
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

  .some2{
	border-style: solid;
	border-width: 3px;
	border-color: gray;
	width: 310px;
	height: 450px;
	text-align: center;
	border-radius: 15px;
	position: absolute;
	left : 490px;
	top: 320px;
  }
</style>
</head>
<body>
	<c:if test="${ !empty msg }">
		<script>
			alert("${msg}");
		</script>
		<c:remove var="msg" scope="session"/>
	</c:if>
        
            <div class="main">
                <h1 >치킨 닷컴</h1>
            </div>
                <table id="boardList" class="some" align="center" >
               
                <tbody>
                	<c:forEach items="${ list }" var="b" begin="0" end="3" step="1">
	                    <tr>	                    		               
	                        <td><c:out value="${ b.boardTitle }"/></td>
	                        <td><a href="boardDetaile.bo?boardNo=${b.boardNo}" style="color: black; font-size:1rem" class="display-4 font-weight-bold"><c:out value="${ b.boardContent }"/></a></td>                   
	                        <td><c:out value="${ b.createDate }"/></td>	                       
	                    </tr>
                    </c:forEach> 
                </tbody>
            </table>
            
                 <table id="menuList" align="center" class="some2">
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
                   <c:forEach items="${ menu }" var="m" begin="0" end="7" step="1">
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
                   
                      
                <!-- 로그인 전 -->
          
                <c:if test="${ empty sessionScope.loginUser }">
	                <a href="enrollForm.me" class="join orange">회원가입</a> 
	                <a data-toggle="modal" data-target="#loginModal" class="join2 yellow">로그인</a> 
                </c:if>
              
                <!-- 로그인 후  -->
                <c:if test="${ !empty sessionScope.loginUser }">
	                <label class="welcome">${ sessionScope.loginUser.userName }님 환영합니다</label> &nbsp;&nbsp;
	                <a href="myPage.me" class="join3 orange">마이페이지</a>
	                <a href="logout.me" class="join4 yellow">로그아웃</a>
                </c:if>  
                
              
          
      
        		<div class="menu1">
        		<h3>실시간 치킨랭킹</h3>          
                </div>
                <div class="menu2">
        		<h4>신메뉴 소식</h4>          
                </div>
                <div class="menu3">
        		<h3>치킨 게시판</h3>          
                </div>                          
                <a href="rank.bo" class="rank">더보기</a>           
                <a href="new.bo" class="new"><img src="${ pageContext.servletContext.contextPath }/resources/images/chicken.jpg" width="300" height="200"></a>
                <a href="near.bo" class="near orange" >가까운 치킨집찾기</a>
                <a href="list.bo" class="list">더보기</a>
           


    <div class="modal fade" id="loginModal">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Login</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button> 
            </div>

            <form action="login.me" method="post">
                <!-- Modal Body -->
                <div class="modal-body">
                    <label for="userId" class="mr-sm-2">ID :</label>
                    <input type="text" class="form-control mb-2 mr-sm-2" placeholder="Enter ID" id="userId" name="userId"> <br>
                    <label for="userPwd" class="mr-sm-2">Password:</label>
                    <input type="password" class="form-control mb-2 mr-sm-2" placeholder="Enter password" id="userPwd" name="userPwd">
                </div>
                
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">로그인</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                </div>
            </form>
            </div>
        </div>
    </div>

   

</body>
</html>