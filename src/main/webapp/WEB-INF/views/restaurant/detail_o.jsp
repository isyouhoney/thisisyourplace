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
<script>
const b = () =>{
// 	let tr1 = document.getElementById("tr1_");
//  		if(tr1.value == "����"){
// 	 		tr1.value = "�����Ϸ�";
			let trs_ =  document.getElementsByClassName("tr_");
			for( var i = 0; i < trs_.length; i++ ){
				document.getElementsByClassName('tr_')[i].style.display = '';
		}
// 		}else if(tr1.value == "�����Ϸ�"){
// 			let trs1 =  document.getElementsByClassName("tr_");
// 			let restaurant_id = trs1[0];
//  			let restaurantName = trs1[1];
// 			alert(trs1[0].value);
//			location.href = "/restaurant/edit/"+restaurant_id+"/"+restaurantName;
//		}

	}



// const c = (restaurant_id, restaurantName) =>{
// 	location.href = "/edit/" + restaurant_id + "/" + restaurantName;
// }
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
		
	</div>
		<!-- end of navigation -->
		<!-- end of navbar  -->
		
		<!-- detail_o -->
	<section class="detail_o">
	
	<!-- detail_o header -->
	<header class="header-detail_o">
		<div class="brand-detail_o">
			<div>
				<img
					src="${pageContext.request.contextPath}/resources/img/icon1.png"
					width="80">
			</div>
			<h3 class="detail-service-heading">This is your place</h3>
		</div>
	</header>
	<!-- end of detail_o header -->
	
	
	<div class="detail_o-content">
		<h1 class="detail_o-heading">${r.restaurantName }</h1>
			<div class="underline">
				<div class="small-underline"></div>
				<div class="big-underline"></div>
			</div>
