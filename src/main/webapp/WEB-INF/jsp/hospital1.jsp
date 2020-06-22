<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医院列表</title>
<script src="../lib/heart.js"></script>
    <style>
        .seacher{
          border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        height: 30px;
        width: 340px;
        position: absolute;
        margin-top: 10px;
        margin-left: 440px;
        float: left;
        }
        #FindDoc{
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        width: 300px;
        height: 30px;
        border: snow;
      }
    </style>
</head>
<body>
<div style="height: 50px;width: 1264px;background-color:rgb(248, 242, 204);filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60; ">
        <div class="seacher">
        <% String hos=request.getParameter("hos_name");
                    if(hos==null)
                    	hos=" ";
                    	%>
          <input id="FindDoc" value="<%=hos %>" type="text"/>
          <img src="../pictures/搜索--1.png" onclick="search();" style="height: 30px;width: 30px;float:right;"/>
        </div>
        <p style="float: right;margin-right: 15px;"><a href="../hospital.jsp" >返回查询>></a></p>
    </div>
    <div style="width: 1264px;height="2000px"">
      <div style="text-align: center;font-size: 20px;">
      <%
	  String city=request.getParameter("city");
      
	  if(city!=null)
		  out.print(city+"医院列表");
	  else
		  out.print(hos+"查询结果");
		  %></div>
     <c:forEach items="${requestScope.HospitalList}" var="hospital">
      <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="30" class="txt" align="left"><strong><a href="../login/showHospital.do?hos_name=${hospital.getHos_name()}" target=_blank" target="_blank"><font color="#006600"><u>${hospital.getHos_name()}</u></font></a></strong></td>
        </tr>
        <tr>
          <td valign="top">
            <table width="100%"  border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF">
              <tr bgcolor="f6f6f6">
                <td width="15%" align="right">医院地址：</td>
                <td width="45%" align="left">${hospital.getAddress()}</td>
                <td width="15%" align="right">邮　　编：</td>
                <td width="25%" align="left">${hospital.getPostcode()}</td>
              </tr>
              <tr bgcolor="f6f6f6">
                <td align="right">联系电话：</td>
                <td align="left">${hospital.getTel()}</td>
                <td align="right">等　　级：</td>
                <td align="left">${hospital.getLev()}</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td align="right" valign="top" style="padding-left:3px">&nbsp;</td>
        </tr>
</table>
</c:forEach>
</div>
</body>
<script type="text/javascript" src="../lib/jquery-3.4.1.js"></script>
<script type="text/javascript">


$('#FindDoc').bind('keypress',function(event){ 
    
    if(event.keyCode == 13)      

    {
        search();
    }  

});


function search()
{
    window.location.href='../login/hospital.do?hos_name='+$(" #FindDoc ").val();
     
}
</script>
</html>