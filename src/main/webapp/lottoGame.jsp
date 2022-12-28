<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
	button{
		width:100px;
		height:50px;
	}
	.red{
		background-color: red;
	}
	.blue{
		background-color: blue;
	}
</style>
<%
	final int PLAING = 0;
	final int WIN = 1;
	final int LOSE = 2;


	Object obj = session.getAttribute("check");
	boolean check[] = (boolean[])obj;
	obj = session.getAttribute("arr");
	int arr[] = (int[])obj;
	
	obj = session.getAttribute("count");
	int count = (int)obj;
	
	obj = session.getAttribute("status");
	int status = (int)obj;
	
%>
  <title>복권긁기</title>
<h2>복권긁기</h2>    
<h2>버튼3개를 클릭하세요. 전부파란색이면 당첨</h2>
	<h3>남은 횟수 : <%=count %></h3>

<%for(int i = 0; i < 7; i++){%>
	<%if(check[i] == true && arr[i] == 7){%>
		<button class="blue" disabled ></button>
	<% }else if(check[i] == true && arr[i] == 1){%>
		<button class="red" disabled ></button>
	<% }else{%>
		<%if(status == PLAING){ %>
			<button onclick="window.location.href='lottoGamePro.jsp?index=<%=i%>'"></button>
		<%}else{ %>
			<button disabled></button>
		<%} %>
	<% }%>	
<%}%>

<%if(status == WIN){ %>
	<h1>축하합니다. 당첨입니다.</h1>
	<a href="lottoIndex.jsp">다시한번</a>
<%}else if(status == LOSE){ %>
	<h1>아쉽지만 실패입니다.</h1>
	<a href="lottoIndex.jsp">다시한번</a>
<%} %>
<a href= "index.jsp"><h2>홈으로</h2></a>