<!-- 			<h3>���� �� ������</h3> -->
				<form action="/restaurant/edit/${r.restaurant_id }" method="post"
					enctype="multipart/form-data">
				<div class = detail_o-table>
					<table class="table obwrite-table">
					<tbody>
						<tr class="myorders-list-th">
							<th scope="col">������ȣ</th>
							<td><input type="text" class="mypage-info-detail" name="restaurant_id"
								value="${r.restaurant_id}" readonly class="detail_o-input"></td>
						</tr>
			
						<tr>
							<th scope="col">�ۼ���</th>
							<td><input type="text" class="mypage-info-detail" name="id"
								value="${sessionScope.loginid }" class="detail_o-input"></td>
						</tr>
			
						<tr>
							<th scope="col">��ȣ��</th>
							<td><input type="text" class="mypage-info-detail" value="${r.restaurantName }" readonly class="detail_o-input"></td>
						</tr>
			
						<tr class="tr_" style="display: none;">
							<th scope="col">��ȣ�� ����</th>
							<td><input type="text" class="mypage-info-detail" name="restaurantName" class="detail_o-input"></td>
						</tr>
			
						<tr>
							<th scope="col">�ּ�</th>
							<td><input type="text" class="mypage-info-detail" value="${r.addr }" readonly class="detail_o-input"></td>
						</tr>
			
						<tr class="tr_" style="display: none;">
							<th scope="col">�ּ� ����</th>
							<td><input type="text" class="mypage-info-detail" name="addr" class="detail_o-input"></td>
						</tr>
			
						<tr>
							<th scope="col">���ּ�</th>
							<td><input type="text" class="mypage-info-detail" value="${r.detailAddr }" readonly class="detail_o-input"></td>
						</tr>
			
						<tr class="tr_" style="display: none;">
							<th scope="col">���ּ� ����</th>
							<td><input type="text" class="mypage-info-detail" name="detailAddr" class="detail_o-input"></td>
						</tr>
			
						<tr>
							<th>����ó</th>
							<td><input type="text" value="${r.tel }" class="mypage-info-detail" readonly class="detail_o-input"></td>
						</tr>
			
						<tr class="tr_" style="display: none;">
							<th>����ó ����</th>
							<td><input type="text" name="tel" class="mypage-info-detail" class="detail_o-input"></td>
						</tr>
			
						<tr>
							<th>ī�װ�</th>
							<td><input type="text" value="${r.category }" readonly class="detail_o-input"></td>
						</tr>
			
						<tr class="tr_" style="display: none;" >
							<th>ī�װ� ����</th>
							<td><input type="checkbox" name="category" value="���ø���"><label
								for="���ø���">���ø���</label> <input type="checkbox" name="category"
								value="����Ʈ"><label for="����Ʈ">����Ʈ</label> <input
								type="checkbox" name="category" value="��ü/ȸ��"><label
								for="��ü/ȸ��">��ü/ȸ��</label> <input type="checkbox" name="category"
								value="�ν�Ÿ����"><label for="�ν�Ÿ����">�ν�Ÿ����</label> <input
								type="checkbox" name="category" value="������"><label
								for="������">������</label> <input type="checkbox" name="category"
								value="��߷�"><label for="��߷�">��߷�</label> <input
								type="checkbox" name="category" value="�����ϱ�����"><label
								for="�����ϱ�����">�����ϱ�����</label> <input type="checkbox" name="category"
								value="ȥ��/ȥ��"><label for="ȥ��/ȥ��">ȥ��/ȥ��</label> <input
								type="checkbox" name="category" value="��������"><label
								for="��������">��������</label> <input type="checkbox" name="category"
								value="�����"><label for="�����">�����</label></td>
						</tr>
			
						<tr>
							<th scope="col">��ð�</th>
							<td><input type="text" value="${r.oper_time }" class="mypage-info-detail" readonly class="detail_o-input"></td>
						</tr>
			
						<tr class="tr_" style="display: none;">
							<th scope="col">��ð� ����</th>
							<td><input type="text" class="mypage-info-detail" name="oper_time"></td>
						</tr>
			
						<tr>
							<th scope="col">�Ĵ�����</th>
							<td><input type="text" value="${r.restauranttype }" readonly class="detail_o-input"></td>
						</tr>
			
						<tr class="tr_" style="display: none;">
							<th scope="col">�Ĵ����� ����</th>
							<td><input type="radio" name="restaurant_type" value="ī��"><label
								for="ī��">ī��</label> <input type="radio" name="restaurant_type"
								value="����Ŀ��"><label for="����Ŀ��">����Ŀ��</label> <input
								type="radio" name="restaurant_type" value="������"><label
								for="������">������</label> <input type="radio" name="restaurant_type"
								value="����"><label for="����">����</label></td>
						</tr>
			
						<tr>
							<th scope="col">��������</th>
							<td><input type="text" value="${r.menutype }" readonly class="detail_o-input"></td>
						</tr>
			
						<tr class="tr_" style="display: none;">
							<th scope="col">�������� ����</th>
							<td><input type="radio" name="menu_type" value="�ѽ�"><label
								for="�ѽ�">�ѽ�</label> <input type="radio" name="menu_type" value="�߽�"><label
								for="�߽�">�߽�</label> <input type="radio" name="menu_type" value="�Ͻ�"><label
								for="�Ͻ�">�Ͻ�</label> <input type="radio" name="menu_type" value="�н�"><label
								for="�н�">�н�</label> <input type="radio" name="menu_type"
								value="�������"><label for="�������">�������</label> <input
								type="radio" name="menu_type" value="�н�ƮǪ��"><label
								for="�н�ƮǪ��">�н�ƮǪ��</label> <input type="radio" name="menu_type"
								value="�ƽþ�����"><label for="�ƽþ�����">�ƽþ�����</label> <input
								type="radio" name="menu_type" value="����Ŀ��"><label
								for="����Ŀ��">����Ŀ��</label> <input type="radio" name="menu_type"
								value="Ŀ��/��"><label for="Ŀ��/��">Ŀ��/��</label></td>
						</tr>
			
						<tr>
							<th scope="col">���Լ���</th>
							<td><input type="text" value="${r.contents }" class="mypage-info-detail" rows="10" cols="30" readonly class="detail_o-input"></td>
						</tr>
						
						<tr class="tr_" style="display: none;">
							<th scope="col">���Լ��� ����</th>
							<td><input type="text" class="mypage-info-detail" name="contents"></td>
						</tr>
			
						<tr>
							<th scope="col">����</th>
							<td><input type="file" name="file"></td>
						</tr>
<%-- 						<td><a href="/menu/${r.restaurant_id}/add">�޴��߰�</a></td> --%>
<%-- 						<td><a href="/reservation/${r.restaurant_id}/restaurantorders">�����ڸ��</a></td> --%>
					</tbody>
					</table>
					<div class="detail_o-btn-wrapper">
							<input type="button" value="����" onclick="b()" class="detail_o-btn">
							<input id="tr2_" type="submit" value="�����Ϸ�" class="detail_o-btn">
					</div>
					
			<div class = detail_c-link>
			<input
						type="button" value="�޴��߰�" class="ownerboard-btn"
						onClick="location.href="/menu/${r.restaurant_id}/add">
			<input
						type="button" value="�����ڸ��" class="ownerboard-btn"
						onClick="location.href="/reservation/${r.restaurant_id}/restaurantorders">
			</div>
				</div>
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