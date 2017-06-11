<%--
  Created by IntelliJ IDEA.
  User: NjuMzc
  Date: 2017/3/1
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>

</head>
<body>
<h1 align="center">欢迎访问Hostel World！请选择访问入口:</h1>
<br><br><br>
<div class="container">
    <div class="row">
        <div class="col-xs-4" align="center">
            <a href="${pageContext.request.contextPath}/customer/auth/login">
            <button type="button" class="btn btn-primary btn-lg">会员入口</button>
            </a>
        </div>
        <div class="col-xs-4" align="center">
            <a href="${pageContext.request.contextPath}/hotel/auth/login">
            <button type="button" class="btn btn-success btn-lg">酒店入口</button>
            </a>
        </div>
        <div class="col-xs-4" align="center">
            <a href="${pageContext.request.contextPath}/manager/auth/login">
            <button type="button" class="btn btn-info btn-lg">经理入口</button>
            </a>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
