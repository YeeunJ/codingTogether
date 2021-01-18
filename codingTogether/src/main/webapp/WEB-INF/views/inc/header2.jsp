<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<title>codingTogether</title>


<link href="../resources/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
<link href="../resources/css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />
<link rel="stylesheet" href="../resources/css/jquery.sweet-modal.min.css" />
<link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet'/>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script src="../resources/vendor/jquery/jquery.min.js"></script>
<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="../resources/js/materialize.js"></script>
<script src="../resources/js/init.js"></script>
<script src="../resources/js/jquery.sweet-modal.min.js"></script>
<script src="../resources/js/sb-admin-2.min.js"></script>

<script src="../resources/vendor/chart.js/Chart.min.js"></script>
<script src="../resources/js/demo/chart-area-demo.js"></script>
<script src="../resources/js/demo/chart-pie-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

</head>
<body>
  <nav class="green lighten-1" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="#" class="brand-logo">Logo</a>
      <ul class="right hide-on-med-and-down">
        <li><a href="../recommendProblem">문제 추천</a></li>
        <li><a href="../manageCodingsite">코딩 사이트 관리</a></li>
        <li><a href="../mypage/problems">마이 페이지</a></li>
        <li><a href="../register">로그인</a></li>
      </ul>

      <ul id="nav-mobile" class="sidenav">
        <li><a href="../register">로그인</a></li>
        <li><a href="../recommendProblem">문제 추천</a></li>
        <li><a href="../manageCodingsite">코딩 사이트 관리</a></li>
        <li><a href="../mypage/problems">mypage - my problems</a></li>
        <li><a href="../mypage/information">myPage - 내 정보 수정</a></li>
        <li><a href="../mypage/activities">myPage - my activities</a></li>
      </ul>
      <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
    </div>
  </nav>