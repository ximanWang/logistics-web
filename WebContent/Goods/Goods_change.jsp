<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="condata" scope="page" class="wuliu.conndata"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
Goods_change page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.gclass.value=="")
{
 alert("����д�������ͣ���");
form1.gclass.focus();
return false;
}
if(form1.gname.value=="")
{
alert("����д�������ƣ�����");
form1.gname.focus();
return false;
}
if(form1.gcount.value=="")
{
alert("����д��������������");
form1.gcount.focus();
return false;
}
if(form1.gunit.value=="")
{
alert("����д����������λ������");
form1.gunit.focus();
return false;
}
if(form1.gstartfirm.value=="")
{
alert("����д��ʼʡ�ݣ�����");
form1.gstartfirm.focue();
return false;
}
if(form1.gstartcity.value=="")
{
alert("����д��ʼ���У�����");
form1.gstartcity.focue();
return false;
}
if(form1.gendfirm.value=="")
{
alert("����д�ִ�ʡ�ݣ�����");
form1.gendfirm.focus();
return false;
}
if(form1.gendcity.value=="")
{
alert("����д�ִ���У�����");
form1.gendfirm.focus();
return false;
}
if(form1.gtransstyle.value=="")
{
alert("����д�������ͣ�����");
form1.gtransstyle.focue();
return false;
}
if(form1.gtime.value=="")
{
alert("����д����ʱ�䣡����");
form1.gtime.focus();
return false;
}
if(form1.glink.value=="")
{alert("����д��ϵ�ˣ�����");
form1.glink.focus();
return false;
}
if(form1.gphone.value=="")
{
alert("����д��ϵ�绰������");
form1.gphone.focus();
return false;
}
if(form1.gremark.value=="")
{
alert("����д��ע������");
form1.gremark.focus();
return false;
}
if(form1.grequest.value=="")
{
alert("����дҪ�󣡣���");
form1.grequest.focus();
return false;}
if(form1.username.value=="")
{
alert("����д������������������");
form1.grequest.focus();
return false;
}
}
</Script>
<jsp:include page="/top.jsp"/>
<body bgcolor="#ffffff">
<p align="center"><b><font size="6">������Ϣ�޸�</font></b></p>
<form method="POST" action="/logistics/Goods/Goods_change_config.jsp" name="form1">
<%
int num;
String sql="select * from db_GoodsMeg where ID="+request.getParameter("id");
ResultSet rs=condata.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("ID");
%>
  <table width="786" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="20%" height="43">
        <p align="center"><font size="4">�������ͣ�</font></p>
      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="gclass" value=" <%=rs.getString("GoodsStyle")%>" size="20"></p>
      </td>
      <td width="18%" height="43">
        <p align="center"><font size="4">�������ƣ�</font></p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="gname" size="20" value="<%=rs.getString("GoodsName")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="42">
        <p align="center"><font size="4">����������</font></p>
      </td>
      <td width="36%" height="42">
        <p align="center"><input type="text" name="gcount" size="20"value="<%=rs.getString("GoodsNumber")%>"></p>
      </td>
      <td width="18%" height="42">
        <p align="center"><font size="4">������λ��</font></p>
      </td>
      <td width="30%" height="42">
        <p align="center"><input type="text" name="gunit" size="20" value=" <%=rs.getString("GoodsUnit")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="43">
        <p align="center"><font size="4">��ʼʡ�ݣ�</font></p>
      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="gstartfirm" size="20" value="<%=rs.getString("StartOmit")%>"></p>
      </td>
      <td width="18%" height="43">
        <p align="center"><font size="4">��ʼ���У�</font></p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="gstartcity" size="20" value="<%=rs.getString("StartCity")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="46">
        <p align="center"><font size="4">�ִ�ʡ�ݣ�</font></p>
      </td>
      <td width="36%" height="46">
        <p align="center"><input type="text" name="gendfirm" size="20" value="<%=rs.getString("EndOmit")%>"></p>
      </td>
      <td width="18%" height="46">
        <p align="center"><font size="4">�ִ���У�</font></p>
      </td>
      <td width="30%" height="46">
        <p align="center"><input type="text" name="gendcity" size="20" value="<%=rs.getString("EndCity")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="45">
        <p align="center"><font size="4">�������ͣ�</font></p>
      </td>
      <td width="36%" height="45">
      <p align="center">
      &nbsp; <select size="1" name="gtransstyle">
        <option value="��ͨ" selected>��ͨ</option>
        <option value="����">����</option>
        <option value="�ؿ�">�ؿ�</option>
        <option value="�Ӽ�">�Ӽ�</option>
       </select>
      </p>
      </td>
      <td width="18%" height="45">
        <p align="center"><font size="4">����ʱ�䣺</font></p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="gtime" size="20" value="<%=rs.getString("TransportTime")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="45">
        <p align="center"><font size="4">��ϵ�绰��</font></p>
      </td>
      <td width="36%" height="45">
        <p align="center"><input type="text" name="gphone" size="20" value="<%=rs.getString("Phone")%>"></p>
      </td>
      <td width="18%" height="45">
        <p align="center"><font size="4">��ϵ�ˣ�</font></p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="glink" size="20"value="<%=rs.getString("Link")%>"></p>
      </td>
    </tr>
 <tr>
      <td width="20%" height="40"  c>
        <p align="center">����ʱ�䣺</td>
      <td width="36%" height="40"olspan="3">
       <input type="text" name="dd" size="20" value="<%=rs.getDate("IssueDate")%>">
       </td>
    </tr>
    <tr>
      <td width="20%" height="78">
        <p align="center"><font size="4">��ע��</font></p>
      </td>
      <td width="84%" height="78" colspan="3">
        <p align="left"><textarea rows="5" name="gremark" cols="80"><%=rs.getString("Remark")%></textarea></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="74">
        <p align="center">����Ҫ��</p>
      </td>
      <td width="84%" height="74" colspan="3">
        <p align="left"><textarea rows="5" name="grequest" cols="80"><%=rs.getString("Request")%></textarea></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="40">
        <p align="center">�����ˣ�</td>
      <td width="36%" height="40">
        <p align="center"><input type="text" name="username" size="20" value="<%=rs.getString("UserName")%>"></td>
       <td width="20%" height="40">
        <p align="center">ID</td>
	   <td width="20%" height="74">
        <p align="center"><%=num%><input type="hidden" name="code" value="<%=num%>"></p>
      </td>
    </tr>
    <tr>
      <td width="786" height="40" colspan="4">
        <p align="center">
        <input type="submit" name="change" value="�޸�" onClick="return check()">
       <input type="reset" value"����">
     </td>
    </tr>
  </table>
<%}%>
</form>
</body>
</html>