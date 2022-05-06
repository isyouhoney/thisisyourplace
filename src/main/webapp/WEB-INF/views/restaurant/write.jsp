<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
	<!-- restaurant_write -->
	<section class="restaurant_write">
	<!-- restaurant_write header -->
	<header class="header-restaurant_write">
		<div class="brand-restaurant_write">
			<div>
				<img
					src="${pageContext.request.contextPath}/resources/img/icon1.png"
					width="80">
			</div>
			<h3 class="restaurant_write-heading">This is your place</h3>
		</div>
	</header>
	<!-- end of restaurant_write header -->
	<div class="restaurant_write-content">
		<h1 class="join-heading">Add Restaurant</h1>
			<div class="underline">
				<div class="small-underline"></div>
				<div class="big-underline"></div>
			</div>
				<form action="/restaurant/write" method="post" enctype="multipart/form-data">
		<table class="table obwrite-table">
		<tbody>
		<tr class="myorders-list-th"><th scope="col">manager</th><td scope="row"><input type="text" name="id" value="${sessionScope.loginid }" class="restaurant_write-input"></td></tr>
		<tr><th scope="col">name</th><td scope="row"><input type="text" name="restaurantName" class="restaurant_write-input"></td></tr>
		<tr><th scope="col">adress</th><td scope="row">
		            <select name="addr" id="" onchange="categoryChange(this)">
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
		            <select name="addr" id="state">
		              <option>��/�� ����</option>
		            </select>
		
		</td></tr>
		<tr><th scope="col">detail</th><td scope="row"><input type="text" name="detailAddr" class="restaurant_write-input"></td></tr>
		<tr><th scope="col">tel</th><td scope="row"><input type="text" name="tel" class="restaurant_write-input"></td></tr>
		<tr><th scope="col">category</th><td scope="row">
		<input type="checkbox" name="category" value="���ø���"><label for="���ø���">���ø���</label>
		<input type="checkbox" name="category" value="����Ʈ"><label for="����Ʈ">����Ʈ</label>
		<input type="checkbox" name="category" value="��ü/ȸ��"><label for="��ü/ȸ��">��ü/ȸ��</label>
		<input type="checkbox" name="category" value="�ν�Ÿ����"><label for="�ν�Ÿ����">�ν�Ÿ����</label>
		<input type="checkbox" name="category" value="������"><label for="������">������</label>
		<input type="checkbox" name="category" value="��߷�"><label for="��߷�">��߷�</label>
		<input type="checkbox" name="category" value="�����ϱ�����"><label for="�����ϱ�����">�����ϱ�����</label>
		<input type="checkbox" name="category" value="ȥ��/ȥ��"><label for="ȥ��/ȥ��">ȥ��/ȥ��</label>
		<input type="checkbox" name="category" value="��������"><label for="��������">��������</label>
		<input type="checkbox" name="category" value="�����"><label for="�����">�����</label>
		</td></tr>
		<tr><th scope="col">operation time</th><td scope="row"><input type="text" name="oper_time" class="restaurant_write-input"></td></tr>
		<tr><th scope="col">restaurant type</th><td scope="row">
		<input type="radio" name="restaurant_type" value="ī��"><label for="ī��">ī��</label>
		<input type="radio" name="restaurant_type" value="����Ŀ��"><label for="����Ŀ��">����Ŀ��</label>
		<input type="radio" name="restaurant_type" value="������"><label for="������">������</label>
		<input type="radio" name="restaurant_type" value="����"><label for="����">����</label>
		</td></tr>
		<tr><th scope="col">menu type</th><td scope="row">
		<input type="radio" name="menu_type" value="�ѽ�"><label for="�ѽ�">�ѽ�</label>
		<input type="radio" name="menu_type" value="�߽�"><label for="�߽�">�߽�</label>
		<input type="radio" name="menu_type" value="�Ͻ�"><label for="�Ͻ�">�Ͻ�</label>
		<input type="radio" name="menu_type" value="�н�"><label for="�н�">�н�</label>
		<input type="radio" name="menu_type" value="�������"><label for="�������">�������</label>
		<input type="radio" name="menu_type" value="�н�ƮǪ��"><label for="�н�ƮǪ��">�н�ƮǪ��</label>
		<input type="radio" name="menu_type" value="�ƽþ�����"><label for="�ƽþ�����">�ƽþ�����</label>
		<input type="radio" name="menu_type" value="����Ŀ��"><label for="����Ŀ��">����Ŀ��</label>
		<input type="radio" name="menu_type" value="Ŀ��/��"><label for="Ŀ��/��">Ŀ��/��</label>
		</td></tr>
		<tr><th scope="col">content</th><td scope="row"><input type="text" name="content" width="400" height="300" class="restaurant_write-input"></td></tr>
		<tr><th scope="col">image</th><td><input type="file" name="file"></td></tr>
		<tr><th scope="col">add</th><td scope="row"><input type="submit" value="���"></td></tr>
		</tbody>
		</table>
		</form>
		</div>
		
			
	</section>



<!-- footer -->
    <footer class="footer">
	<a name="contact">
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