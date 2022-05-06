<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>This is your Place</title>
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/img/icon1.png">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/restaurant.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/common.css"
	rel="stylesheet" type="text/css">

</head>
<body>

	<!-- navbar  -->
	<div class="navbar">

		<input type="checkbox" class="checkbox" id="click" hidden>

		<!-- sidebar -->
		<div class="sidebar">
			<label for="click">
				<div class="menu-icon">
					<div class="line line-1"></div>
					<div class="line line-2"></div>
					<div class="line line-3"></div>
				</div>
			</label>

			<div class="year">
				<p>2022/01/14</p>
			</div>
		</div>
		<!-- end of sidebar -->

		<!-- navigation -->
		<nav class="navigation">
			<div class="navigation-header">
				<h1 class="navigation-heading">This is your place</h1>

				<form class="navigation-search">
					<input type="text" class="navigation-search-input"
						placeholder="Search...">
					<button class="navigation-search-btn">
						<i class="fas fa-search"></i>
					</button>
				</form>
			</div>

			<ul class="navigation-list">
				<li class="navigation-item"><a href="/member/index" class="navigation-link" >home</a>
				</li>
				<li class="navigation-item"><a href="/member/login" class="navigation-link" onclick="login()">mypage</a>
				</li>
				<li class="navigation-item"><a href="/member/login" class="navigation-link" onclick="login()">reservation</a>
				</li>
				<li class="navigation-item"><a href="#search" class="navigation-link">search</a>
				</li>
				<li class="navigation-item"><a href="#places" class="navigation-link">places</a>
				</li>
				<li class="navigation-item"><a href="#contact" class="navigation-link">contact</a>
				</li>
			</ul>

			<div class="copyright">
				<p>&copy 2022 Team3 All Rights Reserved</p>
			</div>
		</nav>
		<!-- end of navigation -->
	</div>
	<!-- end of navbar  -->
	
	<!-- detail_c -->
	<section class="detail_c">
	
		<!-- header -->
		<header class="header-detail_c">
			<div class="brand">
				<div>
					<img
						src="${pageContext.request.contextPath}/resources/img/icon1.png"
						width="80">
				</div>
				<h3 class="service-heading">This is your place</h3>
			</div>
		</header>
		<!-- end of header -->
		
		<div class="detail_c-content">
			<div class="common-header">
				<h1 class="common-heading">${r.restaurantName }</h1>
				<div class="underline">
					<div class="small-underline"></div>
					<div class="big-underline"></div>
				</div>
			</div>	
			<img src="/restaurant/readimg/${r.r_img }" class="detail_c-img">
			
			<table class="table custom-table">
				<thead>
					<tr><th scope="col">ADDRESS</th><td class="myorders-input">${r.addr }</td></tr>
					<tr><th scope="col">CATEGORY</th><td class="myorders-input">${r.category }</td></tr>
					<tr><th scope="col">RESTANRANT TYPE</th><td class="myorders-input">${r.restauranttype }</td></tr>
					<tr><th scope="col">MENU TYPE</th><td class="myorders-input">${r.menutype }</td></tr>
					<tr><th scope="col">OPER TIME</th><td class="myorders-input">${r.oper_time }</td></tr>
					<tr><th scope="col">RATE</th><td class="myorders-input">${r.comsumer_rate }</td></tr>
					<tr><th scope="col">RESERVATION NUM</th><td class="myorders-input">${r.cnt }</td></tr>
					<tr><th scope="col">detail</th><td class="myorders-input">${r.contents }</td></tr>
				</thead>
			</table>
			
			<table class="table custom-table">
				<thead>
				<c:forEach var="m" items="${list }">
						<tr></tr>
						<tr><th>����</th><td><img src="/menu/readimg/${m.img_path }" width=200 height="200"></td></tr>
						<tr><th>�޴� �̸�</th><td class="myorders-input">${m.mname }</td></tr><br>
						<tr><th>����</th><td class="myorders-input">${m.price }</td></tr><br>
				</c:forEach>
				</thead>
			</table>
			
			<div class = detail_c-link>
				<td><a href="/reservation/add/${r.restaurant_id}">�����ϱ�</a></td>
				<td><a href="/consumer_rate/list/${r.restaurant_id}">����Ȯ��</a></td>
			</div>	
		</div>
	</section>	
	<!-- end of detail_c -->
	
	<!-- footer -->
    <footer class="footer">
        <div class="main-part">
            <div class="footer-list-wrapper">
                <h3 class="footer-heading">This is your place</h3>
                <ul class="footer-list">
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">isu9848@gmail.com</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Seoul, Sadangdong</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Tel : +82 2678 3195</a>
                    </li>
                </ul>
            </div>
            <div class="footer-list-wrapper">
                <h3 class="footer-heading">Explore</h3>
                <ul class="footer-list">
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Home</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">My Page</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Reservation</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Search</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Place</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Contact</a>
                    </li>
                </ul>
            </div>

            <div class="contact">
                <h3 class="footer-heading">Contact</h3>
                <p>Sign Up for Store inquiry</p>
                <form class="footer-form">
                    <input type="text" class="footer-input" placeholder="Your email...">
                    <button class="footer-btn">Sign Up</button>
                </form>
            </div>

        </div>
        <div class="creator-part">
            <div class="copyright-text">
                <p>Copyright &copy; 2022. This is your place. All Rights Reserved</p>
            </div>

            <div class="text-right">
                <p>Made With<i class="fas fa-heart"></i>by<span>EncoreTeam3</span></p>
            </div>
        </div>
    </footer>
    <!-- end of footer -->
</body>
</html>