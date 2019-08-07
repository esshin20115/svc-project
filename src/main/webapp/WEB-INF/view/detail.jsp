<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.example.demo.DAO" %>
<%@ page import="com.example.demo.DTO" %>
<%@ page import="com.example.demo.DAO_comment" %>
<%@ page import="com.example.demo.DTO_comment" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
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

<script>
goal_fund=<%=goal_fund%>;
cur_fund=<%=cur_fund%>;
</script>
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
	


 <script>

 function plusLike(id){
 	
 	$.ajax({
 	    url:"pluslike?id="+id,
 	    type:'GET',
 	    datatype: 'TEXT',
 	    success:function(data){
 	       //like 적용
 	       var newLikeNum=data;
 	       $("#likeNum").text(data+" 명이 이 후원을 좋아해요!");
 	    },
 	    error:function(jqXHR, textStatus, errorThrown){
 	        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
 	        self.close();
 	    }
 	});    
 }     
 
 

  function addReply(id){

 	var html = "";
 	 
 	
 	var param={
 		'nickname':document.all.reg_nickname.value,
 		'content': document.all.reg_content.value,
 		'id':id
 	};

 	$.ajax({
 		url:"reply",
 		type:'POST',
 		data: param,
 		success:function(data){
 			
 			 
 			for(var i=0; i<data.length; i++){
	     		html += "<tr><td>"; 
  	    		html += data[i].nickname+"</td><td>";
  	    		html += data[i].content+"</td><td>";
  	    		html += data[i].reg_date+"</td></tr>";
  	    	} 
   	    	 
  	  	 		     html+=" </tr>";
  	  	 		html+="  <tr><td><input class=\"form-control\" rows=\"1\" name=\"reg_nickname\"></input></td>"; 
	 		     html+=" <td><input class=\"form-control\" rows=\"1\" name=\"reg_content\"></input></td>";
	 		     
 			
  	    	 		  $("#replyTB").html(html);
  	    	
 	
 	    },	
 	    error:function(jqXHR, textStatus, errorThrown){
 	        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
 	        self.close();
 	    }
 	});    
 	
 	
 	
 	
 	}
  
  function goIntro(){
		document.location.href="/Intro";
  }
  function goStructure(){
		document.location.href="/Structure";
	}


 </script>



<title><%=title %> 후원 상세 내용</title>




<script>
function sharetwitter(url, text){
	window.open("https://twitter.com/intent/tweet?text="+text+"&url="+url);
}
function sharefacebook(url, text){
	window.open("http://www.facebook.com/sharer/sharer.php?u="+url);
}

function thumbs_up(id){
	
	document.location.href="/detail?id="+id+"&flag="+1;
}
function goMain(){
	document.location.href="/main";
}
</script>
</head>

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
                <img src=/resources/assets/images/sklogo.png>
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
	    <!-- ============================================================== -->
	    <!-- wrapper  -->
	    <!-- ============================================================== -->
	    <div class="dashboard-wrapper">
	        <div class="dashboard-influence">
	            <div class="container-fluid dashboard-content">
	                <!-- ============================================================== -->
	                <!-- pageheader  -->
	                <!-- ============================================================== -->
<%-- 	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	                        <div class="page-header">
	                            <h3 class="mb-2"> " <%=title %> " 후원 상세 내용</h3>
	                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
	                            
	                        </div>
	                    </div>
	                </div> --%>
	                <!-- ============================================================== -->
	                <!-- end pageheader  -->
	                <!-- ============================================================== -->
	                <!-- ============================================================== -->
	                <!-- content  -->
	                <!-- ============================================================== -->
	                <!-- ============================================================== -->
	                <!-- influencer profile  -->
	                <!-- ============================================================== -->
	                <div class="">
