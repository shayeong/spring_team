<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-3">
  <h2>팀 수정</h2>
  <form action="update"
  		method="post">
  	<input type="hidden" name="teamno" value="${dto.teamno }">
  	<input type="hidden" name="col" value="${param.col }">
  	<input type="hidden" name="word" value="${param.word }">
  	<input type="hidden" name="nowPage" value="${param.nowPage }">

    <div class="mb-3 mt-3">
      <label for="wname">작성자:</label>
      <input type="text" class="form-control" id="wname" value="${dto.wname}" name="wname">
    </div>
    <div class="mb-3 mt-3">
      <label for="tname">팀 이름:</label>
      <input type="text" class="form-control" id="tname" value="${dto.tname}" name="tname">
    </div>
    
    
    <div class="input-group mb-3">
      <span class="input-group-text" for="skills">기술</span>
      <div class="mb-3 mt-3">
      <input type="checkbox" class="form-check-input m-2" id="javascript" name="skills" value="javascript" /> javascript 
      </div>
   	  <div class="mb-3 mt-3">
   	  <input type="checkbox" class="form-check-input m-2" id="java" name="skills" value="java" /> java
   	  </div> 
      <div class="mb-3 mt-3">
      <input type="checkbox" class="form-check-input m-2" id="jsp" name="skills" value="jsp" /> jsp 
      </div>
      <div class="mb-3 mt-3">
      <input type="checkbox" class="form-check-input m-2" id="spring" name="skills" value="spring" /> spring
      </div>
     <c:forTokens var="list" items="${dto.skills}" delims=", ">
      	<script>
      		document.getElementById('${list}').checked = true;
      	</script>
      </c:forTokens>   
    </div>
    
    
    <div class="mb-3 mt-3">
      <label for="phone">전화번호:</label>
      <input type="text" class="form-control" id="phone" value="${dto.phone}" name="phone">
    </div>
    <div class="mb-3 mt-3">
      <label for="address">주소:</label>
      <input type="text" class="form-control" id="address" value="${dto.address}" name="address">
    </div>
    <div class="mb-3 mt-3">
      <label for="zipcode">우편번호:</label>
      <input type="text" class="form-control" id="zipcode" value="${dto.zipcode}" name="zipcode">
    </div>
    
    <div class="input-group mb-3">
    <span class="input-group-text">성별</span>
    <div class="form-check">
      <label class="form-check-label" for="radio1">남자</label>
      <input type="radio" class="form-check-input m-2" id="radio1" name="gender" value="남자" ${dto.gender == '남자' ? 'checked' : ''}>
    </div>
    <div class="form-check">
      <label class="form-check-label" for="radio2">여자</label>  
      <input type="radio" class="form-check-input m-2" id="radio2" name="gender" value="여자" ${dto.gender == '여자' ? 'checked' : ''}>
    </div>
	</div>

    <div class="mb-3">
      <label for="pwd">비밀번호:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="passwd">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</body>
</html>