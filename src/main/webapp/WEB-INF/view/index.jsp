<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.example.demo.DTO" %>
<%@ page import="com.example.demo.DAO" %>
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
    <link rel="stylesheet" href="/resources/assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
<title>SVC Home</title>
<script>
function goDetail(id){
	console.log(id);
	document.location.href="/detail?id="+id;
}
</script>
</head>
<body>
  <h1>SVC 후원 내용</h1>
  <hr>

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
							
							if(cur_fund!=goal_fund){
								status="In Transit";				
							}
							else{
								 status="Delivered";				
							}
						
%>
                        <tr>
                            <td><%=id%></td>
                            <td><a href="javascript:goDetail(<%=id%>);"><%=title%></a></td>
                            <td><%=submission_date%>   ~   <%=due_date%></td>
                            <td><%=likes%></td>
                            <%if(status.equals("Delivered")==true){ %>
                            <td><span class="badge-dot badge-success mr-1"></span><%=status%> ( <%=cur_fund%> / <%=goal_fund%>  )  </td>
                            <%} %>
                            <%if(status.equals("Delivered")==false){%>
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
</body>
</html>