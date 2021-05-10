<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content = "width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "css/bootstrap.css">
		<link rel = "stylesheet" href = "css/common.css">
		<title>게시판</title>
	</head>
	<body>
		<nav class = "navbar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class = "navbar-toggle collapsed" data-toggle = "collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class= "icon-bar"></span>
					<span class= "icon-bar"></span>
					<span class= "icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.jsp">게시판 웹 사이트</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="bbs.jsp">게시판</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
							<li class="active"><a href="join.jsp">회원가입</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		<div class="container">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="jumbotron" style="padding-top:20px;">
					<form class="form-horizontal" method="post" action="joinAction.jsp">
						<h3 style="text-align: center;">게시판 회원가입</h3>
						<div class="form-group">
							<label class="col-sm-3 control-label hidden-lg">아이디 :</label>
							<div class="col-sm-9 col-lg-12">
								<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label hidden-lg">비밀번호 :</label>
							<div class="col-sm-9 col-lg-12">
								<input type="password" class="form-control" placeholder="패스워드" name="userPassword" maxlength="20">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label hidden-lg">이름 :</label>
							<div class="col-sm-9 col-lg-12">
								<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label hidden-lg">성별 :</label>
							<div class="btn-group col-sm-9 col-lg-12" data-toggle="buttons">
								<label class="btn btn-default active">
									<input type="radio" name="userGender" autocomplete="off" value ="남자" checked>남자									
								</label>
								<label class="btn btn-default">
									<input type="radio" name="userGender" autocomplete="off" value ="여자">여자									
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label hidden-lg">이메일 :</label>
							<div class="col-sm-9 col-lg-12">
								<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
							</div>
						</div>
						<input type="submit" class="btn btn-primary btn-block" value="회원가입"/>
					</form>
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>