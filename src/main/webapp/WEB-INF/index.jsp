<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
int seat [][] = {
		{0,0,1,0,0,0,0,0,1,0,0},
		{0,0,1,0,0,0,0,0,1,0,0},
		{0,0,1,0,0,0,0,0,1,0,0},
		{0,0,1,0,0,0,0,0,1,0,0},
		{1,1,1,1,1,1,1,1,1,1,1},
		{0,0,1,0,0,0,0,0,1,0,0},
		{0,0,1,0,0,0,0,0,1,0,0},
		{0,0,1,0,0,0,0,0,1,0,0},
		{0,0,1,0,0,0,0,0,1,0,0}
};

char line [] = {'A','B','C','D','E','F','G','H','I'};
session.setAttribute("seat",seat);
session.setAttribute("line",line);
response.sendRedirect("cinemaForm.jsp");
%>