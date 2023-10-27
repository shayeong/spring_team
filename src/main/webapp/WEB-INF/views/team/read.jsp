<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function update(teamno){
	let url = "update";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	url += "&teamno="+teamno;
	
	//alert(url);
	
	location.href = url;
}

function del(teamno){
	let url = "delete";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	url += "&teamno="+teamno;
	
	//alert(url);
	
	location.href = url;
}
function list(){
	let url = "list";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	
	//alert(url);
	
	location.href = url;
}
</script>
</head>
<body>
<div class="container mt-3">
  <h2>팀 조회</h2>
  <ul class="list-group">
    <li class="list-group-item">작성자: ${dto.wname}</li>
    <li class="list-group-item">탐 이름: ${dto.tname}</li>
    <li class="list-group-item" style="height:100px;overflow-y:scroll">기술: ${dto.skills}</li>
    <li class="list-group-item">전화번호: ${dto.phone}</li>
    <li class="list-group-item">주소: ${dto.address}</li>
    <li class="list-group-item">우편번호: ${dto.zipcode}</li>
    <li class="list-group-item">성별: ${dto.gender}</li>
    <li class="list-group-item">등록날짜: ${dto.rdate}</li>
    <li class="list-group-item">조회수: ${dto.cnt}</li>
  </ul>
    <br>
    <button type="button" class="btn btn-dark" onclick="location.href='create'">생성</button>
    <button type="button" class="btn btn-dark" onclick="update('${dto.teamno}')">수정</button>
    <button type="button" class="btn btn-dark" onclick="del('${dto.teamno}')">삭제</button>
    <button type="button" class="btn btn-dark" onclick="list()">목록</button>
  
</div>
</body>
</html>