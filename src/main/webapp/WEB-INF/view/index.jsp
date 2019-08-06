<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.example.demo.DTO" %>
<%@ page import="com.example.demo.DAO" %>
<%@ page import="java.util.List" %>

<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/resources/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/assets/libs/css/style.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <title>SVC Home</title>
</head>

<script>
function goDetail(id){
	console.log(id);
	document.location.href="/detail?id="+id+"&flag="+0;
}

function goMain(){
	document.location.href="/main";
}
function goIntro(){
	document.location.href="/Intro";
	
}
function goStructure(){
	document.location.href="/Structure";
}
</script>



<body>
 

   <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
     <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand"  href="javascript:goMain();">SK주식회사 C&C 행복 펀딩!</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                           <li class="nav-item ">
                                <a class="nav-link" href="javascript:goIntro();"><!-- <i class="fa fa-fw fa-user-circle"> </i>-->SVC 크라우드 펀딩이란? <!-- <span class="badge badge-success">6</span> --></a>
                       
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="javascript:goMain();"><!-- <i class="fa fa-fw fa-user-circle"> </i>-->SVC 크라우드 펀딩 Dashboard <!-- <span class="badge badge-success">6</span> --></a>
                       			
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="javascript:goStructure();"><!-- <i class="fa fa-fw fa-user-circle"> </i>-->SVC 크라우드 펀딩 페이지 구조 <!-- <span class="badge badge-success">6</span> --></a>
                       			
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">SVC 후원 현황! </h2>
                                <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->

                                          <!-- recent orders  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-9 col-lg-12 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header">SVC</h5>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0">#</th>
							                             <th class="border-0">Title</th>
							                             <th class="border-0">후원기간</th>
							                             <th class="border-0">좋아요</th>
							                             <th class="border-0">후원상태</th>
							                        </tr>
                                                </thead>
                                                <tbody>
                                               <%
						List<DTO> list = (List<DTO>)request.getAttribute("svcInfoList");
						for(int i=0;i<list.size();i++){
							
	                     	DTO row_data = list.get(i);
							int id=row_data.getId();
							String title=row_data.getTitle();
							String due_date=row_data.getDue_date();
							String submission_date=row_data.getSubmission_date();
							int likes=row_data.getLikes();
							int cur_fund=row_data.getCur_fund();
							int goal_fund=row_data.getGoal_fund();
							String status;
							
							if(cur_fund<goal_fund){
								status="후원이 더 필요해요!";				
							}
							else{
								 status="목표 후원액 도달!";				
							}
						
%>
                        <tr>
                            <td><%=id%></td>
                            <td><a href="javascript:goDetail(<%=id%>);"><%=title%></a></td>
                            <td><%=submission_date%>   ~   <%=due_date%></td>
                            <td><%=likes%></td>
                            <%if(status.equals("목표 후원액 도달!")==true){ %>
                            <td><span class="badge-dot badge-success mr-1"></span><%=status%> ( <%=cur_fund%> / <%=goal_fund%>  )  </td>
                            <%} %>
                            <%if(status.equals("목표 후원액 도달!")==false){%>
                            <td><span class="badge-dot badge-brand mr-1"></span><%=status%> ( <%=cur_fund%> / <%=goal_fund%>  ) </td>
                            <%} %>
                        </tr>
                        <%} %>
                         <tr>
                            <td colspan="9"><a href="#" class="btn btn-outline-light float-right">View Details</a></td>
                        </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                         </div>
                        <div class="row">
                                     </div>
                        </div>

                        <div class="row">
          </div>
                        <div class="row">
                            <div class="col-xl-5 col-lg-6 col-md-6 col-sm-12 col-12">
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12">
                                
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             SKCC SVC Project            
                         </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="/resources/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="/resources/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="/resources/assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="/resources/assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="/resources/assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="/resources/assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="/resources/assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="/resources/assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="/resources/assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="/resources/assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="/resources/assets/libs/js/dashboard-ecommerce.js"></script>
</body>
 
</html>