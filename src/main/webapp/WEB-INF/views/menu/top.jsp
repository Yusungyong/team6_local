<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <div class="container">
    <nav>
      <div class="logo">
        <a href="http://localhost:9091">PROJECT6</a>
      </div>
        <div class="list_main">
      <ul>
        <li><a href="http://localhost:9091" class="home_btn">HOME</a></li>
        <li><a href="/movie/list.do">영화</a></li>
        <li><a href="#">순위</a></li>
      <c:choose>
        <c:when test="${sessionScope.id eq null}"> <%-- 로그인 안 한 경 우 --%>
          <li><A class='menu_link'  href='/member/login.do' >로그인</A><span class='top_menu_sep'> </span></li>
          <li><a href="/member/create.do">회원가입</a></li>
        </c:when>
        <c:otherwise><!--${sessionScope.id }님 반갑습니다.  -->
          <li ><A href='#' >마이페이지</A><span class='top_menu_sep'> </span></li>
          <li ><A href='#' >장바구니</A><span class='top_menu_sep'> </span></li>
          <li><a href="/member/list.do">회원목록</a></li>
          <li class='login_id'><A href='/member/logout.do' >로그아웃</A><span class='top_menu_sep'> </span></li>
        </c:otherwise>
      </c:choose>     
<!--         <li><a href="http://localhost:9091/member/login.do">로그인</a></li>
        <li><a href="http://localhost:9091/member/create.do">회원가입</a></li> -->
        <!-- <li><a href="http://localhost:9091/member/list.do">회원목록</a></li> -->
        <li style="margin-left: 15px;"><form id="search" name="search" method="POST" action="#">
          <input type="text" placeholder="영화/장르"><input type="submit" value="검색"></input>
        </form></li>
      </ul>
      </div>
    </nav>
  </div>