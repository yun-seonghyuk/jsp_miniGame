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
		<h2>��� ����</h2>
		<a href="maxIndex.jsp">�ٽ��ϱ�</a>
	<%}else{ %>
		<img src= "���̾�����.png">
		<h2>����ū ���ڸ� Ŭ���ϼ���.</h2>
		<h3>����ū ���ڸ� ������ 0�̵˴ϴ�.</h3>
		<h3>�����ڰ� 0�̵ǵ��� �Ͻÿ�.</h3>
		<%for(int i = 0; i < testSize; i++){ %>
		 	<button class ="d" onclick="window.location.href='maxGamePro.jsp?index=<%=i%>'"><b class="c"><%=numList[i] %></b></button>
		 <%} %>
	<%} %>	 		
</div>
<a href= "index.jsp"><h2>Ȩ����</h2></a>