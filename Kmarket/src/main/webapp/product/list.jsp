<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/header.jsp" %>
<%@ include file="./inc/aside.jsp" %>
    <section class="list">
      <!-- 제목, 페이지 네비게이션 -->
      <nav>
        <h1>상품목록</h1>
        <p>HOME > <span>패션·의류·뷰티</span> > <strong>남성의류</strong></p>
      </nav>
      <!-- 정렬 메뉴 -->
      <ul class="sort">
          <li><a href="#" class="on">판매많은순</a></li>
          <li><a href="#">낮은가격순</a></li>
          <li><a href="#">높은가격순</a></li>
          <li><a href="#">평점높은순</a></li>
          <li><a href="#">후기많은순</a></li>
          <li><a href="#">최근등록순</a></li>
      </ul>
      <!-- 상품목록 -->              
      <table>     
      	<c:forEach var="product" items="${products}" varStatus="status">             
        <tr>
          <td><a href="#" class="thumb"><img src="${path }/upload/${product.thumb1}" alt="상품이미지"/></a></td>
          <td>
            <h3 class="name">${product.prodName }</h3>
            <a href="#" class="desc">${product.descript }</a>
          </td>
          <td>
            <ul>
              <li><ins class="dis-price">${product.getDisPriceWithComma() }</ins></li>
              <li>
                <del class="org-price">${product.getPriceWithComma() }</del>
                <span class="discount">${product.discount }%</span>
              </li>
              <li>
              	<c:choose>
              		<c:when test="${product.delivery gt 0 }">
              			<span>배송비 ${product.getDeliveryWithComma() }</span>
              		</c:when>
              		<c:otherwise>
              			<span class="free-delivery">무료배송</span>
              		</c:otherwise>
              	</c:choose>
              </li>
            </ul>
          </td>
          <td>
            <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자</h4>
            <h5 class="badge power">판매자등급</h5>
            <h6 class="rating star1">상품평</h6>
          </td>
        </tr>
        </c:forEach>
      </table>            
      <!-- 상품목록 페이지번호 -->
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
</main>
<%@ include file="./inc/footer.jsp" %>