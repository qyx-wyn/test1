<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医院详细信息</title>
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
        <p style="float: right;margin-right: 15px;"><a href="../hospital.jsp" >返回医院主页>></a></p>
    </div>
    <div style="width: 1000;">
        <table width="93%"  border="0" id="fontsize" align="center" cellpadding="0" cellspacing="0">
            <tr>
             <td height="30"><h1 class="style10">${Hospital.getHos_name()}</h1></td>
             <td align="right"><a href="#" onClick="fontsize.style.fontSize='12px';" title="正常字体"><font color="#FF6600">正常字体</font></a>&nbsp;
         <a href="#" onClick="fontsize.style.fontSize='14px';" title="放大字体"><font color="#FF6600">放大字体</font></a></td>
            </tr>
            <tr>
                <td valign="top" colspan="2">
                        <table width="95%" height="98"  border="0" align="center" cellpadding="5" cellspacing="2" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
                           <tr height="25">
                             <td width="23%" align="right" bgcolor="f6f6f6">医院名称：</td>
                             <td width="77%" align="left" bgcolor="f6f6f6">${Hospital.getHos_name()}</td>
                         </tr>
                         <tr>
                             <td align="right" bgcolor="f6f6f6">等　　级：</td>
                             <td align="left" bgcolor="f6f6f6">${Hospital.getLev()}</td>
                           </tr>
                           <tr height="25">
                             <td align="right" bgcolor="f6f6f6">类　　型：</td>
                             <td align="left" bgcolor="f6f6f6">${Hospital.getType()}非营利性</td>
                         </tr>
                         <tr height="25">
                            <td align="right" bgcolor="f6f6f6">城   市：</td>
                            <td align="left" bgcolor="f6f6f6">${Hospital.getCity()}</td>
                         </tr>
                           <tr height="25">
                             <td align="right" bgcolor="f6f6f6">地　　址：</td>
                             <td align="left" bgcolor="f6f6f6">${Hospital.getAddress()}</td>
                             </tr>
                             <tr>
                             <td align="right" bgcolor="f6f6f6">邮　　编：</td>
                             <td align="left" bgcolor="f6f6f6">${Hospital.getPostcode()}</td>
                           </tr>
                           <tr>
                             <td align="right" bgcolor="f6f6f6">联系电话：</td>
                             <td align="left" bgcolor="f6f6f6">${Hospital.getTel()}</td>
                           </tr>
                           <tr>
                             <td align="right" bgcolor="f6f6f6">网　　址：</td>
                             <td align="left" bgcolor="f6f6f6"><a href=${Hospital.getWebsite()}>${Hospital.getWebsite()}</a></td>
                           </tr>
                           <tr>
                            <td align="right" bgcolor="f6f6f6">特色专科：</td>
                            <td align="left" bgcolor="f6f6f6">${Hospital.getSpecial()}</td>
                          </tr>
                          <tr>
                            <td align="right" bgcolor="f6f6f6">医院介绍：</td>
                            <td align="left" bgcolor="f6f6f6">${Hospital.getRecommend()}</td>
                          </tr>
                        </table>			
                </td>
          </tr>
      </table>
    <br>
    <table width="93%" align=center  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="1" background="/images/line1.gif"></td>
      </tr>
    </table>
    <br>
                    </td>
      </tr>
    </table>
    
              <div align="center"><br>
      本网数据仅供参考！[<a href="http://www.pharmnet.com.cn/declare/declare.htm" target="_blank"><font color="#339900">免责声明</font></a>]
              </div><br></td>
            </tr>
        </table>
    </td>
      </tr>
    </table>
    </div>
</body>
</html>