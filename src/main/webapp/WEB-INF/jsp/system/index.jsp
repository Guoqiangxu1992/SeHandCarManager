<%@ page pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>欢迎来我家</title>
	<%@include file="taglib.jsp"%>
    <%@include file="css.jsp"%>
	
	
	
</head>
<body>
	<section id="container"> 
		<%@include file="header.jsp"%>
		
		<%@include file="menu.jsp"%>
      
      
      <!--main content start-->
      <section id="main-content">
          <section id="mainSection" class="wrapper footer-min-height">
			
			<!-- ---------------------------------------------- -->

				<section class="wrapper">
              <!--state overview start-->
              <div class="row state-overview">
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol terques">
                              <i class="icon-user"></i>
                          </div>
                          <div class="value">
                              <h1 class="count">495</h1>
                              <p>New Users</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol red">
                              <i class="icon-tags"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count2">947</h1>
                              <p>Sales</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol yellow">
                              <i class="icon-shopping-cart"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count3">328</h1>
                              <p>New Order</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol blue">
                              <i class="icon-bar-chart"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count4">10328</h1>
                              <p>Total Profit</p>
                          </div>
                      </section>
                  </div>
              </div>
              <!--state overview end-->

              <div class="row">
                  <div class="col-lg-8">
                      <!--custom chart start-->
                      <div class="border-head">
                          <h3>Earning Graph</h3>
                      </div>
                      <div class="custom-bar-chart">
                          <ul class="y-axis">
                              <li><span>100</span></li>
                              <li><span>80</span></li>
                              <li><span>60</span></li>
                              <li><span>40</span></li>
                              <li><span>20</span></li>
                              <li><span>0</span></li>
                          </ul>
                          <div class="bar">
                              <div class="title">JAN</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="80%" class="value tooltips" style="height: 80%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">FEB</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="50%" class="value tooltips" style="height: 50%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">MAR</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="40%" class="value tooltips" style="height: 40%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">APR</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="55%" class="value tooltips" style="height: 55%;"></div>
                          </div>
                          <div class="bar">
                              <div class="title">MAY</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="20%" class="value tooltips" style="height: 20%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">JUN</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="39%" class="value tooltips" style="height: 39%;"></div>
                          </div>
                          <div class="bar">
                              <div class="title">JUL</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="75%" class="value tooltips" style="height: 75%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">AUG</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="45%" class="value tooltips" style="height: 45%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">SEP</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="50%" class="value tooltips" style="height: 50%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">OCT</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="42%" class="value tooltips" style="height: 42%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">NOV</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="60%" class="value tooltips" style="height: 60%;"></div>
                          </div>
                          <div class="bar ">
                              <div class="title">DEC</div>
                              <div data-placement="top" data-toggle="tooltip" data-original-title="90%" class="value tooltips" style="height: 90%;"></div>
                          </div>
                      </div>
                      <!--custom chart end-->
                  </div>
                  <div class="col-lg-4">
                      <!--new earning start-->
                      <div class="panel terques-chart">
                          <div class="panel-body chart-texture">
                              <div class="chart">
                                  <div class="heading">
                                      <span>Friday</span>
                                      <strong>$ 57,00 | 15%</strong>
                                  </div>
                                  <div data-data="[200,135,667,333,526,996,564,123,890,564,455]" data-spot-radius="4" data-highlight-line-color="#fff" data-fill-color="" data-spot-color="#fff" data-line-color="#fff" data-line-width="1" data-width="90%" data-height="75" data-resize="true" data-type="line" class="sparkline"><canvas style="display: inline-block; width: 252px; height: 75px; vertical-align: top;" width="252" height="75"></canvas></div>
                              </div>
                          </div>
                          <div class="chart-tittle">
                              <span class="title">New Earning</span>
                              <span class="value">
                                  <a class="active" href="#">Market</a>
                                  |
                                  <a href="#">Referal</a>
                                  |
                                  <a href="#">Online</a>
                              </span>
                          </div>
                      </div>
                      <!--new earning end-->

                      <!--total earning start-->
                      <div class="panel green-chart">
                          <div class="panel-body">
                              <div class="chart">
                                  <div class="heading">
                                      <span>June</span>
                                      <strong>23 Days | 65%</strong>
                                  </div>
                                  <div id="barchart"><canvas style="display: inline-block; width: 294px; height: 65px; vertical-align: top;" width="294" height="65"></canvas></div>
                              </div>
                          </div>
                          <div class="chart-tittle">
                              <span class="title">Total Earning</span>
                              <span class="value">$, 76,54,678</span>
                          </div>
                      </div>
                      <!--total earning end-->
                  </div>
              </div>
              <div class="row">
                  <div class="col-lg-4">
                      <!--user info table start-->
                      <section class="panel">
                          <div class="panel-body">
                              <a class="task-thumb" href="#">
                                  <img alt="" src="img/avatar1.jpg">
                              </a>
                              <div class="task-thumb-details">
                                  <h1><a href="#">Anjelina Joli</a></h1>
                                  <p>Senior Architect</p>
                              </div>
                          </div>
                          <table class="table table-hover personal-task">
                              <tbody>
                                <tr>
                                    <td>
                                        <i class=" icon-tasks"></i>
                                    </td>
                                    <td>New Task Issued</td>
                                    <td> 02</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="icon-warning-sign"></i>
                                    </td>
                                    <td>Task Pending</td>
                                    <td> 14</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="icon-envelope"></i>
                                    </td>
                                    <td>Inbox</td>
                                    <td> 45</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class=" icon-bell-alt"></i>
                                    </td>
                                    <td>New Notification</td>
                                    <td> 09</td>
                                </tr>
                              </tbody>
                          </table>
                      </section>
                      <!--user info table end-->
                  </div>
                  <div class="col-lg-8">
                      <!--work progress start-->
                      <section class="panel">
                          <div class="panel-body progress-panel">
                              <div class="task-progress">
                                  <h1>Work Progress</h1>
                                  <p>Anjelina Joli</p>
                              </div>
                              <div class="task-option">
                                  <select class="styled hasCustomSelect" style="width: 116px; position: absolute; opacity: 0; height: 39px; font-size: 12px;">
                                      <option>Anjelina Joli</option>
                                      <option>Tom Crouse</option>
                                      <option>Jhon Due</option>
                                  </select><span class="customSelect styled" style="display: inline-block;"><span class="customSelectInner" style="width: 94px; display: inline-block;">Anjelina Joli</span></span>
                              </div>
                          </div>
                          <table class="table table-hover personal-task">
                              <tbody>
                              <tr>
                                  <td>1</td>
                                  <td>
                                      Target Sell
                                  </td>
                                  <td>
                                      <span class="badge bg-important">75%</span>
                                  </td>
                                  <td>
                                    <div id="work-progress1"><canvas style="display: inline-block; width: 47px; height: 20px; vertical-align: top;" width="47" height="20"></canvas></div>
                                  </td>
                              </tr>
                              <tr>
                                  <td>2</td>
                                  <td>
                                      Product Delivery
                                  </td>
                                  <td>
                                      <span class="badge bg-success">43%</span>
                                  </td>
                                  <td>
                                      <div id="work-progress2"><canvas style="display: inline-block; width: 47px; height: 22px; vertical-align: top;" width="47" height="22"></canvas></div>
                                  </td>
                              </tr>
                              <tr>
                                  <td>3</td>
                                  <td>
                                      Payment Collection
                                  </td>
                                  <td>
                                      <span class="badge bg-info">67%</span>
                                  </td>
                                  <td>
                                      <div id="work-progress3"><canvas style="display: inline-block; width: 47px; height: 22px; vertical-align: top;" width="47" height="22"></canvas></div>
                                  </td>
                              </tr>
                              <tr>
                                  <td>4</td>
                                  <td>
                                      Work Progress
                                  </td>
                                  <td>
                                      <span class="badge bg-warning">30%</span>
                                  </td>
                                  <td>
                                      <div id="work-progress4"><canvas style="display: inline-block; width: 47px; height: 22px; vertical-align: top;" width="47" height="22"></canvas></div>
                                  </td>
                              </tr>
                              <tr>
                                  <td>5</td>
                                  <td>
                                      Delivery Pending
                                  </td>
                                  <td>
                                      <span class="badge bg-primary">15%</span>
                                  </td>
                                  <td>
                                      <div id="work-progress5"><canvas style="display: inline-block; width: 47px; height: 22px; vertical-align: top;" width="47" height="22"></canvas></div>
                                  </td>
                              </tr>
                              </tbody>
                          </table>
                      </section>
                      <!--work progress end-->
                  </div>
              </div>
              <div class="row">
                  <div class="col-lg-8">
                      <!--timeline start-->
                      <section class="panel">
                          <div class="panel-body">
                                  <div class="text-center mbot30">
                                      <h3 class="timeline-title">Timeline</h3>
                                      <p class="t-info">This is a project timeline</p>
                                  </div>

                                  <div class="timeline">
                                      <article class="timeline-item">
                                          <div class="timeline-desk">
                                              <div class="panel">
                                                  <div class="panel-body">
                                                      <span class="arrow"></span>
                                                      <span class="timeline-icon red"></span>
                                                      <span class="timeline-date">08:25 am</span>
                                                      <h1 class="red">12 July | Sunday</h1>
                                                      <p>Lorem ipsum dolor sit amet consiquest dio</p>
                                                  </div>
                                              </div>
                                          </div>
                                      </article>
                                      <article class="timeline-item alt">
                                          <div class="timeline-desk">
                                              <div class="panel">
                                                  <div class="panel-body">
                                                      <span class="arrow-alt"></span>
                                                      <span class="timeline-icon green"></span>
                                                      <span class="timeline-date">10:00 am</span>
                                                      <h1 class="green">10 July | Wednesday</h1>
                                                      <p><a href="#">Jonathan Smith</a> added new milestone <span><a class="green" href="#">ERP</a></span></p>
                                                  </div>
                                              </div>
                                          </div>
                                      </article>
                                      <article class="timeline-item">
                                          <div class="timeline-desk">
                                              <div class="panel">
                                                  <div class="panel-body">
                                                      <span class="arrow"></span>
                                                      <span class="timeline-icon blue"></span>
                                                      <span class="timeline-date">11:35 am</span>
                                                      <h1 class="blue">05 July | Monday</h1>
                                                      <p><a href="#">Anjelina Joli</a> added new album <span><a class="blue" href="#">PARTY TIME</a></span></p>
                                                      <div class="album">
                                                          <a href="#">
                                                              <img src="img/sm-img-1.jpg" alt="">
                                                          </a>
                                                          <a href="#">
                                                              <img src="img/sm-img-2.jpg" alt="">
                                                          </a>
                                                          <a href="#">
                                                              <img src="img/sm-img-3.jpg" alt="">
                                                          </a>
                                                          <a href="#">
                                                              <img src="img/sm-img-1.jpg" alt="">
                                                          </a>
                                                          <a href="#">
                                                              <img src="img/sm-img-2.jpg" alt="">
                                                          </a>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </article>
                                      <article class="timeline-item alt">
                                          <div class="timeline-desk">
                                              <div class="panel">
                                                  <div class="panel-body">
                                                      <span class="arrow-alt"></span>
                                                      <span class="timeline-icon purple"></span>
                                                      <span class="timeline-date">3:20 pm</span>
                                                      <h1 class="purple">29 June | Saturday</h1>
                                                      <p>Lorem ipsum dolor sit amet consiquest dio</p>
                                                      <div class="notification">
                                                          <i class=" icon-exclamation-sign"></i> New task added for <a href="#">Denial Collins</a>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </article>
                                      <article class="timeline-item">
                                          <div class="timeline-desk">
                                              <div class="panel">
                                                  <div class="panel-body">
                                                      <span class="arrow"></span>
                                                      <span class="timeline-icon light-green"></span>
                                                      <span class="timeline-date">07:49 pm</span>
                                                      <h1 class="light-green">10 June | Friday</h1>
                                                      <p><a href="#">Jonatha Smith</a> added new milestone <span><a class="light-green" href="#">prank</a></span> Lorem ipsum dolor sit amet consiquest dio</p>
                                                  </div>
                                              </div>
                                          </div>
                                      </article>
                                  </div>

                                  <div class="clearfix">&nbsp;</div>
                              </div>
                      </section>
                      <!--timeline end-->
                  </div>
                  <div class="col-lg-4">
                      <!--revenue start-->
                      <section class="panel">
                          <div class="revenue-head">
                              <span>
                                  <i class="icon-bar-chart"></i>
                              </span>
                              <h3>Revenue</h3>
                              <span class="rev-combo pull-right">
                                 June 2013
                              </span>
                          </div>
                          <div class="panel-body">
                              <div class="row">
                                  <div class="col-lg-6 col-sm-6 text-center">
                                      <div class="easy-pie-chart">
                                          <div data-percent="35" class="percentage easyPieChart" style="width: 135px; height: 135px; line-height: 135px;"><span>35</span>%<canvas height="135" width="135"></canvas></div>
                                      </div>
                                  </div>
                                  <div class="col-lg-6 col-sm-6">
                                      <div class="chart-info chart-position">
                                          <span class="increase"></span>
                                          <span>Revenue Increase</span>
                                      </div>
                                      <div class="chart-info">
                                          <span class="decrease"></span>
                                          <span>Revenue Decrease</span>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="panel-footer revenue-foot">
                              <ul>
                                  <li class="first active">
                                      <a href="javascript:;">
                                          <i class="icon-bullseye"></i>
                                          Graphical
                                      </a>
                                  </li>
                                  <li>
                                      <a href="javascript:;">
                                          <i class=" icon-th-large"></i>
                                          Tabular
                                      </a>
                                  </li>
                                  <li class="last">
                                      <a href="javascript:;">
                                          <i class=" icon-align-justify"></i>
                                          Listing
                                      </a>
                                  </li>
                              </ul>
                          </div>
                      </section>
                      <!--revenue end-->
                      <!--features carousel start-->
                      <section class="panel">
                          <div class="flat-carousal">
                              <div class="owl-carousel owl-theme" id="owl-demo" style="opacity: 1; display: block;">
                                  <div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 1740px; left: 0px; display: block; transform: translate3d(-290px, 0px, 0px); transition: all 400ms ease 0s;"><div class="owl-item" style="width: 290px;"><div class="item">
                                      <h1>Flatlab is new model of admin dashboard for happy use</h1>
                                      <div class="text-center">
                                          <a class="view-all" href="javascript:;">View All</a>
                                      </div>
                                  </div></div><div class="owl-item active" style="width: 290px;"><div class="item">
                                      <h1>Fully responsive and build with Bootstrap 3.0</h1>
                                      <div class="text-center">
                                          <a class="view-all" href="javascript:;">View All</a>
                                      </div>
                                  </div></div><div class="owl-item" style="width: 290px;"><div class="item">
                                      <h1>Responsive Frontend is free if you get this.</h1>
                                      <div class="text-center">
                                          <a class="view-all" href="javascript:;">View All</a>
                                      </div>
                                  </div></div></div></div>
                                  
                                  
                              <div class="owl-controls clickable"><div class="owl-pagination"><div class="owl-page"><span class=""></span></div><div class="owl-page active"><span class=""></span></div><div class="owl-page"><span class=""></span></div></div><div class="owl-buttons"><div class="owl-prev">prev</div><div class="owl-next">next</div></div></div></div>
                          </div>
                          <div class="panel-body">
                              <ul class="ft-link">
                                  <li class="active">
                                      <a href="javascript:;">
                                          <i class="icon-reorder"></i>
                                          Sales
                                      </a>
                                  </li>
                                  <li>
                                      <a href="javascript:;">
                                          <i class=" icon-calendar-empty"></i>
                                          promo
                                      </a>
                                  </li>
                                  <li>
                                      <a href="javascript:;">
                                          <i class=" icon-camera"></i>
                                          photo
                                      </a>
                                  </li>
                                  <li>
                                      <a href="javascript:;">
                                          <i class=" icon-circle"></i>
                                          other
                                      </a>
                                  </li>
                              </ul>
                          </div>
                      </section>
                      <!--features carousel end-->
                  </div>
              </div>
              <div class="row">
                  <div class="col-lg-8">
                      <!--latest product info start-->
                      <section class="panel post-wrap pro-box">
                          <aside>
                              <div class="post-info">
                                  <span class="arrow-pro right"></span>
                                  <div class="panel-body">
                                      <h1><strong>popular</strong> <br> Brand of this week</h1>
                                      <div class="desk yellow">
                                          <h3>Dimond Ring</h3>
                                          <p>Lorem ipsum dolor set amet lorem ipsum dolor set amet ipsum dolor set amet</p>
                                      </div>
                                      <div class="post-btn">
                                          <a href="javascript:;">
                                              <i class="icon-chevron-sign-left"></i>
                                          </a>
                                          <a href="javascript:;">
                                              <i class="icon-chevron-sign-right"></i>
                                          </a>
                                      </div>
                                  </div>
                              </div>
                          </aside>
                          <aside class="post-highlight yellow v-align">
                              <div class="panel-body text-center">
                                  <div class="pro-thumb">
                                      <img alt="" src="img/ring.jpg">
                                  </div>
                              </div>
                          </aside>
                      </section>
                      <!--latest product info end-->
                      <!--twitter feedback start-->
                      <section class="panel post-wrap pro-box">
                          <aside class="post-highlight terques v-align">
                              <div class="panel-body">
                                  <h2>Flatlab is new model of admin dashboard <a href="javascript:;"> http://demo.com/</a> 4 days ago  by jonathan smith</h2>
                              </div>
                          </aside>
                          <aside>
                              <div class="post-info">
                                  <span class="arrow-pro left"></span>
                                  <div class="panel-body">
                                      <div class="text-center twite">
                                          <h1>Twitter Feed</h1>
                                      </div>

                                      <footer class="social-footer">
                                          <ul>
                                              <li>
                                                  <a href="#">
                                                    <i class="icon-facebook"></i>
                                                  </a>
                                              </li>
                                              <li class="active">
                                                  <a href="#">
                                                      <i class="icon-twitter"></i>
                                                  </a>
                                              </li>
                                              <li>
                                                  <a href="#">
                                                      <i class="icon-google-plus"></i>
                                                  </a>
                                              </li>
                                              <li>
                                                  <a href="#">
                                                      <i class="icon-pinterest"></i>
                                                  </a>
                                              </li>
                                          </ul>
                                      </footer>
                                  </div>
                              </div>
                          </aside>
                      </section>
                      <!--twitter feedback end-->
                  </div>
                  <div class="col-lg-4">
                      <div class="row">
                          <div class="col-xs-6">
                              <!--pie chart start-->
                              <section class="panel">
                                  <div class="panel-body">
                                      <div class="chart">
                                          <div id="pie-chart"><canvas style="display: inline-block; width: 100px; height: 100px; vertical-align: top;" width="100" height="100"></canvas></div>
                                      </div>
                                  </div>
                                  <footer class="pie-foot">
                                      Free: 260GB
                                  </footer>
                              </section>
                              <!--pie chart start-->
                          </div>
                          <div class="col-xs-6">
                              <!--follower start-->
                              <section class="panel">
                                  <div class="follower">
                                      <div class="panel-body">
                                          <h4>Jonathan Smith</h4>
                                          <div class="follow-ava">
                                              <img alt="" src="img/follower-avatar.jpg">
                                          </div>
                                      </div>
                                  </div>

                                  <footer class="follower-foot">
                                      <ul>
                                          <li>
                                              <h5>2789</h5>
                                              <p>Follower</p>
                                          </li>
                                          <li>
                                              <h5>270</h5>
                                              <p>Following</p>
                                          </li>
                                      </ul>
                                  </footer>
                              </section>
                              <!--follower end-->
                          </div>
                      </div>
                      <!--weather statement start-->
                      <section class="panel">
                          <div class="weather-bg">
                              <div class="panel-body">
                                  <div class="row">
                                      <div class="col-xs-6">
                                        <i class="icon-cloud"></i>
                                          California
                                      </div>
                                      <div class="col-xs-6">
                                          <div class="degree">
                                              24°
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>

                          <footer class="weather-category">
                              <ul>
                                  <li class="active">
                                      <h5>humidity</h5>
                                      56%
                                  </li>
                                  <li>
                                      <h5>precip</h5>
                                      1.50 in
                                  </li>
                                  <li>
                                      <h5>winds</h5>
                                      10 mph
                                  </li>
                              </ul>
                          </footer>

                      </section>
                      <!--weather statement end-->
                  </div>
              </div>

          </section>
			
			<!-- ---------------------------------------------- -->
			
          </section>
      </section>
      <!--main content end-->
     <%@include file="footer.jsp"%>
	</section>
	<script type="text/javascript">
	
	var father=[];
	var child=[];
	var treeholder=$("#nav-accordion");
	var mainActiveId;
	
	$(function() {
		//ajax取用户拥有的权限
		loadPermission();
		
	});

	function loadPermission(){
		url = '/SecondHandCarManager/menu/getMenuByName.do';
		$.ajax({
			async: false,
			type: 'POST',
			dataType: 'json',
			url: url,
			error : function(XMLHttpRequest, textStatus, errorThrown) {
			},
			success: function(zTreeJson){
				
				initDatas(zTreeJson);
			}
		});
	}
	function initDatas(tree){
		for(var i=0;i<tree.length;i++){
			if(tree[i].pid == 0){//PID=1 父节点
				father.push(tree[i]);
			}else{
				child.push(tree[i]);
			}
		}
		for(var i=0;i<father.length;i++){
			var activeId = father[i].id + "-0";
			var abId = father[i].id + "-a";
			var url = father[i].url;
			url = '/SecondHandCarManager' + url;
			//url = url + "?active=" + abId;
			if(father[i].url!=null && father[i].url!=""){
				           //       "<li id="+activeId+" >                  <a id="+abId+" href=\"inbox.html\">                                                        <i class=\"icon-envelope\"></i><span>Mail </span></a></li>"
				treeholder.append("<li id="+activeId+" class=\"sub-menu dcjq-parent-li\"><a id="+abId+" href=\"javascript:void(0);\" onclick=\"locationUrl('"+url+"','"+abId+"')\"><i class=\"icon-dashboard\"></i><span>"+father[i].MenuName+"</span></a></li>");
			}else{
				//url为null 活 "" 说明   是有子节点的父节点 
				treeholder.append("<li id="+activeId+" class=\"sub-menu dcjq-parent-li\"><a id="+abId+" href=\"javascript:void(0);\" class=\"dcjq-parent \"><i class=\"icon-dashboard\"></i><span>"+father[i].MenuName+"</span><span class=\"dcjq-icon\"></span></a></li>");
				iter(father[i].id);
			}
		}
	}

	function iter(id){
		$("#"+id+"-0").append("<ul id=\""+id+"-1"+"\" class=\"sub\" style=\"display: none;\"></ul>");
		for(var i=0;i<child.length;i++){
			var activeId = child[i].id + "-" + id + "-a";
			var url = child[i].url;
			url = '/SecondHandCarManager'  + url;//加上系统名称
			if(child[i].pid==id){
				if (child[i].url!=''&&child[i].url!=null) {
					$("#"+id+"-1").append("<li id="+activeId+"><a href=\"javascript:void(0);\" onclick=\"locationUrl('"+url+"','"+activeId+"')\">"+child[i].MenuName+"</a></li>");
				}else{
					$("#"+id+"-1").append("<li id=\""+child[i].id+"-0"+"\" class=\"sub-menu\"><a href=\"javascript:;\">"+child[i].MenuName+"</a></li>");
					//iter(child[i].id);
				}
			}
		}
	}

	function locationUrl(url,activeId){
		if(mainActiveId != null && mainActiveId != ""){
			var acrr = mainActiveId.split("-");
			if(acrr.length = 3){
				//二级
				var fatherActive = acrr[1]+"-"+acrr[2];
				$("#"+mainActiveId).removeAttr("class");
				$("#"+fatherActive).removeAttr("class");
			}else{
				//一级
				$("#"+mainActiveId).removeAttr("class");
			}
		}
		if(activeId != null && activeId != ""){
			var acrr = activeId.split("-");
			if(acrr.length = 3){
				//二级
				var fatherActive = acrr[1]+"-"+acrr[2];
				$("#"+activeId).attr("class", "active");
				$("#"+fatherActive).attr("class", "active");
			}else{
				//一级
				$("#"+activeId).attr("class", "active");
			}
			mainActiveId = activeId;
		}
		common.loadPage(url,null);
	}


	</script>
	
	
	

  <%@include file="js.jsp"%>
</body>
</html>