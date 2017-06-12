<%@ page import="jdk.nashorn.internal.ir.RuntimeNode" %>
<%@ page import="org.springframework.web.bind.annotation.RequestMethod" %>
<%@ page import="org.springframework.http.HttpRequest" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="main.java.model.Film" %>
<%@ page import="main.java.model.Cinema" %>
<%@ page import="main.java.model.Tickets" %>
<%--
  Created by IntelliJ IDEA.
  User: NjuMzc
  Date: 2017/2/25
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TicketCollector</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="../pages/css/bootstrap.min.css"  type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="../pages/css/style.css">

    <!-- Owl Carousel Assets -->
    <link href="../pages/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="../pages/owl-carousel/owl.theme.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">

    <!-- jQuery and Modernizr-->
    <script src="../pages/js/jquery-2.1.1.js"></script>

    <!-- Core JavaScript Files -->
    <script src="../pages/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="../pages/js/html5shiv.js"></script>
    <script src="../pages/js/respond.min.js"></script>
    <![endif]-->
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <style type="text/css">object,embed{-webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;-ms-animation-duration:.001s;-ms-animation-name:playerInserted;-o-animation-duration:.001s;-o-animation-name:playerInserted;animation-duration:.001s;animation-name:playerInserted;}@-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}@-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}@-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}@keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}</style>
</head>
<body>
<header>
    <!--Top-->
    <nav id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <strong>Welcome to TicketCollector!</strong>
                </div>
                <div class="col-md-6 col-sm-6">
                    <ul class="list-inline top-link link">
                        <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="contact.html"><i class="fa fa-comments"></i> Contact</a></li>
                        <li><a href="#"><i class="fa fa-question-circle"></i> FAQ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <!--Navigation-->
    <nav id="menu" class="navbar">
        <div class="container">
            <div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
                <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/home"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="https://github.com/NjuMzc/MovieTicketCollector"><i class="fa fa-envelope"></i> Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>


</header>
<!-- Header -->

<!-- /////////////////////////////////////////Content -->
<%
    Film film = (Film) request.getAttribute("Film");
    Cinema cinema = (Cinema) request.getAttribute("Cinema");
    ArrayList<Tickets> tickets = (ArrayList<Tickets>) request.getAttribute("TicketList");

    session.setAttribute("Film",film);
    session.setAttribute("Cinema",cinema);
%>

