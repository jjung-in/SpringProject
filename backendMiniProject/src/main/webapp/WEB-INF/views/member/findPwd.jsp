<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>비밀번호 찾기</title>
	
	<!-- css -->
	<link rel="stylesheet" href="/resources/font/font.css">
	<link rel="stylesheet" href="/resources/css/reset.css">
	<link rel="stylesheet" href="/resources/css/findId.css">
	
	<!-- favicon -->
	<link rel="shortcut icon" href="/resources/images/favicon.png">
	
	<!-- font -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
		rel="stylesheet">
</head>

<body>
	<div class="wrap">
		<div class="find_wrap">
			<h1>비밀번호 찾기</h1>
			<form method="POST" action="/member/findPwdAfter">
				<div class="find_input">
					<table>
						<tr>
							<th>아이디</th>
							<td><input type="text" id="memberId" name="memberId" placeholder="아이디 입력"></td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td><input type="text" id="memberPhone" name="memberPhone" placeholder="전화번호 입력"></td>
						</tr>
					</table>
				</div>
				<button type="submit" id="findBtn">비밀번호 찾기</button>
			</form>
		</div>
	</div>
	
	<script>
		function findChkFunc(e){
			if (document.getElementById("memberId").value == '') {
				e.preventDefault();
				alert('아이디를 입력해주세요.');
				document.getElementById("memberName").focus();
				return false;
			}
		
			if (document.getElementById("memberPhone").value == '') {
				e.preventDefault();
				alert('전화번호를 입력해주세요.');
				document.getElementById("memberPhone").focus();
				return false;
			}
		}
		document.getElementById("findBtn").addEventListener("click", findChkFunc);
	</script>
</body>
</html>