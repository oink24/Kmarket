<%@page import="kr.co.kmarket.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.kmarket.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String pg   = request.getParameter("pg");
	
	ProductDAO dao = ProductDAO.getInstance();
	
	// 페이지 관련 변수 선언
	int start = 0;
	int currentPage = 1;
	int total = 0;
	int lastPageNum = 0;
	int pageGroupCurrent = 1;
	int pageGroupStart = 1;
	int pageGroupEnd = 0;
	int pageStartNum = 0;
	
	// 현재 페이지 계산
	if(pg != null){
		currentPage = Integer.parseInt(pg);
	}
	
	// Limit 시작값 계산
	start = (currentPage - 1) * 10;
	
	// 전체 상품 갯수
	total = dao.selectCountProductsTotal();
	
	// 페이지 번호 계산
	if(total % 10 == 0){
		lastPageNum = (total / 10);
	}else{
		lastPageNum = (total / 10) + 1;
	}
	
	// 페이지 그룹 계산
	pageGroupCurrent = (int) Math.ceil(currentPage / 10.0);
	pageGroupStart = (pageGroupCurrent - 1) * 10 + 1;
	pageGroupEnd = pageGroupCurrent * 10;
	
	if(pageGroupEnd > lastPageNum){
		pageGroupEnd = lastPageNum;
	}
	
	List<ProductDTO> products = dao.selectProducts(start);
%>
<main>
<%@ include file="../inc/aside.jsp" %>
    <section id="admin-product-list">
        <nav>
            <h3>상품목록</h3>
            <p>
                HOME > 상품관리 > <strong>상품목록</strong>
            </p>
        </nav>
        <section>
            <div>
                <select name="search">
                    <option value="prodName">상품명</option>
                    <option value="prodNo">상품코드</option>
                    <option value="company">제조사</option>
                    <option value="seller">판매자</option>                                    
                </select>
                <input type="text" name="search">
            </div>
            <table>
                <tr>
                    <th><input type="checkbox" name="all"/></th>
                    <th>이미지</th>
                    <th>상품코드</th>
                    <th>상품명</th>
                    <th>판매가격</th>
                    <th>할인율</th>
                    <th>포인트</th>
                    <th>재고</th>
                    <th>판매자</th>
                    <th>조회</th>
                    <th>관리</th>
                </tr>
                
			 	<% for(ProductDTO product : products){ %>
                <tr>
                    <td><input type="checkbox" name="상품코드"/></td>
                    <td><img src="../img/sample_thumb.jpg" class="thumb" alt="상품 이미지"></td>
                    <td><%= product.getProdNo() %></td> <!-- 201603292 -->
                    <td><%= product.getProdName() %></td> <!-- FreeMovement -->
                    <td><%= product.getPrice() %></td> <!-- 36,000 -->
                    <td><%= product.getDiscount() %></td> <!-- 10 -->
                    <td><%= product.getPoint() %></td> <!-- 360 -->
                    <td><%= product.getStock() %></td> <!-- 400 -->
                    <td><%= product.getSeller() %></td> <!-- 홍길동 -->
                    <td><%= product.getHit() %></td> <!-- 126 -->
                    <td>
                 <% } %>
                        <a href="#">[삭제]</a>
                        <a href="#">[수정]</a>
                    </td>
                </tr>
                
            </table>
            
            <input type="button" value="선택삭제" />                          


            <div class="paging">
                <span class="prev">
                    <a href="#"><&nbsp;이전</a>
                </span>
                <span class="num">
                    <a href="#" class="on">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">7</a>
                </span>
                <span class="next">
                    <a href="#">다음&nbsp;></a>
                </span>
                </div>

        </section>                

        
        <p class="ico info">
            <strong>Tip!</strong>
            전자상거래 등에서의 상품 등의 정보제공에 관한 고시에 따라 총 35개 상품군에 대해 상품 특성 등을 양식에 따라 입력할 수 있습니다.
        </p>

    </section>
</main>
<%@ include file="../inc/footer.jsp" %>