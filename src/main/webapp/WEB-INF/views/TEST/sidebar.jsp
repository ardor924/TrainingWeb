<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 사이드바 -->
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