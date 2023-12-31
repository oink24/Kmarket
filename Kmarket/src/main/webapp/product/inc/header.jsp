<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">    
    <title>케이마켓::대한민국 1등 온라인 쇼핑몰</title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="./css/common.css"/>
    <link rel="stylesheet" href="./css/product.css"/>
</head>
<body>
    <div id="wrapper">
        <header>
            <div class="top">
                 <div>
                	<c:if test="${empty sessMember}">
	                    <a href="${path}/member/login.do">로그인</a>
	                    <a href="${path}/member/join.do">회원가입</a>
                    </c:if>
                    <c:if test="${not empty sessMember}">
                    	<c:if test="${sessMember.type eq 2}">
                			<a href="${path}/admin/index.do">관리자</a>
	                	</c:if>
	                    <a href="#">마이페이지</a>
	                    <a href="${path }/product/cart.do"><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;장바구니</a>
	                    <a href="${path}/member/logout.do">로그아웃</a>
                    </c:if>
                </div>
            </div>
            <div class="logo">
                <div>
                    <a href="${path }"><img src="./img/header_logo.png" alt="로고"/></a>
                    <form action="${path }/product/search.do" method="get">
                        <input type="text" name="search" value="${search }"/>
                        <button><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
            <div class="menu">
                <div>
                    <ul>
                    </ul>
                    <ul>
                        <li>
                            <a href="${path}/cs/noticeBoard/list.do?group=notice&cate=All">공지사항</a>
                        </li>
                        <li>
                            <a href="${path}/cs/faqBoard/list.do?group=faq&cate=member">자주묻는질문</a>
                        </li>
                        <li>
                            <a href="${path}/cs/qnaBoard/list.do?group=qna&cate=member">문의하기</a>
                        </li>
                        <li>
                            <a href="${path}/cs/index.do">고객센터</a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>