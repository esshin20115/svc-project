<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.example.demo.DTO" %>
<%@ page import="com.example.demo.DAO" %>
<%@ page import="com.example.demo.DTO_comment" %>
<%@ page import="com.example.demo.DAO_comment" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/resources/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/assets/libs/css/style.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    
    <link rel="stylesheet" href="/resources/assets/vendor/vector-map/jqvmap.css">
    <link href="/resources/assets/vendor/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/daterangepicker/daterangepicker.css" />
  
<title>Spring Boot</title>
</head>

<body>

<script>

function sharetwitter(url, text){
	window.open("https://twitter.com/intent/tweet?text="+text+"&url="+url);
}
function sharefacebook(url, text){
	window.open("http://www.facebook.com/sharer/sharer.php?u="+url);
}
</script>
<%
DTO dto=(DTO)request.getAttribute("svcInfo");
int id=dto.getId();
String title=dto.getTitle();
String due_date=dto.getDue_date();
String submission_date=dto.getSubmission_date();
int num_fund=dto.getNum_fund();
int cur_fund=dto.getCur_fund();
int goal_fund=dto.getGoal_fund();
int likes=dto.getLikes();
String account_src=dto.getAccount_src();
String account_num=dto.getAccount_num();
String content=dto.getContent();

%>



 <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="index.html">Concept</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                                <input class="form-control" type="text" placeholder="Search..">
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title"> Notification</div>
                                    <div class="notification-list">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="/resources/assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jeremy Rakestraw</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="/resources/assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">John Abraham </span>is now following you
                                                        <div class="notification-date">2 days ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="/resources/assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="/resources/assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-footer"> <a href="#">View all notifications</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown connection">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                            <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                <li class="connection-list">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/resources/assets/images/github.png" alt="" > <span>Github</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/resources/assets/images/dribbble.png" alt="" > <span>Dribbble</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/resources/assets/images/dropbox.png" alt="" > <span>Dropbox</span></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/resources/assets/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/resources/assets/images/mail_chimp.png" alt="" ><span>Mail chimp</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/resources/assets/images/slack.png" alt="" > <span>Slack</span></a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="conntection-footer"><a href="#">More</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="/resources/assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>





   <div class="card-body">
	                                <div class="row">
	                                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12" style="display:none">
                            <div class="card">
                                <h5 class="card-header">Gauge#1</h5>
                                <div class="card-body">
                                    <canvas id="gauge1"></canvas>
                                </div>
                            </div>
                        </div>
                      
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Completion Rate</h5>
                                <div class="card-body">
                                    <canvas id="gauge2"></canvas>
                                </div>
                            </div>
                        </div>
                      
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12"  style="display:none">
                            <div class="card">
                                <h5 class="card-header">Gauge#3</h5>
                                <div class="card-body">
                                    <canvas id="gauge3"></canvas>
                                </div>
                            </div>
                        </div>
                       
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12"  style="display:none">
                            <div class="card">
                                <h5 class="card-header">Gauge#4</h5>
                                <div class="card-body">
                                    <canvas id="gauge4"></canvas>
                                </div>
                            </div>
                        </div>
	                                        <div class="col-xl-10 col-lg-8 col-md-8 col-sm-8 col-12">
	                                            <div class="user-avatar-info">
	                                                <div class="m-b-20">
	                                                    <div class="user-avatar-name">
	                                                        <h2 class="mb-1"><%=title %></h2>
	                                                    </div>

	                                                        <p class="d-inline-block text-dark"><%=num_fund%> people funded this project </p>
	                                                </div>
	                                                <div class="user-avatar-address">
	                                                    <p class="border-bottom pb-3">
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block">Start Date: <%=submission_date %>  </span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block">Due Date: <%=due_date %>  </span>
	                                                        <span class=" mb-2 d-xl-inline-block d-block ml-xl-4">current funds: <%=cur_fund %></span>
	                                                        <span class=" mb-2 d-xl-inline-block d-block ml-xl-4">trying to reach <%=goal_fund %> </span>
	                                                        <span class=" mb-2 d-xl-inline-block d-block ml-xl-4"> <%=likes %> likes! </span>
	                                                        <span class=" mb-2 d-xl-inline-block d-block ml-xl-4">fund the project through this account! <%=account_src %> bank : <%=account_num %>  </span>
	                                                    </p>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <form id="like_form">
										<table id="list">
											<input type="hidden" name="command" value="like_it">
											<input type="hidden" name="board_num" value="${board.num}">
											<tr><input type="button" value="좋아요!" onclick="return like()" > </tr>
											<tr><div id="like_result">${board.like_it}</div> </tr>
									</table>
									</form>

  <h1>내용</h1>
  <h2>[세부 컨텐츠 에치티엠엘 들어갈곳]</h2>
  <h1>댓글</h1>
  
<% 

List<DTO_comment> list = (List<DTO_comment>)request.getAttribute("svcComment");
for(int i=0;i<list.size();i++){
 	DTO_comment row_data = list.get(i);
 	int seq_comment=row_data.getSeq();
 	int id_comment=row_data.getId();
	String nickname_comment=row_data.getNickname();
	String content_comment=row_data.getContent();
	String reg_date_comment=row_data.getReg_date();

%>
<h4># <%=seq_comment %> th 댓글 by <%=nickname_comment %> : <%=content_comment %> registered <%=reg_date_comment %></h4>
<%} %>

		<div class="form-group">
              <label for="exampleFormControlTextarea1">댓글 칸</label>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              <button type="button" class="btn btn-primary">Go!</button>
        </div>
        
        
       <a href="javascript:sharetwitter('localhost:80/id=1','공유하기 예제')">트위터 공유하기 나중에 새 로고 추가!</a>
       <a href="javascript:sharefacebook('localhost:80/id=1','공유하기 예제')">페북 공유하기 나중에 페북 로고 추가!</a>
        
        
   <script src="/resources/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="/resources/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/resources/assets/vendor/gauge/gauge.min.js"></script>
     <script src="/resources/assets/vendor/gauge/gauge.js"></script>
    <script src="/resources/assets/libs/js/main-js.js"></script>
   <script src="/resources/board.js"></script>
  
  

</body>
</html>