<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
Object obj = session.getAttribute("seat");
int [][] seat = (int[][])obj;
obj = session.getAttribute("line");
char [] line = (char[])obj;
%>

<style>
	button {
		width:100px;
		height:50px;
	}
	.r {
	background-color:red;
	}
	.g {
	background-color:grey;
	}
</style>

<div align="center">
	<%for(int i = 0; i < seat.length; i++){ %>
		<%for(int j = 0; j < seat[i].length; j++) {%>
			<%if(j == 10) { %>
				<%if(seat[i][j] == 0) {%>
				<button onclick="window.location.href='cinemaPro.jsp?a=<%=i%>&b=<%=j%>'"><%=line[i]%><%=j%></button>
				<%}else if(seat[i][j] == 1) {%>
				<button class="g" disabled><h3>X</h3></button>
				<%}else if(seat[i][j] == 8) {%>
				<button class="r" onclick="window.location.href='cinemaPro.jsp?a=<%=i%>&b=<%=j%>'"><%=line[i]%><%=j%></button>
				<%}else { %>
				<button class="g" disabled><%=line[i]%><%=j%></button>
				<%} %>
			<%}else { %>
				<%if(seat[i][j] == 0) {%>
				<button onclick="window.location.href='cinemaPro.jsp?a=<%=i%>&b=<%=j%>'"><%=line[i]%>0<%=j%></button>
				<%}else if(seat[i][j] == 1) {%>
				<button class="g" disabled><h3>X</h3></button>
				<%}else if(seat[i][j] == 8) {%>
				<button class="r" onclick="window.location.href='cinemaPro.jsp?a=<%=i%>&b=<%=j%>'"><%=line[i]%>0<%=j%></button>
				<%}else { %>
				<button class="g" disabled><%=line[i]%>0<%=j%></button>
				<%} %>
			<%} %>
		<%} %>
		<br>
	<%} %>
	<button onclick="window.location.href='reservation.jsp'">예매하기</button>
	
</div>