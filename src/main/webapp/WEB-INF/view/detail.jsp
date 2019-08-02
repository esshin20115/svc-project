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

  <h2>내용</h2>
  <h2>세부 컨텐츠 html들어갈곳</h2>
  <h2>댓글</h2>
  
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
      <script src="/resources/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="/resources/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/resources/assets/vendor/gauge/gauge.min.js"></script>
     <script src="/resources/assets/vendor/gauge/gauge.js"></script>
    <script src="/resources/assets/libs/js/main-js.js"></script>
   <script src="/resources/board.js"></script>
  
  

</body>
</html>