<!-- 	                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12"> -->
							<div>
	                        <div class="card influencer-profile-data">
	                            <div class="card-body">
	                                <div class="">
	                                		<div>
	                                   <!--   <div class="col-xl-10 col-lg-8 col-md-8 col-sm-8 col-12"> -->
	                                            <div class="user-avatar-info">
	                                                <div class="m-b-20">
	                                                    <div class="user-avatar-name">
	                                                         <h2 class="mb-1"><b><%=title %></b></h2>
	                                                    </div> 
	                                                    <div align="right">후원 등록일 : <%=submission_date %></div>
	                                                </div>
	                                              								                                  	                                              	                                            </div>
	                                        </div>	                                
										<div class="row">
					                        <!-- ============================================================== -->
					                        <!-- four widgets   -->
					                        <!-- ============================================================== -->
					                        <!-- ============================================================== -->
					                        <!-- total views   -->
					                        <!-- ============================================================== -->
					                        <div class="">
					                           		<div class="card-body">
					                                    <div margin-left="30px" class="float-left icon-circle-medium  icon-box-lg  bg-primary-light mt-1">
					                                        <i class="fa fa-user fa-fw fa-sm text-primary"></i>
					                                    </div>
					                                    &nbsp;&nbsp;					                           		
					                             		<div class="d-inline-block" width="50%">
					                                        <h5 class="text-muted">총 후원자수!</h5>
					                                        <h2 class="mb-0"> <%=num_fund %> 명이 후원했어요!<h2>
					                                    </div>
					                                </div>
					                        </div>
					                        <!-- ============================================================== -->
					                        <!-- end total views   -->
					                        <!-- ============================================================== -->
					                        <!-- ============================================================== -->
					                        <!-- total followers   -->
					                        <!-- ============================================================== -->
					                        <div class="">
					                                <div class="card-body">
					                                	<div margin-left="30px" class="float-left icon-circle-medium  icon-box-lg  bg-brand-light mt-1">
					                                        <i class="fa fa-money-bill-alt fa-fw fa-sm text-brand"></i>
					                                   </div>
					                                   &nbsp;&nbsp;				                                 
					                                   <div class="d-inline-block">
					                                        <h5 class="text-muted">후원액 현황!</h5>
					                                        <%int diff_fund=goal_fund-cur_fund; %>
					                                        <h3 class="mb-0"> <%=cur_fund %> 원 (<%=diff_fund%> 원이 더 필요해요!)</h3>
					                                    </div>

					                                </div>
					                        </div>
					                        <!-- ============================================================== -->
					                        <!-- end total followers   -->
					                     
					                    </div>
             								 <!-- ============================================================== -->
								                    <!-- end widgets   -->
								                    <!-- ============================================================== -->
								                    <div class="">
								                        <!-- ============================================================== -->
								                        <!-- ============================================================== -->
								                        <!-- followers by locations   -->
								                        <!-- ============================================================== -->
								                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
								                            <div class="card">
								                                <h5 class="card-header"> 후원 상세 내용! </h5>
								                                <div class="card-body">
								                                    <!-- <canvas id="chartjs_bar_horizontal"></canvas> -->
								                                	
								                                	<iframe src="<%=content%>" frameborder="0" width="100%" height="600" marginwidth="10" marginheight="10"  scrolling="yes"></iframe>
								                                 </div>
								                            </div>
								                        </div>
								                        <!-- ============================================================== -->
								                        <!-- end followers by locations  -->
								                        <!-- ============================================================== -->
								                    </div>	                
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                                                <div class="user-avatar-address" width="100%">
	                                                    <p class="border-bottom pb-3">	                                                    
	                                                     <table class="table">         
	                                                     	<colgroup>
	                                                     		<col width="60%">
	                                                     		<col width="40%">
	                                                     	</colgroup>                           			
															<tbody>
																<tr class="border-0">
					                                                <td class="border-0" id="likeNum"> <b><%=likes %></b> 명이 이 후원을 좋아해요! &nbsp;&nbsp; </td>
					                                        	    <td class="border-0" aligh="right" margin-right="20px">공유하기  <a href="javascript:sharetwitter('localhost:80/id=1','공유하기 예제')"><img src="resources/assets/images/twitter.png"/></a><a href="javascript:sharefacebook('localhost:80/id=1','공유하기 예제')">&nbsp;&nbsp;<img src="resources/assets/images/facebook.png"/></a>  </td>
					                                            </tr>
					                                            <tr>
					                                            	<td><b>이 후원이 좋아요!<a href="javascript:plusLike(<%=id%>);"><img src="resources/assets/images/thumb.png"/></a></b></td>																											
																</tr>
															</tbody>
														</table>
	                                                    </p>
	                                                </div>

	                    <div class="">
	                        <!-- ============================================================== -->
	                        <!-- campaign activities   -->
	                        <!-- ============================================================== -->
                    
	                        <div class="col-lg-12">
	                            <div class="section-block">
	                                <h3 class="section-title">댓글</h3>
	                            </div>
	                            <div class="card">
	                                <div class="campaign-table table-responsive">
	                                    <table class="table">
	                                    	<!-- <colgroup>
	                                    		<col width="20%">
	                                    		<col width="100%">
	                                    		<col width="20%">
	                                    	</colgroup> -->
	                                        <thead>
	                                            <tr class="border-0" >
	                                                <th class="border-0" width="20%">작성자</th>
	                                                <th class="border-0" width="65%">내용</th>
	                                                <th class="border-0" width="15%">등록시간</th>   
	                                            </tr>
	                                        </thead>
	                                        <tbody id="replyTB">      
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
	                                            <tr>
	                                                <td>
	                                                   <%=nickname_comment %>
	                                                </td>
	                                                <td >
	                                                   <%=content_comment %></td>
	                                            	<td >
	                                                   <%=reg_date_comment%>
	                                                </td>
	                 
	                                            </tr>
	                                            <%} %> 
	                                            <tr>
	                                            	<td><input class="form-control" rows="1" name="reg_nickname"></input></td>
	                                                <td><input class="form-control" rows="1" name="reg_content"></input></td>
	                                                <td> </td>
	                                            </tr>
	                                        </tbody>
	                                        <td></td>
	                                        <td style="text-align:right;"><a href='javascript:addReply(<%=id%>);'><button type="button" class="btn btn-primary">등록!</button></a></td>
	                                    </table>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end campaign activities   -->
	                        <!-- ============================================================== -->
	                    </div>
	                                    <!-- ============================================================== -->
	                                    <!-- end content  -->
	                                    <!-- ============================================================== -->
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
	                    <!-- end main wrapper  --> <!-- ============================================================== -->
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
        
   <script src="/resources/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="/resources/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/resources/assets/vendor/gauge/gauge.min.js"></script>
<script src="/resources/assets/vendor/gauge/gauge.js"></script>                                                 
    
    
    <script src="/resources/assets/libs/js/main-js.js"></script>
   <script src="/resources/board.js"></script>
   
 
</body>
</html>