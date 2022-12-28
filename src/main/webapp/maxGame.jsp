<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	Object obj = null;
	obj = session.getAttribute("numList");
	int numList[] = (int[]) obj;
	obj = session.getAttribute("testSize");
	int testSize = (int)obj;
	obj = session.getAttribute("gameCount");
	int gameCount = (int)obj;
%>
<style>
	button{
		width:75px;
		height:75px;
		font-size:45px;
	}
	.d{
		background-color : gray;
	}
	.c{
		color : white;
	}
	h1{
	text-align : center;
	}
</style>
<title>max Game</title>
<h1 >Max Game</h1>
<div align = "center">
	<%if(gameCount == 5){ %>
		<h2>모두 성공</h2>
		<a href="maxIndex.jsp">다시하기</a>
	<%}else{ %>
		<img src= "라이언힘내.png">
		<h2>가장큰 숫자를 클릭하세요.</h2>
		<h3>가장큰 숫자를 누르면 0이됩니다.</h3>
		<h3>모든숫자가 0이되도록 하시오.</h3>
		<%for(int i = 0; i < testSize; i++){ %>
		 	<button class ="d" onclick="window.location.href='maxGamePro.jsp?index=<%=i%>'"><b class="c"><%=numList[i] %></b></button>
		 <%} %>
	<%} %>	 		
</div>
<a href= "index.jsp"><h2>홈으로</h2></a>