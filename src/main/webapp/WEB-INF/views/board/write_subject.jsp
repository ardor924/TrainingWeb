<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/module.jsp" %>

<!-- main (css) -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/main.css">
<!-- button (css) -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/button.css">


<div class="wrapper">
	
	<!-- 헤더 : START-->
	<%@ include file="../inc/top.jsp" %>
	<!-- ./헤더 : END-->
	
	<!-- 메인 컨텐츠 -->
	<div class="wrap main container ps-3 pe-3">
	<!-- <div class="wrap main .container ps-3 pe-3"> -->
	<!-- <div class="wrap main container"> -->
	    <div class="row">
	        <div class="main-content-wrap">
	            <section id="main-content">
	            <!-- 캐러셀 배너 : START-->
	            <%@ include file="../inc/banner.jsp" %>
	            <!-- 컨텐츠 : START -->
                <div class="content-wrap">
                <!-- 사이드바 : START-->
                <%@ include file="../inc/sidebar.jsp" %>
                
                
                
                
<!--------------------------------------------------- Include-File : START 이곳을 변경---------------------------------------------------------------------->
                
                <!-- <div class="article-wrap mt-1"> -->
                <div class="article-wrap  mt-1 pb-0 ps-0 pe-0">     

                    <div class="article-content-wrap"> <!-- border 없는 버전 변경가능 -->
                    <!-- -------------------------------- 메인컨텐츠 - 이곳을 변경 : START ---------------------------------------- -->    
                    <!-- ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓  -->
                    
                        <div class="article-top">
                            <div class="article-text-title">
                                <h4>글쓰기</h4>
                            </div>
                        
                            <div class="articl-btn">		
                                <a href="#" class="btn btn-outline-dark">
                                   목록
                                </a>
                            </div>
                        </div>                
                        <hr>
                        <form action="subjectInsert.do" method="post" class="subject-write-form">
                        
                            <div class="subject-text-wrap form-group">
                                <label for="writer" class="col-1">작성자</label>
                                <span>${memberName}</span>
                                <input type="hidden" value="${memberName}" name="writer"/>
                            </div>
                             
                            <div class="subject-text-wrap form-group">
                                <label for="subject" class="col-1">제목</label>
                                <input id="subject" type="text" class="form-control"  name="subject" placeholder="제목을 입력하세요."/>
                            </div>
                             
                            <div class="subject-text-wrap form-group">
                                <label for="contents" class="col-1">내용</label>
                                <textarea class="form-control" rows="20"  id="editor4" name="content" title="내용을 입력해 주세요"></textarea>
                            </div>
                        
                            <div class="subject-text-wrap form-group">
                                <label for="contents" class="col-1">첨부</label>
                                <button  id="btn-upload" type="button" class="btn btn-success">
                                    <i class="fa-solid fa-circle-plus"></i> 추가
                                </button>                    
                                <!--첨부 할수있는 확장자 제한-->
                             <input id="input_file" accept="image/jpg, image/jpeg, image/png, image/gif, image/bmp"  multiple="multiple" type="file" style="display:none;"> 
                            </div>
                        
                            <div class="subject-text-wrap form-group">
                                <label class="col-1">상세</label>
                                <br />
                                <div id="detailfileChange"> <!-- 배열이 이곳에 업로드됨 -->
                                    <span class="span-gray">※첨부파일은 최대 10개까지 등록이 가능합니다.</span><br>
                                    <span class="span-gray">※1개 파일당 10MB 제한</span>
                                    <hr/>
                                </div>
                            </div>
                        
                            <div class="btn-wrap-position-center">
                                <button type="submit"  class="btn btn-primary btn-marginLR" >
                                    <i class="fa-solid fa-check"></i> 등록
                                </button>
                                <a type="button" class="btn btn-danger btn-marginLR" href='#'><i class="fa-solid fa-x"></i> 취소</a>
                            </div>		
                        
                        
                        
                        </form>
                    </div>

                
                <!-- ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑  -->
                <!-- --------------------------------./ 메인컨텐츠 - 이곳을 변경 : END ---------------------------------------- -->  
                </div>
                
                
 <!------------------------------------------------------ Include-File : END 이곳을 변경------------------------------------------------------------------->
                
                </div>
                <!-- 컨텐츠 : END -->
                </section>
                <!-- 푸터 -->
                <%@ include file="../inc/bottom.jsp" %>            
			</div>
		</div>
	</div>
	</div>
</body>

<!-- ckEditor4 풀버전 -->
<script src="${ctx}/resources/js/ckeditor/ckeditor.js"></script>
<!-- 텍스트ui설정 -->
<script type="text/javascript" src="${ctx}/resources/js/editor4_setting.js"></script>