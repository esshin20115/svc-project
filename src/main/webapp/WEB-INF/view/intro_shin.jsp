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
		                                <h2 class="pageheader-title">SK주식회사 C&amp;C 행복 펀딩</h2>
		                            </div>
		                        </div>
		                    </div>
		                    <!-- Content 영역 Start -->
							<div class="row">
								<div class="card">
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
										<br>
										<div>
											<h3><strong>SK주식회사 C&amp;C 행복 펀딩</strong>은 사회공헌을 일상에서 편하게 참여하기 위한 펀딩 사이트 입니다.</h3>
										</div>	
										<br>
										<div>
				                            <div>
				                                <h4>행복 펀딩 dashboard 에서 간편하게 후원세요.<br>
				                                행복 펀딩 dashboard 에서 후원을 등록하고, 후원 현황을 확인하고 공유 할 수 있습니다.</h4>
				                            </div>
				                        </div>										
										<br>	
										<br>								
										<div>
											<h4>SK주식회사 C&amp;C는 ICT를 통한 사회가치 창출과 진정성을 바탕으로 한 참여로<br>
												사회문제 해결에 앞장서고자 사회공헌 프로그램을 추진하고 있습니다. SK주식회사 C&amp;C의 사회공헌 프로그램에 참여하세요.</h4>
										</div>
										<br>
										<div>
				                            <div>
				                                <h4>- ICT 기반 장애인 일자리 경쟁력 강화 프로그램 ‘SIAT’</h4>
				                                <p class="txt">SK㈜ C&amp;C은 청년 장애인의 양적∙질적 일자리 창출을 위해 당사가 보유한 ICT관련 기업 현장중심Know-how와<br>한국장애인고용공단의 체계적인 교육 운영을 결합하여 SIAT(SK주식회사 IT Advanced Training) 프로그램을 통해<br> 장애인의 IT 전문가 육성 및 취업 경쟁력 강화될 수 있도록 지원하고 있습니다.</p>
				                            </div>
				                        </div>
				                        <br>
				                        <br>
						                <div>
				                            <div>
				                                <h4>- ICT 역량 활용한 구성원 재능기부프로그램 ‘ICT프로보노’</h4>
				                                <p class="txt">SK㈜ C&amp;C은 사회문제 해결에 책임의식을 갖고 구성원들이 자발적으로 ICT재능을 나누는 ‘ICT프로보노’ 프로그램을 운영하고 있습니다.<br>사회적기업 IT기술지도, 코칭 및 IT개발자를 희망하는 장애청년의 멘토링, 교육 등 사회추진 주체의 성장을 돕는 다양한 활동을 연계하고 있습니다.</p>
												<p >
													<li>Mission ICT역량을 활용하여 사회문제 해결 주체의 성장을 돕는다.</li>
													<li>인재상 전문적 재능 보유 + 따뜻한 시민 의식 + 적극적 추진력</li>
													<li>IT 특화 IT자문이 필요한 사회변화추진 단체 및 개인</li>
													<li>Mission 자신의 전문적 역량을 적극적으로 나누어 공익 단체의 성장을 돕는다</li>
													<li>인재상 전문적 재능 보유 + 따뜻한 시민 의식 + 적극적 추진력</li>
													<li>IT 특화 SK주식회사 ICT 프로보노</li>
												</p>
				                            </div>
				                        </div>
				                        <br>
				                        <br>
				                        <div>
				                            <div>
				                                <h4>- ICT 역량 연계한 사회적기업 설립 및 운영 지원</h4>
				                                <p >SK㈜ C&amp;C는 사회적 약자를 위한 IT 일자리 창출과 사회적 서비스 제공을 위해 (재)행복ICT를 설립하여 <br>
				                                정보활용에 소외된 계층의 삶의 질 향상과 사회적가치 제고에 기여하고자 지원하고 있습니다.<br> 
				                                (재)행복ICT는 “ICT 공익서비스”와 “장애인 고용을 혁신”하는 국내 최고 ICT 사회적기업으로 성장을 목표로 2011년 설립 이후<br> 
				                                사회적기업, 비영리재단법인, 장애인표준사업장으로 인증 받아 장애인들에게 질 높은 일자리를 제공함으로써 장애인 IT전문가 육성 등<br>
				                                새로운 사회 가치를 만들고자 노력하고 있습니다.</p>
												<a href="http://www.happyict.co.kr" class="btn_large" target="_blank" title="새 창 열림"><span>'(재)행복ICT' 바로가기</span></a>
				                            </div>
				                        </div>
				                        <br>
				                        <br>
				                        <div>
				                            <div>
				                                <h4>- 지역사회 사회적경제기업의 생태계 지원활동</h4>
				                                <p >SK㈜ C&amp;C는 지역사회 내 사회적 기업, 협동조합 등 오프라인 판매공간이 없는 사회적경제 기업을 위해<br>
				                                 생산 제품을 판매할 수 있도록 ‘행복한 가치가게’를 구축/지원하고 있으며, <br>지역주민들에게 사회적경제기업의 인지도 확산 및 생산제품 소개/판매를 위해 <br>
				                                 일일 ‘행복한 가치장터’를 개최하여 사회적가치과 경제적가치가 동시 창출될 수 있도록 지원하고 있습니다.</p>
				                            </div>
				                        </div>
				                        <br>
				                        <br>
				                        <div>
				                            <div>
				                                <h4 >- 구성원 기부 캠페인 (행복IT장학금)</h4>
				                                <p >금연펀드, 휴게공간 비치된 오락기기 이용료 등 구성원들이 일상 생활 속에서 자발적으로 기부에 참여할 수 있는 다양한 기회를 제공하고 있습니다. <br>
				                                조성된 기금은 IT전문가를 꿈꾸는 장애 청소년을 위한 ‘행복IT장학금’으로 지원하고 있습니다.<br>
				                                연말에는 결식아동과 독거어르신을 돕기 위한 기부캠페인 활동 또한 진행하고 있습니다.</p>
												<a href="http://blog.skcc.com/3208" class="btn_large" target="_blank" title="새 창 열림"><span>'행복IT장학금' 이야기 바로가기</span></a>
				                            </div>
				                        </div>
				                        <br>
				                        <br>
				                        <div>
				                            <div>
				                                <h4>- 지역사회 행복나눔 실천</h4>
				                                <p >SK㈜ C&amp;C는 구성원들은 지역사회 취약계층을 위해 자기주도적으로 행복나눔을 실천하고 있습니다. 팀원간 팀웍 단합을 위한 봉사활동,<br>
				                                 여직원 및 동호회 모임 등 친목을 위한 봉사활동, 연말 송년회를 위한 봉사활동 등 다양한 목적으로 구성하여 어려운 이웃들에게 도움을 드리고자 노력하고 있습니다.<br><br>
				                                 ※ 아동을 위한 착한장난감/털모자뜨기/간식 케잌 만들기, 독거노인을 위한 식사 및 마사지 지원, 환경보호를 위한 경기정원박람회 ’행복나무심기’, <br>
				                                 지역사회 탄천, 등산로 환경정화활동, 따뜻한 겨울나기를 위한 행복나눔계절 바자회, 김장담그기 봉사활동 등</p>
												<a href="http://skccblog.tistory.com/1124" class="btn_large" target="_blank" title="새 창 열림"><span>'소그룹 나눔활동' 바로가기</span></a>
				                            </div>
				                        </div>
									</div>	
								</div>						
							</div>
							<!-- Content 영역 end -->
						</div>
					</div>
				</div>
</body>

