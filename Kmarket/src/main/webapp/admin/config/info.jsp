<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>

 		<main>
			<%@ include file="../inc/aside.jsp" %>
            <section id="admin-config-info">
                <nav>
                    <h3>기본환경정보</h3>
                    <p>
                        HOME > 환경설정 > <strong>기본환경정보</strong>
                    </p>
                </nav>
                <!-- 상품등록 컨텐츠 시작 -->
                <article>
                    <form action="#">

                        <section>
                            <h4>기본정보</h4>
                            <p>
                                기본분류는 반드시 선택하셔야 합니다. 하나의 상품에 1개의 분류를 지정 합니다.
                            </p>
                            <table>
                                <tr>
                                    <td>쇼핑몰 이름</td>
                                    <td>
                                        케이마켓 (영문:Kmarket)
                                    </td>
                                </tr>
                                <tr>
                                    <td>부제</td>
                                    <td>
                                        대한민국 1등 온라인 쇼핑몰
                                    </td>
                                </tr>
                                <tr>
                                    <td>버전</td>
                                    <td>
                                        v1.0.1
                                    </td>
                                </tr>
                            </table>
                        </section>
                        
                        <section>
                            <h4>이용약관</h4>
                            <p>
                                기본정보는 반드시 입력해야 합니다.
                            </p>
                            <table>
                                <tr>
                                    <td>1조</td>
                                    <td><textarea name="art1"></textarea></td>
                                </tr>
                                <tr>
                                    <td>1조</td>
                                    <td><textarea name="art1"></textarea></td>
                                </tr>
                                <tr>
                                    <td>1조</td>
                                    <td><textarea name="art1"></textarea></td>
                                </tr>
                                <tr>
                                    <td>1조</td>
                                    <td><textarea name="art1"></textarea></td>
                                </tr>
                            </table>                                
                        </section>                                                
                    </form>
                </article>

                <p class="ico alert">
                    <strong>Warning!</strong>
                    전자상거래 등에서의 상품 등의 정보제공에 관한 고시에 따라 총 35개 상품군에 대해 상품 특성 등을 양식에 따라 입력할 수 있습니다.
                </p>
                <!-- 상품등록 컨텐츠 끝 -->
            </section>
        </main>
        <%@ include file="../inc/footer.jsp" %>
    </div>    
</body>
</html>