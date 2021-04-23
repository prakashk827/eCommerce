<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">


<!-- index-515:19-->
<head>
<!-- Basic Page Needs ================================================== -->
<meta charset="utf-8">

<!-- Mobile Specific Metas ================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">

<!-- Site Title -->
<title>${title}</title>

<!-- bValidator -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../../js/jquery.bvalidator.min.js"></script>
<script src="../../themes/pink/pink.js"></script>
<link rel="stylesheet" href="../../themes/pink/pink.css" />
<!-- Below file must be included -->
<script src="../../themes/presenters/default.min.js"></script>


<!-- CSS
         ================================================== -->
<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- FontAwesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet" href="css/animate.css">
<!-- magnific -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- carousel -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- isotop -->
<link rel="stylesheet" href="css/isotop.css">
<!-- ico fonts -->
<link rel="stylesheet" href="css/xsIcon.css">
<!-- Template styles-->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive styles-->
<link rel="stylesheet" href="css/responsive.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->

</head>

<body>
	<div class="body-inner">


		<!-- Header start -->
		<header id="header" class="header header-transparent">
			<div class="container">
				<nav class="navbar navbar-expand-lg navbar-light">
					<!-- logo-->
					<a class="navbar-brand" href="index-2.html"> <img
						src="images/logos/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"><i class="icon icon-menu"></i></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNavDropdown">
						<ul class="navbar-nav ml-auto">
							<li class="dropdown nav-item active"><a href="#" class=""
								data-toggle="dropdown">Home <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="index-2.html">Home One</a></li>
									<li><a href="index-3.html">Home Two</a></li>
									<li><a href="index-4.html">Home Three</a></li>
									<li><a href="index-5.html">Home Four</a></li>
									<li><a href="index-6.html">Home Five</a></li>
								</ul></li>
							<li class="dropdown nav-item"><a href="#" class=""
								data-toggle="dropdown">About <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="about-us.html">About Us</a></li>
									<li><a href="gallery.html">Gallery</a></li>
									<li><a href="faq.html">FAQ</a></li>
									<li><a href="pricing.html">Pricing Table</a></li>
									<li><a href="sponsors-1.html">Sponsors</a></li>
									<li><a href="venue.html">Venue</a></li>
									<li><a href="404.html">Erro Page</a></li>
								</ul></li>
							<li class="nav-item dropdown"><a href="#" class=""
								data-toggle="dropdown">Speakers <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="speakers-1.html">Speakers-1</a></li>
									<li><a href="speakers-2.html">Speakers-2</a></li>
								</ul></li>
							<li class="nav-item dropdown"><a href="#" class=""
								data-toggle="dropdown">Schedule <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="schedule-list.html">Schedule List</a></li>
									<li><a href="schedule-tab-1.html">Schedule Tab 1</a></li>
									<li><a href="schedule-tab-2.html">Schedule Tab 2</a></li>
								</ul></li>
							<li class="nav-item dropdown"><a href="#"> Blog <i
									class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="blog.html">Blog</a></li>
									<li><a href="news-single.html">Blog Details</a></li>
								</ul></li>
							<li class="nav-item"><a href="contact.html">Contact</a></li>
							<li class="header-ticket nav-item"><a class="ticket-btn btn"
								href="pricing.html"> Buy Ticket </a></li>
						</ul>
					</div>
				</nav>
			</div>
			<!-- container end-->
		</header>
		<!--/ Header end -->

		<!-- banner start-->
		<c:if test="${section.section1 == 'show'}">


			<section class="hero-area hero-speakers">
				<div class="banner-item overlay"
					style="background-image: url(images/hero_area/banner7.jpg)">
					<div class="container">
						<div class="row">
							<div class="col-lg-7">
								<div class="banner-content-wrap">

									<p class="banner-info wow fadeInUp" data-wow-duration="1.5s"
										data-wow-delay="500ms">${slider.paragraphTag}</p>
									<h1 class="banner-title wow fadeInUp" data-wow-duration="1.5s"
										data-wow-delay="700ms">${slider.h1Tag}</h1>


									<div class="banner-btn wow fadeInUp" data-wow-duration="1.5s"
										data-wow-delay="800ms">
										<c:if test="${slider.firstBtnDisplay eq 'show'}">
											<a href="${slider.firstBtnUrl}" class="btn">${slider.firstBtnTitle}</a>
										</c:if>
										<c:if test="${slider.secondBtnDisplay eq 'show' }">
											<a href="${slider.secondBtnUrl}" class="btn fill">${slider.secondBtnTitle}</a>
										</c:if>
									</div>

								</div>
								<!-- Banner content wrap end -->
							</div>
							<!-- col end-->
							<div class="col-lg-4 offset-lg-1">
								<div class="hero-form-content">
									<h2>${slider.formTitle}</h2>
									<p>${slider.formParagraph}</p>
									<form action="save-student" method="POST" class="hero-form"
										data-bvalidator-option-single-error="true"
										data-bvalidator-validate>
										<input class="form-control form-control-name"
											placeholder="Name" name="name" id="f-name" type="text"
											data-bvalidator="required"> <input
											class="form-control form-control-phone" placeholder="Phone"
											name="mobile" id="f-phone" type="text"
											data-bvalidator="required"> <input
											class="form-control form-control-email" placeholder="Email"
											name="email" id="f-email" type="text"
											data-bvalidator="required,email"> <select
											data-bvalidator="required" name="instrument" id="instrument">
											<option value="">Please Select</option>

											<c:forEach items="${instrumentsList}" var="val">
												<option value="${val.instrumentName}">
													${val.instrumentName}</option>


											</c:forEach>


										</select>

										<button class="btn" type="submit">${slider.formBtnTitle}</button>

									</form>
									<!-- form end-->
								</div>
								<!-- hero content end-->
							</div>
							<!-- col end-->
						</div>
						<!-- row end-->
					</div>
					<!-- Container end -->
				</div>
			</section>
			<!-- banner end-->
		</c:if>
		<!-- ts intro start -->

		<c:if test="${section.section2 == 'show'}">
			<section class="ts-event-outcome event-intro">
				<div class="container">
					<div class="row">
						<div class="col-lg-4">
							<div class="">
								<div class="outcome-content ts-exp-content">
									<h2 class="column-title">
										<span>${aboutUs.title}</span>${aboutUs.subTitle}
									</h2>
									<p>${aboutUs.description}</p>
									<c:if test="${aboutUs.buttonDisplay eq 'show'}">
										<a href="${aboutUs.buttonUrl}" class="btn">${aboutUs.buttonTitle}</a>
									</c:if>

								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="outcome-content">
								<div class="outcome-img overlay">
									<img class="" src="images/about/learn_img.jpg" alt="">
								</div>
								<h3 class="img-title text-white">
									<a href="#" class="text-white">Learn Things</a>
								</h3>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="outcome-content">
								<div class="outcome-img overlay">
									<img class="" src="images/about/connect_img.jpg" alt="">
								</div>
								<h3 class="img-title">
									<a href="#" class="text-white">connect People</a>
								</h3>
							</div>
						</div>

					</div>
				</div>
			</section>
		</c:if>
		<!-- ts intro end-->
		<!-- ts funfact start-->

		<c:if test="${section.section3 == 'show'}">
			<section class="ts-funfact"
				style="background-image: url(images/funfact_bg.jpg)">
				<div class="container">
					<div class="row">
						<c:forEach items="${counter}" var="counter">

							<div class="col-lg-3 col-md-6">
								<div class="ts-single-funfact">
									<h3 class="funfact-num">
										<span class="counterUp"
											data-counter='<c:out value="${counter.counterValue}"></c:out>'>${counter.counterValue}</span>+
									</h3>
									<h4 class="funfact-title">${counter.counterTitle}</h4>
								</div>
							</div>

						</c:forEach>
					</div>
					<!-- row end-->
				</div>
				<!-- container end-->
			</section>
		</c:if>

		<!-- ts funfact end-->
		<!-- ts speaker start-->
		<c:if test="${section.section4 == 'show'}">
		<section id="ts-speakers" class="ts-speakers"
			style="background-image: url(images/speakers/speaker_bg.png)">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="section-title text-center">
							<span>Listen to the</span> Event Speakers
						</h2>
					</div>
					<!-- col end-->
				</div>
				<!-- row end-->
				<div class="row">
					<div class="col-lg-3 col-md-6 wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="400ms">
						<div class="ts-speaker">
							<div class="speaker-img">
								<img class="img-fluid" src="images/speakers/speaker1.jpg" alt="">
								<a href="#popup_1" class="view-speaker ts-image-popup"
									data-effect="mfp-zoom-in"> <i class="icon icon-plus"></i>
								</a>
							</div>
							<div class="ts-speaker-info">
								<h3 class="ts-title">
									<a href="#">Fredric Martinsson</a>
								</h3>
								<p>Founder, Edilta</p>
							</div>
						</div>
						<!-- popup start-->
						<div id="popup_1" class="container ts-speaker-popup mfp-hide">
							<div class="row">
								<div class="col-lg-6">
									<div class="ts-speaker-popup-img">
										<img src="images/speakers/speaker1.jpg" alt="">
									</div>
								</div>
								<!-- col end-->
								<div class="col-lg-6">
									<div class="ts-speaker-popup-content">
										<h3 class="ts-title">David Robert</h3>
										<span class="speakder-designation">Cheif Architecture</span> <img
											class="company-logo" src="images/sponsors/sponsor-6.png"
											alt="">
										<p>World is committed to making participation in the event
											a harass ment free experience for everyone, regardless of
											level experience gender, gender identity and expression</p>
										<h4 class="session-name">Sessions by David</h4>
										<div class="row">
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
										</div>
										<div class="ts-speakers-social">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a>
										</div>
									</div>
									<!-- ts-speaker-popup-content end-->
								</div>
								<!-- col end-->
							</div>
							<!-- row end-->
						</div>
						<!-- popup end-->
					</div>
					<!-- col end-->
					<div class="col-lg-3 col-md-6 wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="500ms">
						<div class="ts-speaker">
							<div class="speaker-img">
								<img class="img-fluid" src="images/speakers/speaker2.jpg" alt="">
								<a href="#popup_2" class="view-speaker ts-image-popup"
									data-effect="mfp-zoom-in"> <i class="icon icon-plus"></i>
								</a>
							</div>
							<div class="ts-speaker-info">
								<h3 class="ts-title">
									<a href="#">Melisa Lundryn</a>
								</h3>
								<p>Lead Designer, Payol</p>
							</div>
						</div>
						<!-- popup start-->
						<div id="popup_2" class="container ts-speaker-popup mfp-hide">
							<div class="row">
								<div class="col-lg-6">
									<div class="ts-speaker-popup-img">
										<img src="images/speakers/speaker2.jpg" alt="">
									</div>
								</div>
								<!-- col end-->
								<div class="col-lg-6">
									<div class="ts-speaker-popup-content">
										<h3 class="ts-title">David Robert</h3>
										<span class="speakder-designation">Cheif Architecture</span> <img
											class="company-logo" src="images/sponsors/sponsor-6.png"
											alt="">
										<p>World is committed to making participation in the event
											a harass ment free experience for everyone, regardless of
											level experience gender, gender identity and expression</p>
										<h4 class="session-name">Sessions by David</h4>
										<div class="row">
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
										</div>
										<div class="ts-speakers-social">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a>
										</div>
									</div>
									<!-- ts-speaker-popup-content end-->
								</div>
								<!-- col end-->
							</div>
							<!-- row end-->
						</div>
						<!-- popup end-->
					</div>
					<!-- col end-->
					<div class="col-lg-3 col-md-6 wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="600ms">
						<div class="ts-speaker">
							<div class="speaker-img">
								<img class="img-fluid" src="images/speakers/speaker3.jpg" alt="">
								<a href="#popup_3" class="view-speaker ts-image-popup"
									data-effect="mfp-zoom-in"> <i class="icon icon-plus"></i>
								</a>
							</div>
							<div class="ts-speaker-info">
								<h3 class="ts-title">
									<a href="#">Agaton Johnsson</a>
								</h3>
								<p>Developer Expert</p>
							</div>
						</div>
						<!-- popup start-->
						<div id="popup_3" class="container ts-speaker-popup mfp-hide">
							<div class="row">
								<div class="col-lg-6">
									<div class="ts-speaker-popup-img">
										<img src="images/speakers/speaker3.jpg" alt="">
									</div>
								</div>
								<!-- col end-->
								<div class="col-lg-6">
									<div class="ts-speaker-popup-content">
										<h3 class="ts-title">David Robert</h3>
										<span class="speakder-designation">Cheif Architecture</span> <img
											class="company-logo" src="images/sponsors/sponsor-6.png"
											alt="">
										<p>World is committed to making participation in the event
											a harass ment free experience for everyone, regardless of
											level experience gender, gender identity and expression</p>
										<h4 class="session-name">Sessions by David</h4>
										<div class="row">
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
										</div>
										<div class="ts-speakers-social">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a>
										</div>
									</div>
									<!-- ts-speaker-popup-content end-->
								</div>
								<!-- col end-->
							</div>
							<!-- row end-->
						</div>
						<!-- popup end-->
					</div>
					<!-- col end-->
					<div class="col-lg-3 col-md-6 wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="700ms">
						<div class="ts-speaker">
							<div class="speaker-img">
								<img class="img-fluid" src="images/speakers/speaker4.jpg" alt="">
								<a href="#popup_4" class="view-speaker ts-image-popup"
									data-effect="mfp-zoom-in"> <i class="icon icon-plus"></i>
								</a>
							</div>
							<div class="ts-speaker-info">
								<h3 class="ts-title">
									<a href="#">Rebecca Henrikon</a>
								</h3>
								<p>Founder, Cards</p>
							</div>
						</div>
						<!-- popup start-->
						<div id="popup_4" class="container ts-speaker-popup mfp-hide">
							<div class="row">
								<div class="col-lg-6">
									<div class="ts-speaker-popup-img">
										<img src="images/speakers/speaker4.jpg" alt="">
									</div>
								</div>
								<!-- col end-->
								<div class="col-lg-6">
									<div class="ts-speaker-popup-content">
										<h3 class="ts-title">David Robert</h3>
										<span class="speakder-designation">Cheif Architecture</span> <img
											class="company-logo" src="images/sponsors/sponsor-6.png"
											alt="">
										<p>World is committed to making participation in the event
											a harass ment free experience for everyone, regardless of
											level experience gender, gender identity and expression</p>
										<h4 class="session-name">Sessions by David</h4>
										<div class="row">
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
										</div>
										<div class="ts-speakers-social">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a>
										</div>
									</div>
									<!-- ts-speaker-popup-content end-->
								</div>
								<!-- col end-->
							</div>
							<!-- row end-->
						</div>
						<!-- popup end-->
					</div>
					<!-- col end-->
					<div class="col-lg-3 col-md-6 wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="800ms">
						<div class="ts-speaker">
							<div class="speaker-img">
								<img class="img-fluid" src="images/speakers/speaker5.jpg" alt="">
								<a href="#popup_5" class="view-speaker  ts-image-popup"
									data-effect="mfp-zoom-in"> <i class="icon icon-plus"></i>
								</a>
							</div>
							<div class="ts-speaker-info">
								<h3 class="ts-title">
									<a href="#">Fredric Martinsson</a>
								</h3>
								<p>Founder, Edilta</p>
							</div>
						</div>
						<!-- popup start-->
						<div id="popup_5" class="container ts-speaker-popup mfp-hide">
							<div class="row">
								<div class="col-lg-6">
									<div class="ts-speaker-popup-img">
										<img src="images/speakers/speaker5.jpg" alt="">
									</div>
								</div>
								<!-- col end-->
								<div class="col-lg-6">
									<div class="ts-speaker-popup-content">
										<h3 class="ts-title">David Robert</h3>
										<span class="speakder-designation">Cheif Architecture</span> <img
											class="company-logo" src="images/sponsors/sponsor-6.png"
											alt="">
										<p>World is committed to making participation in the event
											a harass ment free experience for everyone, regardless of
											level experience gender, gender identity and expression</p>
										<h4 class="session-name">Sessions by David</h4>
										<div class="row">
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
										</div>
										<div class="ts-speakers-social">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a>
										</div>
									</div>
									<!-- ts-speaker-popup-content end-->
								</div>
								<!-- col end-->
							</div>
							<!-- row end-->
						</div>
						<!-- popup end-->
					</div>
					<!-- col end-->
					<div class="col-lg-3 col-md-6 wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="900ms">
						<div class="ts-speaker">
							<div class="speaker-img">
								<img class="img-fluid" src="images/speakers/speaker6.jpg" alt="">
								<a href="#popup_6" class="view-speaker ts-image-popup"
									data-effect="mfp-zoom-in"> <i class="icon icon-plus"></i>
								</a>
							</div>
							<div class="ts-speaker-info">
								<h3 class="ts-title">
									<a href="#">Lundryn Melisa </a>
								</h3>
								<p>Lead Designer, Payol</p>
							</div>
						</div>
						<!-- popup start-->
						<div id="popup_6" class="container ts-speaker-popup mfp-hide">
							<div class="row">
								<div class="col-lg-6">
									<div class="ts-speaker-popup-img">
										<img src="images/speakers/speaker1.jpg" alt="">
									</div>
								</div>
								<!-- col end-->
								<div class="col-lg-6">
									<div class="ts-speaker-popup-content">
										<h3 class="ts-title">David Robert</h3>
										<span class="speakder-designation">Cheif Architecture</span> <img
											class="company-logo" src="images/sponsors/sponsor-6.png"
											alt="">
										<p>World is committed to making participation in the event
											a harass ment free experience for everyone, regardless of
											level experience gender, gender identity and expression</p>
										<h4 class="session-name">Sessions by David</h4>
										<div class="row">
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
										</div>
										<div class="ts-speakers-social">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a>
										</div>
									</div>
									<!-- ts-speaker-popup-content end-->
								</div>
								<!-- col end-->
							</div>
							<!-- row end-->
						</div>
						<!-- popup end-->
					</div>
					<!-- col end-->
					<div class="col-lg-3 col-md-6 wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="1000ms">
						<div class="ts-speaker">
							<div class="speaker-img">
								<img class="img-fluid" src="images/speakers/speaker7.jpg" alt="">
								<a href="#popup_7" class="view-speaker ts-image-popup"
									data-effect="mfp-zoom-in"> <i class="icon icon-plus"></i>
								</a>
							</div>
							<div class="ts-speaker-info">
								<h3 class="ts-title">
									<a href="#">Johnsson Agaton </a>
								</h3>
								<p>Developer Expert</p>
							</div>
						</div>
						<!-- popup start-->
						<div id="popup_7" class="container ts-speaker-popup mfp-hide">
							<div class="row">
								<div class="col-lg-6">
									<div class="ts-speaker-popup-img">
										<img src="images/speakers/speaker7.jpg" alt="">
									</div>
								</div>
								<!-- col end-->
								<div class="col-lg-6">
									<div class="ts-speaker-popup-content">
										<h3 class="ts-title">David Robert</h3>
										<span class="speakder-designation">Cheif Architecture</span> <img
											class="company-logo" src="images/sponsors/sponsor-6.png"
											alt="">
										<p>World is committed to making participation in the event
											a harass ment free experience for everyone, regardless of
											level experience gender, gender identity and expression</p>
										<h4 class="session-name">Sessions by David</h4>
										<div class="row">
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
										</div>
										<div class="ts-speakers-social">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a>
										</div>
									</div>
									<!-- ts-speaker-popup-content end-->
								</div>
								<!-- col end-->
							</div>
							<!-- row end-->
						</div>
						<!-- popup end-->
					</div>
					<!-- col end-->

					<div class="col-lg-3 col-md-6 wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="1100ms">
						<div class="ts-speaker">
							<div class="speaker-img">
								<img class="img-fluid" src="images/speakers/speaker8.jpg" alt="">
								<a href="#popup_8" class="view-speaker ts-image-popup"
									data-effect="mfp-zoom-in"> <i class="icon icon-plus"></i>
								</a>
							</div>
							<div class="ts-speaker-info">
								<h3 class="ts-title">
									<a href="#">Henrikon Rebecca </a>
								</h3>
								<p>Founder, Cards</p>
							</div>
						</div>
						<!-- popup start-->
						<div id="popup_8" class="container ts-speaker-popup mfp-hide">
							<div class="row">
								<div class="col-lg-6">
									<div class="ts-speaker-popup-img">
										<img src="images/speakers/speaker8.jpg" alt="">
									</div>
								</div>
								<!-- col end-->
								<div class="col-lg-6">
									<div class="ts-speaker-popup-content">
										<h3 class="ts-title">David Robert</h3>
										<span class="speakder-designation">Cheif Architecture</span> <img
											class="company-logo" src="images/sponsors/sponsor-6.png"
											alt="">
										<p>World is committed to making participation in the event
											a harass ment free experience for everyone, regardless of
											level experience gender, gender identity and expression</p>
										<h4 class="session-name">Sessions by David</h4>
										<div class="row">
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="speaker-session-info">
													<h4>Day 1</h4>
													<span> 10.30 - 11.30 am </span>
													<p>Marketing Matters</p>
												</div>
											</div>
										</div>
										<div class="ts-speakers-social">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a>
										</div>
									</div>
									<!-- ts-speaker-popup-content end-->
								</div>
								<!-- col end-->
							</div>
							<!-- row end-->
						</div>
						<!-- popup end-->
					</div>
					<!-- col end-->
				</div>
				<!-- row end-->
			</div>
			<!-- container end-->

			<!-- shap img-->
			<div class="speaker-shap">
				<img class="shap1" src="images/shap/home_speaker_memphis1.png"
					alt=""> <img class="shap2"
					src="images/shap/home_speaker_memphis2.png" alt=""> <img
					class="shap3" src="images/shap/home_speaker_memphis3.png" alt="">
			</div>
			<!-- shap img end-->
		</section>
		</c:if>
		<!-- ts speaker end-->

		<!-- ts experience start-->
		<c:if test="${section.section5 == 'show'}">
		<section id="ts-experiences" class="ts-experiences">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6 no-padding">
						<div class="exp-img"
							style="background-image: url(images/cta_img.jpg)">
							<!-- <img class="img-fluid" src="images/cta_img.jpg" alt=""> -->
						</div>
					</div>
					<!-- col end-->
					<div class="col-lg-6 no-padding align-self-center wow fadeInUp"
						data-wow-duration="1.5s" data-wow-delay="500ms">
						<div class="ts-exp-wrap">
							<div class="ts-exp-content">
								<h2 class="column-title">
									<span>${experience.title}</span> ${experience.subTitle}
								</h2>
								<p>${experience.description}</p>
							</div>
						</div>

					</div>
					<!-- col end-->
				</div>
				<!-- row end-->
			</div>
			<!-- container fluid end-->
		</section>
		</c:if>
		<!-- ts experience end-->

		<!-- ts experience start-->
		<c:if test="${section.section6 == 'show'}">
		<section class="ts-schedule">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="section-title">
							<span>Schedule Details</span> Event Schedules
						</h2>
						<div class="ts-schedule-nav">
							<ul class="nav nav-tabs justify-content-center" role="tablist">
								<li class="nav-item"><a class="active" title="Click Me"
									href="#date1" role="tab" data-toggle="tab">
										<h3>5th June</h3> <span>Friday</span>
								</a></li>
								<li class="nav-item"><a class="" href="#date2"
									title="Click Me" role="tab" data-toggle="tab">
										<h3>6th June</h3> <span>Saturday</span>
								</a></li>
								<li class="nav-item"><a class="" href="#date3"
									title="Click Me" role="tab" data-toggle="tab">
										<h3>7th June</h3> <span>Sunday</span>
								</a></li>
							</ul>
							<!-- Tab panes -->
						</div>
					</div>
					<!-- col end-->

				</div>
				<!-- row end-->
				<div class="row">
					<div class="col-lg-12">
						<div class="tab-content schedule-tabs schedule-tabs-item">
							<div role="tabpanel" class="tab-pane active" id="date1">
								<div class="row">
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-left">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker1.jpg" alt=""> <span
												class="schedule-slot-time">10.30 - 11.30 AM</span>
											<h3 class="schedule-slot-title">Marketing Matters</h3>
											<h4 class="schedule-slot-name">@ Henrikon Rebecca</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-right">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker2.jpg" alt=""> <span
												class="schedule-slot-time">11.30 - 12.30 PM</span>
											<h3 class="schedule-slot-title">Reinventing Experiences</h3>
											<h4 class="schedule-slot-name">@ Johnsson Agaton</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-left">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker3.jpg" alt=""> <span
												class="schedule-slot-time">12.30 - 01.30 PM</span>
											<h3 class="schedule-slot-title">Cultures of Creativity</h3>
											<h4 class="schedule-slot-name">@ Lundryn Melisa</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-right">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker4.jpg" alt=""> <span
												class="schedule-slot-time">01.30 - 02.30 PM</span>
											<h3 class="schedule-slot-title">Human Centered Design</h3>
											<h4 class="schedule-slot-name">@ Fredric Martinsson</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
								</div>
								<!-- row end-->
								<div class="schedule-listing-btn">
									<a href="#" class="btn">More Details</a>
								</div>
							</div>
							<!-- tab pane end-->

							<div role="tabpanel" class="tab-pane" id="date2">
								<div class="row">
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-left">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker5.jpg" alt=""> <span
												class="schedule-slot-time">02.30 - 03.30 PM</span>
											<h3 class="schedule-slot-title">Marketing Matters</h3>
											<h4 class="schedule-slot-name">@ Rebecca Henrikon</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-right">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker6.jpg" alt=""> <span
												class="schedule-slot-time">03.30 - 04.30 PM</span>
											<h3 class="schedule-slot-title">Reinventing Experiences</h3>
											<h4 class="schedule-slot-name">@ Fredric Martinsson</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-left">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker7.jpg" alt=""> <span
												class="schedule-slot-time">04.30 - 05.30 PM</span>
											<h3 class="schedule-slot-title">Cultures of Creativity</h3>
											<h4 class="schedule-slot-name">@ Melisa Lundryn</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-right">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker8.jpg" alt=""> <span
												class="schedule-slot-time">05.30 - 06.30 PM</span>
											<h3 class="schedule-slot-title">Human Centered Design</h3>
											<h4 class="schedule-slot-name">@ Agaton Johnsson</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
								</div>
								<!-- row end-->
								<div class="schedule-listing-btn">
									<a href="#" class="btn">More Details</a>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="date3">
								<div class="row">
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-left">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker1.jpg" alt=""> <span
												class="schedule-slot-time">10.30 - 11.30 AM</span>
											<h3 class="schedule-slot-title">Marketing Matters</h3>
											<h4 class="schedule-slot-name">@ Rebecca Henrikon</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-right">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker2.jpg" alt=""> <span
												class="schedule-slot-time">11.30 - 12.30 PM</span>
											<h3 class="schedule-slot-title">Reinventing Experiences</h3>
											<h4 class="schedule-slot-name">@ Hall Building</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-left">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker3.jpg" alt=""> <span
												class="schedule-slot-time">01.30 - 02.30 PM</span>
											<h3 class="schedule-slot-title">Cultures of Creativity</h3>
											<h4 class="schedule-slot-name">@ Fredric Martinsson</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
									<div class="col-lg-6">
										<div class="schedule-listing-item schedule-right">
											<img class="schedule-slot-speakers"
												src="images/speakers/speaker4.jpg" alt=""> <span
												class="schedule-slot-time">03.30 - 04.30 PM</span>
											<h3 class="schedule-slot-title">Human Centered Design</h3>
											<h4 class="schedule-slot-name">@ Henrikon Rebecca</h4>
											<p>How you transform your business technolog consumer
												habits industry dynamics change Find out from those leading
												the charge How you</p>
										</div>
									</div>
									<!-- col end-->
								</div>
								<!-- row end-->
								<div class="schedule-listing-btn">
									<a href="#" class="btn">More Details</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- container end-->
		</section>
		</c:if>
		<!-- ts experience end-->

		<!-- ts pricing start-->
		<c:if test="${section.section7 == 'show'}">
		<section class="ts-pricing gradient"
			style="background-image: url(images/pricing/pricing_img.jpg)">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="section-title white">
							<span>${pricePlanTitle}</span> ${pricePlanSubTitle}
						</h2>
					</div>
					<!-- section title end-->
				</div>
				<!-- col end-->
				<!-- row end-->
				<div class="row">
					<c:forEach items="${pricingPlanList}" var="val">
						<div class="col-lg-4 wow fadeInUp" data-wow-duration="1.5s"
							data-wow-delay="400ms">
							<div class="pricing-item">
								<img class="pricing-dot " src="images/pricing/dot.png" alt="">
								<div class="ts-pricing-box">

									<div class="ts-pricing-header">
										<h2 class="ts-pricing-name">${val.name}</h2>
										<h3 class="ts-pricing-price">${val.price}</h3>
									</div>
									<div class="ts-pricing-progress">
										<p class="amount-progres-text">${val.detail}</p>
										<div class="ts-progress">
											<div class="ts-progress-inner" style="width: 100%"></div>
										</div>
										<p class="ts-pricing-value">${val.rating}</p>
									</div>
									<div class="promotional-code">
										<p class="promo-code-text">Click the below link</p>
										<a href="${val.btnUrl}" class="btn pricing-btn">${val.btnTitle}</a>
										<p class="vate-text">${val.tax}</p>
									</div>
								</div>
								<!-- ts pricing box-->
								<img class="pricing-dot1 " src="images/pricing/dot.png" alt="">
							</div>
						</div>
					</c:forEach>


				</div>
			</div>
			<!-- container end-->
			<div class="speaker-shap wow fadeInUp" data-wow-duration="1.5s"
				data-wow-delay="400ms">
				<img class="shap2" src="images/shap/pricing_memphis1.png" alt="">
			</div>
		</section>
		</c:if>
		<!-- ts pricing end-->
		<!-- ts blog start-->
		
		<c:if test="${section.section8 == 'show'}">
		<section class="ts-blog section-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="section-title">
							<span>Info Update</span> Latest News
						</h2>
					</div>
					<!-- col end-->
				</div>




				<!-- Blog starts-->
				<div class="row">
					<c:forEach items="${blogList}" var="blog">
						<div class="col-lg-4 wow fadeInUp" data-wow-duration="1.5s"
							data-wow-delay="400ms">
							<div class="post">
								<div class="post-media post-image">
									<a href="#"><img src="images/blog/blog1.jpg"
										class="img-fluid" alt=""></a>
								</div>

								<div class="post-body">
									<div class="post-meta">
										<span class="post-author"> <a>POSTED BY Admin</a>
										</span>

										<div class="post-meta-date">

											<fmt:formatDate value="${blog.postedDate}"
												pattern="dd-MM-YYYY" />
										</div>
									</div>
									<div class="entry-header">
										<h2 class="entry-title">
											<a>${blog.title}</a>
										</h2>
									</div>
									<!-- header end -->

									<div class="entry-content">
										<p>${blog.subTitle}</p>
									</div>

									<div class="post-footer">
										<a href="blog-detail/${blog.id}" class="btn-link">Read
											More <i class="icon icon-arrow-right"></i>
										</a>
									</div>

								</div>
								<!-- post-body end -->
							</div>
							<!-- post end-->
						</div>
					</c:forEach>
					<!-- col end-->
				</div>


				<!-- Blog Ends -->
			</div>
			<!-- container end-->
			<!-- shap image-->
			<div class="speaker-shap">
				<img class="shap2" src="images/shap/news_memphis2.png" alt="">
				<img class="shap1" src="images/shap/news_memphis1.png" alt="">
			</div>
		</section>
		</c:if>
		<!-- ts blog end-->

		<!-- ts sponsors start-->
		
		<!-- <section class="ts-intro-sponsors"
			style="background-image: url(images/sponsors/sponsor_img.jpg)">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="section-title white">
							<span>Who helps us</span> Our Sponsors
						</h2>
						section title end
					</div>
					col end
				</div>
				row end
				<div class="row">
					<div class="col-lg-12">
						<div class="sponsors-logo text-center">
							<a href="#"><img src="images/sponsors/sponsor1.png" alt=""></a>
							<a href="#"><img src="images/sponsors/sponsor2.png" alt=""></a>
							<a href="#"><img src="images/sponsors/sponsor3.png" alt=""></a>
							<a href="#"><img src="images/sponsors/sponsor4.png" alt=""></a>
							<a href="#"><img src="images/sponsors/sponsor5.png" alt=""></a>
							<a href="#"><img src="images/sponsors/sponsor6.png" alt=""></a>
							<a href="#"><img src="images/sponsors/sponsor7.png" alt=""></a>
							<a href="#"><img src="images/sponsors/sponsor8.png" alt=""></a>
							<a href="#"><img src="images/sponsors/sponsor9.png" alt=""></a>
							<div class="sponsor-btn text-center">
								<a href="#" class="btn">Become a Sponsor</a>
							</div>
						</div>
						sponsors logo end
					</div>
					col end
				</div>
				row end
			</div>
			container end
		</section> -->
		
		
		<!-- ts sponsors end-->

		<!-- ts map direction start-->
		<c:if test="${section.section9 == 'show'}">
		<section class="ts-map-direction wow fadeInUp"
			data-wow-duration="1.5s" data-wow-delay="400ms">
			<div class="container">
				<div class="row">
					<div class="col-lg-5">
						<h2 class="column-title">
							<span>Reach us</span> Get Direction to the
							${branchAddress1.companyName}
						</h2>

						<div class="ts-map-tabs">

							<ul class="nav" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									href="#profile" role="tab" data-toggle="tab">Branch 1</a></li>
								<li class="nav-item"><a class="nav-link" href="#buzz"
									role="tab" data-toggle="tab">Branch 2</a></li>
								<!-- <li class="nav-item"><a class="nav-link" href="#references"
									role="tab" data-toggle="tab">How to get there</a></li> -->
							</ul>

							<!-- Tab panes -->
							<div class="tab-content direction-tabs">
								<div role="tabpanel" class="tab-pane active" id="profile">
									<div class="direction-tabs-content">
										<h3>${branchAddress1.companyName}</h3>
										<p class="derecttion-vanue">
											${branchAddress1.addressLine1}<br />
											${branchAddress1.addressLine2}<br />
											${branchAddress1.city},${branchAddress1.state}
											${branchAddress1.pincode}
										</p>
										<div class="row">
											<div class="col-md-8">
												<div class="contact-info-box">
													<h3>For more info</h3>
													<p>
														<strong>Name: </strong>${branchAddress1.name}
													</p>
													<p>
														<strong>Phone: </strong> <a
															href="tel:${branchAddress1.mobile}">${branchAddress1.mobile}</a>
													</p>
													<p>
														<strong>Email: </strong>${branchAddress1.email}
													</p>
												</div>

											</div>
											<!-- <div class="col-md-6">
												<div class="contact-info-box">
													<h3>Programme Details</h3>
													<p>
														<strong>Name:</strong> Ronaldo König
													</p>
													<p>
														<strong>Phone:</strong> 009-215-5595
													</p>
													<p>
														<strong>Email: </strong> info@example.com
													</p>
												</div>
											</div> -->
										</div>
										<!-- row end-->
									</div>
									<!-- direction tabs end-->
								</div>
								<!-- tab pane end-->
								<div role="tabpanel" class="tab-pane fade" id="buzz">
									<div class="direction-tabs-content">
										<h3>${branchAddress1.companyName}</h3>
										<p class="derecttion-vanue">
											${branchAddress2.addressLine1}<br />
											${branchAddress2.addressLine2}<br />
											${branchAddress2.city},${branchAddress2.state}
											${branchAddress2.pincode}
										</p>
										<div class="row">
											<div class="col-md-8">
												<div class="contact-info-box">
													<h3>For more info</h3>
													<p>
														<strong>Name: </strong>${branchAddress1.name}
													</p>
													<p>
														<strong>Phone: </strong> <a
															href="tel:${branchAddress1.mobile}">${branchAddress1.mobile}</a>
													</p>
													<p>
														<strong>Email: </strong>${branchAddress1.email}
													</p>
												</div>

											</div>
											<!-- <div class="col-md-6">
												<div class="contact-info-box">
													<h3>Programme Details</h3>
													<p>
														<strong>Name:</strong> Ronaldo König
													</p>
													<p>
														<strong>Phone:</strong> 009-215-5595
													</p>
													<p>
														<strong>Email: </strong> info@example.com
													</p>
												</div>
											</div> -->
										</div>
										<!-- row end-->
									</div>
									<!-- direction tabs end-->
								</div>
								<!-- <div role="tabpanel" class="tab-pane fade" id="references">
									<div class="direction-tabs-content">
										<h3>Brighton Waterfront Hotel, Brighton, London</h3>
										<p class="derecttion-vanue">
											1Hd- 50, 010 Avenue, NY 90001<br /> United States
										</p>
										<div class="row">
											<div class="col-md-6">
												<div class="contact-info-box">
													<h3>Tickets info</h3>
													<p>
														<strong>Name:</strong> Ronaldo König
													</p>
													<p>
														<strong>Phone:</strong> 009-215-5595
													</p>
													<p>
														<strong>Email: </strong> info@example.com
													</p>
												</div>

											</div>
											<div class="col-md-6">
												<div class="contact-info-box">
													<h3>Programme Details</h3>
													<p>
														<strong>Name:</strong> Ronaldo König
													</p>
													<p>
														<strong>Phone:</strong> 009-215-5595
													</p>
													<p>
														<strong>Email: </strong> info@example.com
													</p>
												</div>
											</div>
										</div>
										row end
									</div>
									direction tabs end
								</div> -->
							</div>

						</div>
						<!-- map tabs end-->

					</div>
					<!-- col end-->
					<div class="col-lg-6 offset-lg-1">
						<div class="ts-map">
							<div class="mapouter">
								<div class="gmap_canvas">
									<iframe
										src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.9028133968723!2d-73.99208268505396!3d40.74216397932861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a4119ce269%3A0x9dec0c979b575972!2sEataly+NYC+Flatiron!5e0!3m2!1sen!2sbd!4v1541577288827"></iframe>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- col end-->
			</div>
			<!-- container end-->
			<div class="speaker-shap">
				<img class="shap1 wow fadeInLeft" data-wow-duration="1.5s"
					data-wow-delay="300ms" src="images/shap/Direction_memphis3.png"
					alt=""> <img class="shap2 wow fadeInRight"
					data-wow-duration="1.5s" data-wow-delay="400ms"
					src="images/shap/Direction_memphis2.png" alt=""> <img
					class="shap3 wow fadeInLeft" data-wow-duration="1.5s"
					data-wow-delay="500ms" src="images/shap/Direction_memphis4.png"
					alt=""> <img class="shap4 wow fadeInUp"
					data-wow-duration="1.5s" data-wow-delay="600ms"
					src="images/shap/Direction_memphis1.png" alt="">
			</div>
		</section>
		</c:if>
		<!-- ts map direction end-->

		<!-- ts footer area start-->
		<div class="footer-area">

			<!-- ts-book-seat start-->
			<section class="ts-book-seat"
				style="background-image: url(images/book_seat_img.jpg)">
				<div class="container">
					<!-- 					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="book-seat-content text-center mb-100">
								<h2 class="section-title white">
									<span>Hurry up!</span> Book your Seat
								</h2>
								<a href="#" class="btn">Buy Ticket</a>
							</div>
							book seat end
						</div>
						col end

					</div> -->
					<!-- row end-->
					<div class="ts-footer-newsletter">
						<div class="ts-newsletter"
							style="background-image: url(images/shap/subscribe_pattern.png)">
							<div class="row">
								<div class="col-lg-6 mx-auto">
									<div class="ts-newsletter-content">
										<h2 class="section-title">
											<span>${subscribe.firstTitle}</span> ${subscribe.secondTitle}
										</h2>
									</div>
									<div class="newsletter-form">
										<form data-bvalidator-validate action="/subscribers/save" method="post"
											class="media align-items-end">
											<div class="email-form-group media-body">
												<input type="email" name="email" id="newsletter-form-email"
													class="form-control" placeholder="Your Email"
													autocomplete="off" data-bvalidator="required">
											</div>
											<div class="d-flex ts-submit-btn">
												<button class="btn">${subscribe.buttonTitle}</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- container end-->
			</section>
			<!-- book seat  end-->

			<!-- footer start-->
			<c:if test="${section.section10 == 'show'}">
			<footer class="ts-footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="ts-footer-social text-center mb-30">
								<ul>

									<li><a href="${socialMediaLinks.facbookLink}"><i
											class="fa fa-facebook"></i></a></li>
									<li><a href="${socialMediaLinks.twitterLink}"><i
											class="fa fa-twitter"></i></a></li>
									<li><a href="${socialMediaLinks.goolePlusLink}"><i
											class="fa fa-google-plus"></i></a></li>
									<li><a href="${socialMediaLinks.linkedinLink}"><i
											class="fa fa-linkedin"></i></a></li>
									<li><a href="${socialMediaLinks.instagramLink}"><i
											class="fa fa-instagram"></i></a></li>
								</ul>
							</div>
							<!-- footer social end-->
							<!-- <div class="footer-menu text-center mb-25">
								<ul>
									<li><a href="#">About Eventime</a></li>
									<li><a href="#">Blog</a></li>
									<li><a href="#">Contact</a></li>
									<li><a href="#">Tickets</a></li>
									<li><a href="#">Venue</a></li>
								</ul>
							</div> -->
							<!-- footer menu end-->
							<div class="copyright-text text-center">
								<p>
									<a target="_blank" href="https://www.wedigitizeu.com">Powered By We Digitize U</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</footer>
			</c:if>
			<!-- footer end-->
			<div class="BackTo">
				<a href="#" class="fa fa-angle-up" aria-hidden="true"></a>
			</div>

		</div>
		<!-- ts footer area end-->




		<!-- Javascript Files
            ================================================== -->
		<!-- initialize jQuery Library -->
		<script src="js/jquery.js"></script>

		<script src="js/popper.min.js"></script>
		<!-- Bootstrap jQuery -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Counter -->
		<script src="js/jquery.appear.min.js"></script>
		<!-- Countdown -->
		<script src="js/jquery.jCounter.js"></script>
		<!-- magnific-popup -->
		<script src="js/jquery.magnific-popup.min.js"></script>
		<!-- carousel -->
		<script src="js/owl.carousel.min.js"></script>
		<!-- Waypoints -->
		<script src="js/wow.min.js"></script>

		<!-- isotop -->
		<script src="js/isotope.pkgd.min.js"></script>

		<!-- Template custom -->
		<script src="js/main.js"></script>

	</div>
	<!-- Body inner end -->
</body>


<!-- index-515:53-->
</html>