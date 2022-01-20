<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
        <%@include file="main.css" %>
    </style>
    <script src="https://kit.fontawesome.com/8bbf8c5eb9.js" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<header class="header p-3 text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center">
            <div class="d-flex flex-wrap align-items-center"style="background: #212529;height: 65px;width: 250px;border-radius: 30px;">
                <i class="fab fa-glide-g"style="font-size: xxx-large;height: 70px;color: wheat; margin-inline-start: 5px;"></i>
                <h1 class=""style="font-size: xxx-large;height: 70px;color: white">TS TOUR</h1>
            </div>

            <a href="${pageContext.request.contextPath}/" type="button" class="p-3 btn btn-dark me-2"style="margin-inline-start: 550px;border-radius: 30px;">Home</a>
            <a href="/user/signup" class="p-3 btn me-2"style="background-color: #f7c86f;border-color: #f7c86f;border-radius: 30px;">Register</a>
            <a href="/user/signin" class="p-3 btn btn-dark me-2"style="border-radius: 30px;">Login</a>
        </div>

        <div class="text-center mt-5">

        </div>
    </div>
</header>
<div class="login">
    <div class="form">
        <form class="login-form" method="post" action="/admin/signin">
            <h4>Admin Login</h4>
            <label for="">Username</label>
            <input name="username" type="text"/>
            <label for="">Password</label>
            <input name="password" type="password" required/>
            <button>Login</button>

            <%
                String status = request.getParameter("status");
                if(status != null && status.equals("usernotfound")) {
            %>
            <p class="error">Kullanıcı bulunamadı !</p>

            <% }
                else if (status != null && status.equals("wrongpass")) {
            %>
            <p class="error">Yanlış parola !</p>

            <% } %>
        </form>
    </div>
</div>
</body>
</html>