<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript">
function moveplace(){
	document.location.href="#places";
}

function categoryChange(e) {
	  const state = document.getElementById("state");

	  const gangwon = ["������","���ؽ�","��ô��","���ʽ�","���ֽ�","��õ��","�¹��","����","�籸��","��籺","������","������","������","ö����","��â��","ȫõ��","ȭõ��","Ⱦ����"];
	  const gyeonggi = ["����","��õ��","�����","���ֽ�","������","������","������","�����ֽ�","����õ��","��õ��","������","������","�����","�Ȼ��","�ȼ���","�Ⱦ��","���ֽ�","�����","���ν�","�ǿս�","�����ν�","��õ��","���ֽ�","���ý�","��õ��","�ϳ���","ȭ����","����","����","���ֱ�","��õ��"];
	  const gyeongsangnam = ["������", "���ؽ�", "�����", "�о��", "��õ��", "����", "���ֽ�", "���ؽ�", "â����", "�뿵��", "��â��", "����", "���ر�", "��û��", "�Ƿɱ�", "â�籺", "�ϵ���", "�Ծȱ�", "�Ծ籺", "��õ��"];
	  const gyeongsangbuk = ["����","���ֽ�","���̽�","��õ��","�����","���ֽ�","�ȵ���","���ֽ�","��õ��","���׽�","��ɱ�","������","��ȭ��","���ֱ�","������","���籺","��õ��","�︪��","������","�Ǽ���","û����","û�۱�","ĥ�"];
	  const gwangju = ["���걸", "����", "����", "�ϱ�", "����"];
	  const daegu = ["����", "�޼���", "����", "�ϱ�", "����", "������", "�߱�", "�޼���"];
	  const daejeon = ["�����", "����", "����", "������", "�߱�"];
	  const busan = ["������","������","����","����","������","�λ�����","�ϱ�","���","���ϱ�","����","������","������","������","�߱�","�ؿ�뱸","���屺"];
	  const seoul = ["������","������","���ϱ�","������","���Ǳ�","������","���α�","��õ��","�����","������","���빮��","���۱�","������","���빮��","���ʱ�","������","���ϱ�","���ı�","��õ��","��������","��걸","����","���α�","�߱�","�߶���"];
	  const ulsan = ["����","����","�ϱ�","�߱�","���ֱ�"];
	  const incheon = ["��籸","����","������","����","����","����","������","�߱�","��ȭ��","������"];
	  const jeonnam = ["�����","���ֽ�","������","��õ��","������","������","���ﱺ","���","���ʱ�","��籺","���ȱ�","������","�žȱ�","������","���ϱ�","�ϵ���","�强��","���ﱺ","������","����","�س���","ȭ����"];
	  const jeonbuk = ["�����", "������", "������", "�ͻ��", "���ֽ�", "������", "��â��", "���ֱ�", "�ξȱ�", "��â��", "���ֱ�", "�ӽǱ�", "�����", "���ȱ�"];
	  const jeju = ["��������","���ֽ�","�����ֱ�","�����ֱ�"];
	  const chungbuk = ["��õ��","û�ֽ�","���ֽ�","���걺","�ܾ籺","������","������","��õ��","������","����","��õ��","û����"];
	  

	  if (e.value == "����") {
	    add = gangwon;
	  } else if (e.value == "���") {
	    add = gyeonggi;
	  } else if (e.value == "�泲") {
	    add = gyeongsangnam;
	  } else if (e.value == "���") {
	    add = gyeongsangbuk;
	  } else if (e.value == "����") {
	    add = gwangju;
	  } else if (e.value == "�뱸") {
	    add = daegu;
	  } else if (e.value == "����") {
	    add = daejeon;
	  } else if (e.value == "�λ�") {
	    add = busan;
	  } else if (e.value == "����") {
	    add = seoul;
	  } else if (e.value == "���") {
	    add = ulsan;
	  } else if (e.value == "��õ") {
	    add = incheon;
	  } else if (e.value == "����") {
	    add = jeonnam;
	  } else if (e.value == "����") {
	    add = jeonbuk;
	  } else if (e.value == "����") {
	    add = jeju;
	  } else if (e.value == "�泲") {
	    add = chungnam;
	  } else if (e.value == "���") {
	    add = chungbuk;
	  }

	  state.options.length = 1;
	  // ��/�� ����;

		for (property in add) {
			let opt = document.createElement("option");
			opt.value = add[property];
			opt.innerHTML = add[property];
			state.appendChild(opt);
		}
	}
