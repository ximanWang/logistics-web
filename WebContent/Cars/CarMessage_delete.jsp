<%@ page contentType="text/html; charset=GBK" %>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<title>
CarMessage_delete page
</title>
</head>
<body bgcolor="#ffffff">
<%
String sql="delete db_CarMessage where Code="+request.getParameter("id");
boolean bb=condata.executeDelete(sql);
if(bb)
{
%>
<script language="javascript">
 alert("������Ϣ�Ѿ�ɾ��");
</script>
<%
response.sendRedirect("/logistics/Cars/CarMessage.jsp");
}else
{
%>
<script language="javascript">
 alert("������Ϣɾ��ʧ��!!!");
history.back();
</script>
<%
}
%>
</body>
</html>