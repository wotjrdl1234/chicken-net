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
	border-width: 3px;
	border-color: gray;
	text-align: center;
	border-radius: 15px;   
    position: absolute;
	left : 1000px;
	top: 225px;
	width: 500px;
	height: 450px;
    }
    
    td{
    position: relative;
	border-style: solid;
	border-width: 3px;
	border-color: gray;
   }
   
   th{
    position: relative;
	border-style: solid;
	border-width: 3px;
	border-color: gray;
   }
   
   .brand{
  	text-decoration: none;
    font-size:2rem;
    padding:15px 5px 15px 5px;
    margin:20px;
    color: white;
    display:inline-block;
    border-radius: 15px;
    transition:all 0.1s; 
  	position: absolute;
	left : 470px;
	top: 20px;
	border-color:yellow;
  }
  
  .brand:active{
      transform: translateY(3px);
    }
  .brand.orange:active{
      border-bottom:2px solid #165195;
    }

  .brand.orange{
      background-color: orange;
      text-decoration:none; 
    }
	
  .brand:hover {
	 color : brown;
	}
     
  #near1{
  	position: absolute;
	left : 530px;
	top: 200px;
	width: 150px;
	height: 100px;
  }  
  
  #near2{
  	position: absolute;
	left : 730px;
	top: 200px;
	width: 150px;
	height: 100px;
  } 
    
  #near3{
  	position: absolute;
	left : 530px;
	top: 320px;
	width: 150px;
	height: 100px;
  } 
    
  #near4{
  	position: absolute;
	left : 730px;
	top: 320px;
	width: 150px;
	height: 100px;
  }  
   
  #near5{
  	position: absolute;
	left : 530px;
	top: 440px;
	width: 150px;
	height: 100px;
  } 
    
  #near6{
  	position: absolute;
	left : 730px;
	top: 440px;
	width: 150px;
	height: 100px;
  }   
   
  #near7{
  	position: absolute;
	left : 530px;
	top: 560px;
	width: 150px;
	height: 100px;
  } 
    
  #near8{
  	position: absolute;
	left : 730px;
	top: 560px;
	width: 150px;
	height: 100px;
  }   
   
  .back{
 	position: absolute;
  	left : 1000px;
	top: 800px;
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
	left : 950px;
	top: 700px;
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
            <br>             
            <br>
          <table id="nearList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th>지점</th>              
                    <th>번호</th>  
                    <th>영업시간</th>                                       
                  </tr>
                </thead>
                 <tbody id="nearT">
                	<c:forEach items="${ near }" var="n">
	                    <tr>	               	                        
	                        <td><c:out value="${ n.branch }"/></td>
	                        <td><c:out value="${ n.CNumber }"/></td>	 
	                        <td><c:out value="${ n.CTime }"/></td>                      
	                    </tr>
                    </c:forEach>
                </tbody>           
            </table>
   			<input type="button" value="뒤로가기" onclick="location.href='http://localhost:8090/spring/'" class="back orange">
   			<input type="button" value="BBQ" class="brand orange" id="near1">
   			<input type="button" value="네네치킨" class="brand orange" id="near2">
   			<input type="button" value="BHC" class="brand orange" id="near3">
   			<input type="button" value="또봉통닭" class="brand orange" id="near4">
   			<input type="button" value="푸라닭" class="brand orange" id="near5">
   			<input type="button" value="60계치킨" class="brand orange" id="near6">
   			<input type="button" value="페리카나" class="brand orange" id="near7">
   			<input type="button" value="또래오래" class="brand orange" id="near8">
	         </div>
		     </div>


		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> <!-- Jquery 사용하려고 CDN 사용한거임-->
		   <script >
		   $(".brand").on("click", function(){  //class로 selector 잡아서 click 이벤트
			   var brand = $(this).val(); // $(this)가 사용자가 클릭한 태그를 가리킴
			   
			   $.ajax({ 
				    url:'/spring/nearChange.bo', 
				    type:'post',
				    data:{cBrand : brand}, 
				    success: function(data) {
				    	
				    	//console.log(data)
				    	
				    	var n = data.near; // data에서 받아온거 . 이나 []로 접근 json 확인
				    	var html = ""; 
				    	$.each(n, function(idx, val){ // 자바스크립트에 foreach문
				    		var addTag = "<tr>"                                      		
                        		+"<td>"+val.branch+"</td>"
                        		+"<td>"+val.cnumber+"</td>"
                        		+"<td>"+val.ctime+"</td>"                    
                    			+"</tr>";

                    		html += addTag;
                    			
				    	})
				        $("#nearT").html(html);
				    },
				    error: function(err) {
				    }
				});
			   
		   })
			   
		   </script>
   
</body>
</html>