<div id="page-content" class="single-page">
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <img src="<%=film.getPicture()%>" />
                    </div>
                    <div class="col-md-9">
                        <h4><%=film.getName()%></h4><br>
                        <p style="font-size:110%">导演：<%=film.getName()%></p>
                        <p style="font-size:110%">主演：<%=film.getActor()%></p>
                        <p style="font-size:110%">影片时长：<%=film.getHours()%></p>
                        <p style="font-size:110%">上映时间：<%=film.getOpen_date()%></p>
                        <p style="font-size:110%">语言：<%=film.getLanguage()%></p>
                        <p style="font-size:110%">剧情简介：
                            <%=film.getContent()%>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <div class="row">
                    <form class="form-inline" role="form" action="<%=request.getContextPath()%>/tickets" method="post">
                        <div class="form-group">
                            <label>&nbsp;&nbsp;&nbsp;&nbsp;选择观影日期</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="date" class="form-control" id="date" name="date">
                            &nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary">查询</button>
                        </div>
                    </form>
                </div>
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#activity" data-toggle="tab" aria-expanded="true">格瓦拉</a></li>
                        <li class=""><a href="#timeline" data-toggle="tab" aria-expanded="false">时光网</a></li>
                        <li class=""><a href="#settings" data-toggle="tab" aria-expanded="false">百度糯米</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="activity">
                                <div class="box">
                                    <div class="box-body">
                                        <table class="table table-bordered">
                                            <tbody>
                                            <tr>
                                                <th>放映时间</th>
                                                <th>结束时间</th>
                                                <th>放映厅</th>
                                                <th>票价</th>
                                                <th>优惠信息</th>
                                                <th>购票入口</th>
                                            </tr>
                                            <%
                                                for(int i=0;i<tickets.size();i++){
                                                    Tickets ticket = tickets.get(i);
                                                    if(ticket.getApp_type()==1){
                                                        %>
                                                <tr>
                                                    <td><%=ticket.getStart_time()%></td>
                                                    <td><%=ticket.getEnd_time()%></td>
                                                    <td><%=ticket.getHall_address()%></td>
                                                    <td><%=ticket.getPrice()%></td>
                                                    <td><%=ticket.getDiscount_msg()%></td>
                                                    <td><a align="left"href="<%=ticket.getBuy_url()%>">点击购票</a></td>
                                                </tr>
                                            <%
                                                    }
                                                }
                                            %>
                                            </tbody></table>
                                    </div>
                                </div>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane" id="timeline">
                            <div class="box">
                                <div class="box-body">
                                    <table class="table table-bordered">
                                        <tbody>
                                        <tr>
                                            <th>放映时间</th>
                                            <th>结束时间</th>
                                            <th>放映厅</th>
                                            <th>票价</th>
                                            <th>优惠信息</th>
                                            <th>购票入口</th>
                                        </tr>
                                        <%
                                            for(int i=0;i<tickets.size();i++){
                                                Tickets ticket = tickets.get(i);
                                                if(ticket.getApp_type()==2){
                                        %>
                                        <tr>
                                            <td><%=ticket.getStart_time()%></td>
                                            <td><%=ticket.getEnd_time()%></td>
                                            <td><%=ticket.getHall_address()%></td>
                                            <td><%=ticket.getPrice()%></td>
                                            <td><%=ticket.getDiscount_msg()%></td>
                                            <td><a align="left"href="<%=ticket.getBuy_url()%>">点击购票</a></td>
                                        </tr>
                                        <%
                                                }
                                            }
                                        %>
                                        </tbody></table>
                                </div>
                            </div>
                        </div>
                        <!-- /.tab-pane -->

                        <div class="tab-pane" id="settings">
                            <div class="box">
                                <div class="box-body">
                                    <table class="table table-bordered">
                                        <tbody>
                                        <tr>
                                            <th>放映时间</th>
                                            <th>结束时间</th>
                                            <th>放映厅</th>
                                            <th>票价</th>
                                            <th>优惠信息</th>
                                            <th>购票入口</th>
                                        </tr>
                                        <%
                                            for(int i=0;i<tickets.size();i++){
                                                Tickets ticket = tickets.get(i);
                                                if(ticket.getApp_type()==3){
                                        %>
                                        <tr>
                                            <td><%=ticket.getStart_time()%></td>
                                            <td><%=ticket.getEnd_time()%></td>
                                            <td><%=ticket.getHall_address()%></td>
                                            <td><%=ticket.getPrice()%></td>
                                            <td><%=ticket.getDiscount_msg()%></td>
                                            <td><a align="left"href="<%=ticket.getBuy_url()%>">点击购票</a></td>
                                        </tr>
                                        <%
                                                }
                                            }
                                        %>
                                        </tbody></table>
                                </div>
                            </div>
                        </div>
                        <!-- /.tab-pane -->
                    </div>
                    <!-- /.tab-content -->
                </div>
            </div>
        </div>
    </div>
</div>
</div>

</div>

