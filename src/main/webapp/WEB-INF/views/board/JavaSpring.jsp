<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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