<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/module.jsp" %>

<!-- main (css) -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/main.css">




<div class="wrapper">

	<!-- 헤더 -->
	<div class="wrap header container ps-3 pe-3">
	<!-- <div class="wrap header .container ps-3 pe-3"> -->
	<!-- <div class="wrap header container"> -->
	    <div class="header-content-wrap bg-light">
	        <div class="header-content-left ">
	            <div class="header-content-text">
	                <a href="main.do">LOGO</a>
	            </div>
	            <div class="header-content-text">
	                <a href="memberListPage.do">회원목록조회</a>
	            </div>
	            <div class="header-content-text">
	                <a href="#">메뉴1</a>
	            </div>
	            <div class="header-content-text">
	                <a href="#">메뉴2</a>
	            </div>
	        </div>
	        
	        
	        <c:if test="${sessionScope.memberId != null}">
	        <div class="header-content-right">
	            <div class="header-content-text">
	            	<a href="#">Hello ${sessionScope.memberName}님</a>
	            </div>
	            <div class="header-content-text">
	                <a href="memberLogout.do">로그아웃</a>
	            </div>
	        </div>
	        </c:if>
	        
	        <c:if test="${sessionScope.memberId == null}">
	        <div class="header-content-right">
	            <div class="header-content-text">
	                <a href="memberLoginPage.do">로그인</a>
	            </div>
	            <div class="header-content-text">
	                <a href="memberRegisterPage.do">회원가입</a>
	            </div>
	        </div>
	        </c:if>
	        
	        
	    </div>
	</div>
	
	
	<!-- 메인 컨텐츠 -->
	<div class="wrap main container ps-3 pe-3">
	<!-- <div class="wrap main .container ps-3 pe-3"> -->
	<!-- <div class="wrap main container"> -->
	    <div class="row">
	        <div class="main-content-wrap">
	            <section id="main-content">
	
	
	                <!-- 부트스트랩 캐러셀 배너 -->
	                <div id="carouselExampleDark" class="carousel slide " data-bs-ride="carousel">
	                    <div class="carousel-indicators">
	                      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	                      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
	                      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
	                    </div>
	                    <div class="carousel-inner">
	                      <div class="carousel-item active" data-bs-interval="10000">
	                        <img src="${banner1}" class="d-block w-100" alt="...">
	                        <div class="carousel-caption d-none d-md-block">
	                          <h2>개발자 스터디 커뮤니티</h2>
	                          <div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. </div>
	                        </div>
	                      </div>
	                      <div class="carousel-item" data-bs-interval="2000">
	                        <img src="${banner2}" class="d-block w-100" alt="...">
	                        <div class="carousel-caption d-none d-md-block">
	                          <h2>코린이를 위한 개발자 스터디 게시판</h2>
	                          <div class="banner-button-wrap">
	                            <div class="button">
	                                <a class="btn btn-primary btn-sm " href="#" role="button">Button1</a>
	                            </div>
	                            <div class="button">
	                                <a class="btn btn-warning btn-sm " href="#" role="button">Button2</a>
	                            </div>
	                            <div class="button">
	                                <a class="btn btn-danger btn-sm " href="#" role="button">Button3</a>
	                            </div>
	                        </div>
	                        </div>
	                      </div>
	                      <div class="carousel-item">
	                        <img src="${banner3}" class="d-block w-100" alt="...">
	                        <div class="carousel-caption d-none d-md-block">
	                          <h2>Third slide label</h2>
	                          <div>Some representative placeholder content for the third slide.</div>
	                        </div>
	                      </div>
	                    </div>
	                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
	                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	                      <span class="visually-hidden">Previous</span>
	                    </button>
	                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
	                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	                      <span class="visually-hidden">Next</span>
	                    </button>
	                  </div>
		
                        <!-- 컨텐츠 : START -->
                        <div class="content-wrap">
                            <div class="sidebar-wrap">
                                <div class="sidebar-memberinfo">
                                    <div class="memberinfo-text-wrap">
                                        <h4>나의정보</h4>
                                    </div>
                                    <hr>
                                    <!-- if문 : 로그인유무 START -->
                                	<c:if test="${sessionScope.memberName != null}">
                                    <div class="memberinfo-content">
                                        <div class="member-image-box">
                                            <img class="member-image" src="${memberimage}" alt="user">
                                        </div>
                                        <div class="memberinfo-text-wrap">
                                            <h6>ID : ${sessionScope.memberName}</h6>
                                        </div>
                                    </div>
                                    <hr>
                                    <div>
                                        <div>가입 ${sessionScope.memberRegDate}</div>
                                        <div><a href="#">내가 쓴 글보기</a></div>
                                        <div><a href="#">내가 쓴 댓글보기</a></div>
                                    </div>
                                    <hr>
                                    </c:if>
                                    <c:if test="${sessionScope.memberName == null}">
                                    	<div class="memberinfo-text-wrap">
                                            <h6>ID : NoData</h6>
                                        </div>
                                    	<div class="btn-wrap-position-center">
                                        	<a id="subject-write-button" onclick="alert('게시글 작성하기위해서는 로그인이 필요합니다')" class="btn btn-primary" href="#">게시글 작성</a>
                                    	</div>
                                    </c:if>
                                    <!-- if문 : 로그인유무 END-->
                                    <c:if test="${sessionScope.memberName != null}">
                                    <div class="btn-wrap-position-center">
                                        <a id="subject-write-button" class="btn btn-primary" href="#">게시글 작성</a>
                                    </div>
                                    </c:if>
                                </div>
                                <div class="sidebar-category-wrap">
                        <div class="sidebar-category">
                            <div class="sidebar-category-text-center">
                                            <a href="#" class="text-black">전체글보기</a>
                                        </div>
                            <hr>
                            <div class="sidebar-category-text-center">
                                            <h6 class="text-black">웹개발</h6>
                                        </div>
                            <hr>
                            <div class="sidebar-category-list">
                                            <div class="side-navbar-text">ㄴ <a href="#">Java-Spring</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">JS / Jquery</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">Angura.js</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">CSS / Bootstrap</a></div>
                                        </div>
                            <hr>
                            <div class="sidebar-category-text-center">
                                            <h6 class="text-black">언어&문법</h6>
                                        </div>
                            <hr>
                            <div class="sidebar-category-list">
                                            <div class="side-navbar-text">ㄴ <a href="#">Java</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">C#</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">Python</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">JavaScript</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">Ruby</a></div>
                                        </div>
                            <hr>
                            <div class="sidebar-category-text-center">
                                            <h6>빅데이터,AI,크롤링</h6>
                                        </div>
                            <hr>
                            <div class="sidebar-category-list">
                                            <div class="side-navbar-text">ㄴ <a href="#">Python 크롤링</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">데이터 마이닝</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">머신러닝 / 딥러닝</a></div>
                                        </div>
                            <hr>
                                        <div class="sidebar-category-text-center">
                                            <h6>게임개발</h6>
                                        </div>
                                        <hr>
                                        <div class="sidebar-category-list">
                                            <div class="side-navbar-text">ㄴ <a href="#">유니티</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">언리얼엔진</a></div>
                                        </div>
                                        <hr>                                    
                                        <div class="sidebar-category-text-center">
                                            <h6>알고리즘예제</h6>
                                        </div>
                                        <hr>
                                        <div class="sidebar-category-list">
                                            <div class="side-navbar-text">ㄴ <a href="#">Java 백준</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">python 코드업</a></div>
                                        </div>
                                        <hr>                                    
                            <div class="sidebar-category-text-center">
                                            <h6>CS지식</h6>
                                        </div>
                            <hr>
                            <div class="sidebar-category-list">
                                            <div class="side-navbar-text">ㄴ <a href="#">디자인 패턴</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">운영체제</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">데이터베이스</a></div>
                                            <div class="side-navbar-text">ㄴ <a href="#">자료 구조</a></div>
                                        </div>
                            <hr>                                    
                        </div>
                                </div>
                            </div>
        
                            <div class="article-wrap">
                                <div class="article-top">
                                    <div class="article-text-title">
                                        <h2>Java-Spring</h2>
                                    </div>
        
                                    <!-- 검색창 : START -->
                                    <div class="article-search">		
                                        <form class="search-form" method="post" action="${GoList}">
                                          <div class="search-form-wrap">
                                            <input type="hidden" value="on" name="earchOn">
                                            <input type="hidden" value="${bp.cntPerPage}" name="cntPerPage">
                                            <input type="hidden" value="${ORDER}" name="ORDER">
                                        
                                            <!-- 검색 -->
                                            <select id="search-option" class="form-select"  onchange="changeOption()" name="option">
                                                <option id="select_none" value="keyword_X" ${option eq 'keyword_X' ? 'selected' : ''}>선택</option>
                                                <option value="keyword_S" ${option eq 'keyword_S' ? 'selected' : ''}>제목</option>
                                                <option value="keyword_C" ${option eq 'keyword_C' ? 'selected' : ''}>내용</option>
                                                <option value="keyword_W" ${option eq 'keyword_W' ? 'selected' : ''}>글쓴이</option>
                                            </select>
                                         
                                             <!-- 검색창 -->
                                            <input id="search-keyword" value="${keyword}" class="form-control rounded-0 rounded-start" type="text" name="keyword" placeholder="검색어를 입력 하세요">
        
                                             <!-- 검색버튼 -->
                                            <button id="btn-search" class="btn btn-primary btn-lg rounded-0 rounded-end" onclick="javascript:selectChk()">
                                                <i class="fa fa-search"></i>
                                            </button> 
                                          </div>
                                       </form>
                                    </div>
                                    <!-- 검색창 : END-->
                                </div>
                                <hr>
        
                                <!-- 게시판  : START-->
                                <div class="article-center">
                                    <table class="article-center-board table table-hover">
        
                                        <thead>
                                          <th>
                                            <div class="board-orderform-wrap">
                                                <input id="option" name="<portlet:namespace/>ORDER" type="hidden" value="bnoUp"/>
                                                <a href="#" onclick="bnoOrderFrm()">번호</a>
                                                <i class='fa-solid fa-sort-down'></i>
                                            </div>
                                          </th>
                                          <th>
                                            <div>제목</div>
                                          </th>
                                          <th>
                                            <div>작성자</div>
                                          </th>
                                          <th>
                                            <div class="board-orderform-wrap">
                                                <input id="ORDER" name="<portlet:namespace/>ORDER" type="hidden" value="regUp"/>
                                                <a href="#" onclick="regOrderFrm()">작성일</a>
                                                <i class='fa-solid fa-sort-down'></i>
                                            </div>
                                          </th>
                                          <th>
                                            <div class="board-orderform-wrap">
                                                <input id="ORDER" name="<portlet:namespace/>ORDER" type="hidden" value="hitUp"/>
                                                <a href="#" onclick="hitOrderFrm()">조회수</a>
                                                <i class='fa-solid fa-sort-down'></i>
                                            </div>
                                          </th>
                                        
                                        </thead>
        
                                        <tbody>
                                            <tr>
                                                <td class="text-center" colspan="5">
                                                    <h2>현재 게시판에 게시글이 없습니다.</h2>
                                                <td>                                
                                            </tr>
                                            <tr>
                                                <td colspan="1">${li.bno}</td>
                                                <td colspan="1">${li.subject}</td>
                                                <td colspan="1">${li.writer}</td>				
                                                <td colspan="1">${li.regDate}</td>
                                                <td colspan="1">${li.hit}</td>
                                            </tr>                                                                          
                                        </tbody>
                                    </table>
                                </div>
                                <!-- 게시판 : END-->
        
                            </div>
                        </div>
                        <!-- 컨텐츠 : END -->
                    </section>
        
                    <!-- 푸터 -->
                    <!-- <div class="wrap footer m-0 p-0 text-center text-light bg-black">
                        <div class="p-3">
                            <div>- FOOOTER -</div>
                            <hr>
                            <p>@Powered by Ardor</p>
                        </div class="p-3">
                    </div> -->
                    <div class="wrap footer m-0 p-0 text-center text-light bg-black">
                        <div class="p-3">
                            <div>- FOOOTER -</div>
                            <hr>
                            <p>@Powered by Ardor</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>	