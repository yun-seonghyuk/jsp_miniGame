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
  <title>���Ǳܱ�</title>
<h2>���Ǳܱ�</h2>    
<h2>��ư3���� Ŭ���ϼ���. �����Ķ����̸� ��÷</h2>
	<h3>���� Ƚ�� : <%=count %></h3>

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
	<h1>�����մϴ�. ��÷�Դϴ�.</h1>
	<a href="lottoIndex.jsp">�ٽ��ѹ�</a>
<%}else if(status == LOSE){ %>
	<h1>�ƽ����� �����Դϴ�.</h1>
	<a href="lottoIndex.jsp">�ٽ��ѹ�</a>
<%} %>
<a href= "index.jsp"><h2>Ȩ����</h2></a>