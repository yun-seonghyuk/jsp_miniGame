<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
Object obj = session.getAttribute("seat");
int [][] seat = (int[][])obj;

for(int i = 0; i < seat.length; i++) {
	for(int j = 0; j < seat[i].length; j++) {
		if(seat[i][j] == 8) {
			seat[i][j] = 3;
		}
	}
}
response.sendRedirect("cinemaForm.jsp");
%>