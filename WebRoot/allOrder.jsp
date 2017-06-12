<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
.text {
	font-family: 楷体;
	font-size: 18;
	font-weight: bold;
}

.text_sub {
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
}

.text_sub_1 {
	text-decoration: line-through;
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
	font-family: 楷体;
}

a {
	text-decoration: none;
	color: #ff5990;
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
}
</style>
<base href="<%=basePath%>">

<title>订单列表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body bgcolor="#fef5f0">
	<table width="100%"
		style="padding-left: 80; padding-top: 30; padding-bottom: 20;">
		<tr>
			<td align="left"><a href="user_doSearchAllUser.action">首页</a></td>
		</tr>
	</table>
	<table
		style="margin-left: 70; margin-right: 70; margin-top: 20; padding: 20"
		bgcolor="#ffffff">
		<tr>
			<td width="214" align="center" class="text">订单ID</td>
			<td width="214" align="center" class="text">收货人</td>
			<td width="214" align="center" class="text">电话</td>
			<td width="214" align="center" class="text">收货地址</td>
			<td width="214" align="center" class="text">总额</td>
			<td width="214" align="center" class="text">订单日期</td>
		</tr>
		<tr>
			<td colspan="6"><hr
					style="border-width: 100%; border-color: #efefef;" /></td>
		</tr>
		<s:iterator value="#session.orderList" status="st">
			<tr>
				<td width="214" align="center" class="text"><a
					href="order_doGetOrderById.action?id=<s:property value="id" />"><s:property
							value="id" /></a></td>
				<td width="214" align="center" class="text"><s:property
						value="contact" /></td>
				<td width="214" align="center" class="text"><s:property
						value="phone" /></td>
				<td width="214" align="center" class="text"><s:property
						value="address" /></td>
				<td width="214" align="center" class="text"><s:property
						value="amount" /></td>
				<td width="214" align="center" class="text"><s:property
						value="time" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