</script>
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

	<!-- header -->
	<header class="header">
		<div class="brand">
			<div>
				<img
					src="${pageContext.request.contextPath}/resources/img/icon1.png"
					width="80">
			</div>
			<h3 class="service-heading">This is your place</h3>
		</div>

		<div class="banner">
			<h1 class="banner-heading">This is your place</h1>
			<p class="banner-paragraph">Make your meal more successful</p>
			<button class="banner-button">
				<a class="banner-text" href="/member/login">Login</a>
			</button>
		</div>
	</header>
	<!-- end of header -->

	<!-- search -->
	<section class="search">
	<a name="search">
		<div class="search-content">
			<form action="/restaurant/getByAddrAndCategory" method="post">
				<div class="search-info">
					<h1 class="search-heading">Location</h1>
					<div class="underline">
						<div class="search-underline"></div>
					</div>
					<select name="addr" id="" onchange="categoryChange(this)" class="search-select">
              <option value>��/�� ����</option>
              <option value="����">����</option>
              <option value="���">���</option>
              <option value="�泲">�泲</option>
              <option value="���">���</option>
              <option value="����">����</option>
              <option value="�뱸">�뱸</option>
              <option value="����">����</option>
              <option value="�λ�">�λ�</option>
              <option value="����">����</option>
              <option value="���">���</option>
              <option value="��õ">��õ</option>
              <option value="����">����</option>
              <option value="����">����</option>
              <option value="����">����</option>
              <option value="�泲">�泲</option>
              <option value="���">���</option>
            </select>
            <select name="addr" id="state" value="addr" class="search-select">
              <option>��/�� ����</option>
            </select>
				</div>

				<div class="search-info">
					<h1 class="search-heading">Category</h1>
					<div class="underline">
						<div class="search-underline"></div>
					</div>
					<input type="checkbox" name="category" value=""><label
						for="���þ���">���þ���</label> <input type="checkbox" name="category"
						value="���ø���"><label for="���ø���">���ø���</label> <input
						type="checkbox" name="category" value="����Ʈ"><label
						for="����Ʈ">����Ʈ</label> <input type="checkbox" name="category"
						value="��ü/ȸ��"><label for="��ü/ȸ��">��ü/ȸ��</label> <input
						type="checkbox" name="category" value="�ν�Ÿ����"><label
						for="�ν�Ÿ����">�ν�Ÿ����</label> <input type="checkbox" name="category"
						value="������"><label for="������">������</label> <input
						type="checkbox" name="category" value="��߷�"><label
						for="��߷�">��߷�</label> <input type="checkbox" name="category"
						value="�����ϱ�����"><label for="�����ϱ�����">�����ϱ�����</label> <input
						type="checkbox" name="category" value="ȥ��/ȥ��"><label
						for="ȥ��/ȥ��">ȥ��/ȥ��</label> <input type="checkbox" name="category"
						value="��������"><label for="��������">��������</label> <input
						type="checkbox" name="category" value="�����"><label
						for="�����">�����</label>
				</div>

				<div class="search-info">
					<h1 class="search-heading">Restaurant Type</h1>
					<div class="underline">
						<div class="search-underline"></div>
					</div>
					<input type="radio" name="restauranttype"
						value="ī��"><label for="ī��">ī��</label> <input type="radio"
						name="restauranttype" value="����Ŀ��"><label for="����Ŀ��">����Ŀ��</label>
					<input type="radio" name="restauranttype" value="������"><label
						for="������">������</label> <input type="radio" name="restauranttype"
						value="����"><label for="����">����</label>
				</div>

				<input class="search-btn" type="submit" value="Search"  onclick="moveplace();">
			</form>
		</div>
	</section>
	<!-- end of search -->

	<!-- places -->
	<section class="places">
	<a name="places">
		<div class="common-header">
			<h1 class="common-heading">Search Result</h1>
			<div class="underline">
				<div class="small-underline"></div>
				<div class="big-underline"></div>
			</div>
		</div>

		<div class="places-cards-wrapper">
		<c:if test="${empty list}">
		��ϵ� ���԰� �����ϴ�.
		</c:if>
				<c:if test="${not empty list }">
				<c:forEach var="a" items="${list }">
					<div class="place-card">
						<img src="/restaurant/readimg/${a.r_img }" class="place-img">
						<div class="place-card-content">
<!-- 							<h4 class="place-card-heading"> -->
								<a class="place-card-heading" href="/restaurant/detail/${a.restaurant_id }">${a.restaurantName }</a>
<!-- 							</h4> -->
							<p class="place-card-info">���� : ${a.comsumer_rate }</p>
							<p class="place-card-info">ī�װ� : ${a.category }</p>
							<p class="place-card-info">�ּ� : ${a.addr }</p>
						<button class="place-card-btn"
							 onclick="location.href='/restaurant/detail/${a.restaurant_id }'">
							Book Now <i class="fas fa-angle-double-down btn-arrow"></i>
						</button>
						</div>
					</div>
				</c:forEach>
				</c:if>
		</div>
			
			<div class="places-btn-wrapper">
            	<button class="places-btn" onclick="location.href='/member/index#places'">View All Places</button>
        	</div>
	</section>
	<!-- end of place -->
	
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