<footer>
    <div class="top-footer">
        <ul class="footer-social list-inline">
            <li><a href="#"><i class="fa fa-twitter"></i> <span>Twitter</span></a></li>
            <li><a href="#"><i class="fa fa-facebook"></i> <span>Facebook</span></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i> <span>Google+</span></a></li>
            <li><a href="#"><i class="fa fa-youtube"></i> <span>Video's Tag</span></a></li>
            <li><a href="#"><i class="fa fa-vimeo-square"></i> <span>Vimeo</span></a></li>
            <li><a href="#"><i class="fa fa-pinterest"></i> <span>Pinterest</span></a></li>
            <li><a href="#"><i class="fa fa-rss"></i> <span>Rss</span></a></li>
        </ul>
    </div>
    <div class="wrap-footer">
        <div class="container">
            <div class="row">
                <aside class="col-footer col-md-3">
                    <h2 class="footer-title">ABOUT US</h2>
                    <div class="textwidget">We are a team of Nanjing University.Yes,I just want to write something here so that it could not look so empty.Thank you for read these!
                        Well,I check the page and I found I should write something more.Please do not care this.
                    </div>
                </aside>
                <aside class="col-footer col-md-3 widget_recent_entries">
                    <h2 class="footer-title">Recent Posts</h2>
                    <ul>
                        <li><a href="#">MOST VISITED COUNTRIES</a></li>
                        <li><a href="#">5 PLACES THAT MAKE A GREAT HOLIDAY</a></li>
                        <li><a href="#">PEBBLE TIME STEEL IS ON TRACK TO SHIP IN JULY</a></li>
                        <li><a href="#">STARTUP COMPANY&#8217;S CO-FOUNDER TALKS ON HIS NEW PRODUCT</a></li>
                    </ul>
                </aside>
                <aside class="col-footer col-md-3">
                    <h2 class="footer-title">NEWS LETTER</h2>
                    If you want to receive our latest news send directly to your email, please leave your email address bellow. Subscription is free and you can cancel anytime.
                </aside>
                <aside class="col-footer col-md-3 wptt_TwitterTweets">
                    <h2 class="footer-title">Twitter</h2>
                    <ul class="fetched_tweets light">
                        <li class="tweets_avatar">
                            <div class="tweet_wrap">
                                <div class="wdtf-user-card ltr">
                                    <div class="clear"></div>
                                </div>
                                <div class="tweet_data"> Check out 'NewsTube - Magazine Blog &amp; Video' on <a href="#" target="_blank" rel="nofollow">#EnvatoMarket</a> <a href="#" target="_blank" rel="nofollow">#themeforest</a> <a href="http://t.co/jQV1MrQQKY" target="_blank" rel="nofollow">http://t.co/jQV1MrQQKY</a></div> <br/>
                                <div class="clear"></div>
                                <div class="times"> <em> <a href="#" target="_blank" title="Follow cactusthemes on Twitter [Opens new window]"> 2 months ago </a> </em></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="tweets_avatar">
                            <div class="tweet_wrap">
                                <div class="wdtf-user-card ltr"><div class="clear"></div></div>
                                <div class="tweet_data"> Our latest theme 'Nano - Simple Magazine WordPress Theme' on <a href="#" target="_blank" rel="nofollow">#EnvatoMarket</a> <a href="http://twitter.com/search?q=%23themeforest" target="_blank" rel="nofollow">#themeforest</a> <a href="http://t.co/IfZTbJTk06" target="_blank" rel="nofollow">http://t.co/IfZTbJTk06</a></div> <br/>
                                <div class="clear"></div>
                                <div class="times"> <em> <a href="#" target="_blank" title="Follow cactusthemes on Twitter [Opens new window]"> 5 months ago </a> </em></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </li>
                    </ul>
                </aside>
            </div>
        </div>
    </div>
    <div class="bottom-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 copyright">
                    <span>Copyright &copy; 2015.Company name All rights reserved.</span>
                </div>
                <div class="col-md-6 col-sm-6 link">
                    <div class="menu-footer-menu-container">
                        <ul id="menu-footer-menu" class="menu list-inline">
                            <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                            <li><a href="#"><i class="fa fa-comments"></i> Contact</a></li>
                            <li><a href="#"><i class="fa fa-question-circle"></i> FAQ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer -->

<!-- JS -->
<script src="../pages/owl-carousel/owl.carousel.js"></script>
<script>
    document.getElementById('date').valueAsDate = new Date();
    $(document).ready(function() {
        $("#owl-demo").owlCarousel({
            autoPlay: 3000,
            items : 5,
            itemsDesktop : [1199,4],
            itemsDesktopSmall : [979,4]
        });

    });
</script>

</body>
</html>


