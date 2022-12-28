<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
Object obj = session.getAttribute("seat");
int [][] seat = (int[][])obj;

String str = request.getParameter("a");
int a = Integer.parseInt(str);
str = request.getParameter("b");
int b = Integer.parseInt(str);
if(seat[a][b] == 0) {
	seat[a][b] = 8;
}else if(seat[a][b] == 8) {
	seat[a][b] = 0;
}


session.setAttribute("seat", seat);
response.sendRedirect("cinemaForm.jsp");
%>