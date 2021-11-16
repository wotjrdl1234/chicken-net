<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	height: 700px;
	text-align: center;
	border-radius: 15px;
	position: absolute;
	left : 680px;
	top: 300px;
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
	left : 900px;
	top: 1000px;
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
	 
  .title{
  	position: absolute;
	left : 870px;
	top: 200px;
  }
  .write{
  	text-decoration: none;
    font-size:1rem;
    padding:8px 5px 8px 5px;
    margin:20px;
    color: white;
    display:inline-block;
    border-radius: 15px;
    transition:all 0.1s; 
  	position: absolute;
	left : 680px;
	top: 230px;
	border-color:white;
  }
  
   .write:active{
      transform: translateY(3px);
    }
  .write.yellow:active{
      border-bottom:2px solid #165195;
    }

  .write.yellow{
      background-color: yellow;
      text-decoration:none; 
    }
	
  .write:hover {
	 color : orange;
	}
</style>
</head>
<body>
	 
    
            <h1 class="title">치킨게시판</h1>
            <br>
            <!-- 로그인후 상태일 경우만 보여지는 글쓰기 버튼-->
            <c:if test="${ !empty loginUser }">
            	<a href="enrollForm.bo" class="write yellow">글쓰기</a>
            </c:if>
            <br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th>브랜드</th>
                    <th>제목</th>                 
                    <th>작성일</th>              
                  </tr>
                </thead>
                <tbody>
                	<c:forEach items="${ list }" var="b">
	                    <tr>	                    		               
	                        <td><c:out value="${ b.boardTitle }"/></td>
	                        <td><a href="boardDetaile.bo?boardNo=${b.boardNo}"><c:out value="${ b.boardContent }"/></a></td>                   
	                        <td><c:out value="${ b.createDate }"/></td>	                       
	                    </tr>
                    </c:forEach> 
                </tbody>
            </table>
            <input type="button" value="뒤로가기" onclick="location.href='http://localhost:8090/spring/'" class="back orange">
           
</body>
</html>