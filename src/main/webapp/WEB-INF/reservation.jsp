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
<h1>�¼� ����</h1>
<h2>������ �¼� : <%=count%></h2>
<h2>���� �ݾ� : <%=fee%></h2>
<button onclick="window.location.href='reservationPro.jsp'">�����ϱ�</button>
<button onclick="window.location.href='cinemaForm.jsp'">�ڷΰ���</button>
<button onclick="window.location.href='index.jsp'">ó������</button>
</div>
