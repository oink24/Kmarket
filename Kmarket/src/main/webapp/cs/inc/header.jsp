<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<DOCTYPE html>
    <html lang="ko">
    <head>
        <meta charset="utf-8"/>
        <title>Kmarket</title>
        <link rel="shortcut icon" type="image/x-icon" href="${path}/cs/img/favicon.ico">
        <link rel="stylesheet" href="${path }/cs/css/cs.css">
        <style> 
    
        </style>
        <script src="https://code.jquery.com/jquery-latest.min.js" ></script>
    </head>
<body>
    <div id="wrapper">
        <header>
            <div class="top">
                <div>
                    <p>
	                    <c:choose>
	                    	<c:when test="${sessMember != null }">
		                		<span class="memberUid">${sessMember.uid }</span> 님 반갑습니다.
		                    	<a href="${path }/index.do">HOME</a>
			                	<c:if test="${sessMember.type eq 99 }">
			                		<a href="${path }/admin/index.do">관리자 </a>
			                	</c:if>
			               		<a href="${path }/member/logout.do">로그아웃 </a>
		                	</c:when>
		                	<c:otherwise>
	                        <a href="${path}/member/login.do">로그인</a>
	                        <a href="#">회원가입</a>
	                        <a href="#">마이페이지</a>
	                        <a href="#">
	                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
	                            &nbsp;장바구니
	                        </a>
	                        </c:otherwise>
	                    </c:choose>
                    </p>
                </div>
            </div>
            <div class="logo">
                <div>
                    <a href="${path }/cs/index.do">
                        <img src="${path}/cs/img/logo.png" alt="로고">고객센터
                    </a>
                </div>
            </div>
        </header>