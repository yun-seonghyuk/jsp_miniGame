<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
Object obj = session.getAttribute("seat");
int [][] seat = (int[][])obj;

int count = 0;
for(int i = 0; i < seat.length; i++) {
	for(int j = 0; j < seat[i].length; j++) {
		if(seat[i][j] == 8) {
			count += 1;
		}
	}
}
int fee = count * 12000;
session.setAttribute("seat",seat);

%>
<div align="center">
<h1>좌석 예매</h1>
<h2>선택한 좌석 : <%=count%></h2>
<h2>결제 금액 : <%=fee%></h2>
<button onclick="window.location.href='reservationPro.jsp'">예매하기</button>
<button onclick="window.location.href='cinemaForm.jsp'">뒤로가기</button>
<button onclick="window.location.href='index.jsp'">처음으로</button>
</div>
