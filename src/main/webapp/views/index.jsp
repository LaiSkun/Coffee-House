<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="home/css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container" style="max-width: 1550px; max-height: 5000px;"
		ng-app="myapp" ng-controller="itemCtrl">
		<%@include file="./components/header.jsp"%>
		<div id="carouselId" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselId" data-slide-to="0" class="active"></li>
				<li data-target="#carouselId" data-slide-to="1"></li>
				<li data-target="#carouselId" data-slide-to="2"></li>
				<li data-target="#carouselId" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img
						src="home/img/banner_web_moi_-_desktop_e75249c36e714bd19ddd3d5f0891ac63.webp"
						alt="First slide" style="width: 100%; height: 383px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>
				<div class="carousel-item">
					<img src="home/img/desktop_2481f56d5c184a73bfb94e3e6e3fad94.webp"
						alt="Second slide" style="width: 100%; height: 383px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>
				<div class="carousel-item">
					<img src="home/img/desktop_61fea0c1012741aca5c70983cbdb2ad6.webp"
						alt="Second slide" style="width: 100%; height: 383px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>
				<div class="carousel-item">
					<img
						src="home/img/web_desktop_d158a17fa9e64ead95e49c8772b69284.webp"
						alt="Third slide" style="width: 100%; height: 383px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselId" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselId" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
		<article class="mt-5">
			<div class="container">
				<div class="row">
					<div class="product col mb-5 mr-5">
						<a href=""> <img src="home/img/datngay.webp" alt=""
							style="width: 450px; height: 292.5px;"></a>
					</div>
					<c:forEach var="item" items="${page.content }">
						<div class="product col-sm-3">
							<a href="/cart/add/${item.id}"><img class="image"
								src="<c:url value='/home/img/${item.image}' />" alt=""></a> <a
								href="">
								 <a href="/cart/add/${item.id}"><div class="see"></div></a>
							</a>
							<div class="title">
								<a href="/cart/add/${item.id}">${item.name }</a>
							</div>
							<div>${item.price }</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</article>
		<aside class="mt-5">
			<div class="row flex-lg-row">
				<div class="img-block">
					<img
						src="home/img/cloudtea_1_5dc49fd17ba04030993d2f797dc570f2.webp"
						alt="">
				</div>
				<div class="info-block">
					<img
						src="home/img/cloudtea_tagline_1_c39d8fd0d46b4144be9cebd05e318796.webp"
						alt="">
					<div>Vừa êm mượt dịu dàng, vừa bùng nổ nồng nàn, BST Trà Sữa
						CloudTea Hương Vị Nụ Hôn Đầu mang đến trải nghiệm đầy mới mẻ. Chạm
						môi là foam béo mịn bồng bềnh, càng thêm đậm đà nhờ topping vụn
						bánh quy phô mai hoặc bột ca cao thơm lừng. Kế tiếp là tầng trà
						sữa sóng sánh, đậm hương, rõ vị. Và tầng thạch nguyên chất, dai
						giòn giúp giữ trọn vị trà sữa đến ngụm cuối cùng. 3 tầng hòa
						quyện, nhấp một ngụm là ghiền, nhớ mãi không thôi.</div>
					<button type="button" class="btn btn-warning">Thử ngay</button>
				</div>
			</div>
		</aside>
		<div class="row mt-5">
			<div class="col">
				<div id="listId" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#listId" data-slide-to="0" class="active"></li>
						<li data-target="#listId" data-slide-to="1"></li>
						<li data-target="#listId" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img
								src="home/img/img_6466_3924e81a21314439ac4b3f4d0c5b4a9b_master.webp"
								alt="First slide" style="width: 100%; height: 700px;">
							<div class="carousel-caption d-none d-md-block">
								<h3>The Coffee House</h3>
								<h3>149 Nguyễn Văn Cừ, Hà Nội</h3>
								<p>
									Nhà mới Nguyễn Văn Cừ nổi bật với tone màu cam và xanh cổ vịt
									sang <br>trọng,ẩn mình sau những ô cửa kính bắt ánh sáng
									tự nhiên, là hương cà<br> phê nguyên bản đang chờ bạn
									thưởng thức
								</p>
							</div>
						</div>
						<div class="carousel-item">
							<img
								src="home/img/2_2f1c0f8ce84d44b3b024b6e7cea67d8a_master.webp"
								alt="Second slide" style="width: 100%; height: 700px;">
							<div class="carousel-caption d-none d-md-block">
								<h3>The Coffee House</h3>
								<h3>Vincom Plaza Mỹ Tho</h3>
								<p>
									Nhà đã quay lại với Mỹ Tho rồi đây bạn ơi, toạ lạc tại trung
									tâm thương mại<br> Vincom Plaza Mỹ Tho sầm uất, với không
									gian trẻ trung và năng động, ghé <br>Nhà ngay để có những
									tấm hình check-in cô cùng “chanh xả” nhé.
								</p>
							</div>
						</div>
						<div class="carousel-item">
							<img
								src="home/img/3_79de83d7fe14444780d3f11e1d07ab20_master.webp"
								alt="Third slide" style="width: 100%; height: 700px;">
							<div class="carousel-caption d-none d-md-block">
								<h3>The Coffee House</h3>
								<h3>Vinh Lotte Mart</h3>
								<p>
									Nhà mới Nghệ An toạ lạc tại Lotte Mart (TP. Vinh), nằm bên cạnh
									những con phố <br>sầm uất nhộn nhịp là không gian ấm cúng
									và hương vị quen thuộc từ Nhà, mang<br> đến nhiều cung bậc
									cảm xúc cho những buổi hẹn hò cùng bạn bè.
								</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#listId" role="button"
						data-slide="prev"> <span class="carousel-control-prev-icon"
						aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#listId" role="button"
						data-slide="next"> <span class="carousel-control-next-icon"
						aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
		<article class="blog">
			<div class="container">
				<div class="blog-home">
					<h2>
						<img
							src="home/img/coffee-2_2_92db24958ff14ac4b4249b3256f7a415.webp"
							alt=""> Chuyện Nhà
					</h2>
				</div>
				<h3 class="blog-home-blog-title">
					<a href="">Coffeeholic</a>
				</h3>
				<div class="row blog-list">
					<div class="blog-list-item col">
						<a href="" class="article-item"><img class="article-img"
							src="home/img/1__1__88407c0ec0b84592ade162dcc6860bed_grande.jpg"
							alt=""></a>
						<div class="item-info">
							<span>15/09/2022</span>
							<h3>
								<a href="">CÀ PHÊ SỮA ESPRESSO THE COFFEE HOUSE</a>
							</h3>
							<p>
								Cà phê sữa Espresso là một lon cà phê sữa giải khát với hương vị
								cà phê đậm đà từ 100% cà phê <br> Robusta cùng vị sữa béo
								nhẹ cho bạn một trải nghiệm...
							</p>
						</div>
					</div>
					<div class="blog-list-item col">
						<a href=""><img class="article-img"
							src="home/img/thecoffehouse_ca_phe_01_b4adbd88db6e4ca3b7c2c5934d1a1ed9_grande.webp"
							alt=""></a>
						<div class="item-info">
							<span>11/03/2022 </span> <a href="">
								<h3>CÁCH NHẬN BIẾT HƯƠNG VỊ CÀ PHÊ</h3>
							</a>
							<p>Cùng Arabica, Robusta cũng là loại cà phê nổi tiếng được
								sử dụng phổ biến ở Việt Nam và nhiều nước khác trên thế giới.
								Với nhiều đặc điểm riêng, không....</p>
						</div>
					</div>
					<div class="blog-list-item col">
						<a href=""><img class="article-img"
							src="home/img/thecoffeehouse_caphe_7_db8def55acbf426ea725921529f6f01e_grande.webp"
							alt=""></a>
						<div class="item-info">
							<span>07/03/2022</span> <a href="">
								<h3>BẬT MÍ NHIỆT ĐỘ LÍ TƯỞNG ĐỂ PHA CÀ PHÊ</h3>
							</a>
							<p>Nhiệt độ nước là một yếu tố quan trọng để có thể tạo nên
								những tách cà phê thơm ngon. Bạn đã biết nhiệt độ nước lý tưởng
								để pha....</p>
						</div>
					</div>
				</div>

				<h3 class="blog-home-blog-title">
					<a href="">Teaholic</a>
				</h3>
				<div class="row blog-list">
					<div class="blog-list-item col">
						<a href=""><img class="article-img"
							src="home/img/dscf0216_2890bcca44ae49aaaf843d5fa3db2fc6_grande.webp"
							alt=""></a>
						<div class="item-info">
							<span>16/08/2022</span> <a href="">
								<h3>"KHUẤY ĐỂ THẤY TRĂNG" - KHUẤY LÊN</h3>
							</a>
							<p>Năm 2022 là năm đề cao sức khỏe tinh thần nên giới trẻ
								muốn tận hưởng một Trung thu với nhiều trải nghiệm mới mẻ, rôm
								rả cùng bạn bè...</p>
						</div>
					</div>
					<div class="blog-list-item col">
						<a href=""><img class="article-img"
							src="home/img/hinh_cover_hero_c7bbff15ef674270ae8390da9c2be2ab_grande.webp"
							alt=""></a>
						<div class="item-info">
							<span>12/08/2022</span> <a href="">
								<h3>"KHUẤY ĐỂ THẤY TRĂNG" - HOT TREND MỞ</h3>
							</a>
							<p>“Khuấy để thấy trăng” - trải nghiệm “ có 1 không 2” được
								The Coffee House tung ra cho mùa trung thu năm nay, hứa hẹn làm
								giới trẻ háo...</p>
						</div>
					</div>
					<div class="blog-list-item col">
						<a href=""><img class="article-img"
							src="home/img/pr-cover_41de066c6f654ee9b318dbffe7e5e5f0_grande.webp"
							alt=""></a>
						<div class="item-info">
							<span>07/06/2022</span> <a href="">
								<h3>10 LỢI ÍCH KHÔNG NGỜ CỬA TRÀ HOA</h3>
							</a>
							<p>Với rất nhiều lợi ích vượt trội, trà hoa Hibiscus được
								nhiều chị em ưu tiên chọn lựa để tăng cường sức khỏe, cải thiện
								sắc đẹp và giúp tinh....</p>
						</div>
					</div>
				</div>

				<h3 class="blog-home-blog-title">
					<a href=""> Blog</a>
				</h3>
				<div class="row blog-list">
					<div class="blog-list-item col">
						<a href=""><img class="article-img"
							src="home/img/z3663478710700_0f36930c9ad300ade688f7ed1ddbd4f8_ceb536831696441fa7e8d9a2ad990c44_grande.webp"
							alt=""></a>
						<div class="item-info">
							<span>22/08/2022</span> <a href="">
								<h3>CŨNG LÀ ĂN BÁNH, THƯỞNG TRÀ, NGẮM</h3>
							</a>
							<p>Trung thu là dịp mà bất kỳ ai cũng có thể “bé lại” để niềm
								háo hức đón Tết Đoàn viên, ăn bánh, thưởng trà… vẫn đầy ắp trong
								lòng....</p>
						</div>
					</div>
					<div class="blog-list-item col">
						<a href=""><img class="article-img"
							src="home/img/123232891_2820303564910318_4578047210373311456_n_699bea2973ec4087886ab888d5434de4_grande.webp"
							alt=""></a>
						<div class="item-info">
							<span>14/02/2022</span> <a href="">
								<h3>LỄ TÌNH NHÂN CÙNG CRUSH ĐI ĐÂU ?</h3>
							</a>
							<p>Tadaaaa, hết Tết thì Valentine đầy yêu thương lại đang đến
								rồi nè. Lễ tình nhân, dẫn crush đi quán nào? Nhất định phải cùng
								người ấy đến Nhà hẹn....</p>
						</div>
					</div>
					<div class="blog-list-item col">
						<a href=""><img class="article-img"
							src="home/img/hn-le-thanh-nghi2_d161f1f7755249cba30f2ecc7a591e47_master_1bbacee733084b93a400eaa54762bf12_grande.webp"
							alt=""></a>
						<div class="item-info">
							<span>11/02/2022</span> <a href="">
								<h3>THE COFFE HOUSE - QUÁN CÀ PHÊ LÝ</h3>
							</a>
							<p>Những ngày cuối năm, đầu năm mới, bạn lên kế hoạch để gặp
								gỡ những người yêu, thương, quý, mến... Vậy bạn đã tìm được điểm
								hẹn lý tưởng chưa,....</p>
						</div>
					</div>
				</div>
			</div>
		</article>
		<footer>
			<ul>
				<li>PS19980</li>
				<li>Đinh Quang Trường</li>

			</ul>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>