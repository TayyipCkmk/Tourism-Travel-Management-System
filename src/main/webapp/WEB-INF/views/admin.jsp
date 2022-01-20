<%@ page import="com.traveltourismmanagementsystem.model.User" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        <%@include file="main.css" %>
    </style>
    <script src="https://kit.fontawesome.com/8bbf8c5eb9.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

</head>
<body>
<header class="header p-3 text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center">
            <div class="d-flex flex-wrap align-items-center"style="background: #212529;
    height: 65px;
    width: 250px;
    border-radius: 30px;">
                <i class="fab fa-glide-g"style="font-size: xxx-large;height: 70px;color: wheat; margin-inline-start: 5px;"></i>
                <h1 class=""style="font-size: xxx-large;height: 70px;color: white">TS TOUR</h1>
            </div>
            <a href="/create/tour" class="p-3 me-2 btn btn-warning"style="color: #000;background-color: #f7c86f;border-color: #f7c86f;margin-inline-start: 600px;border-radius: 30px">Add Tour</a>
            <a href="/user/logout" class="p-3 btn btn-dark me-2"style="border-radius: 30px;">Log Out</a>

        </div>

        <div class="text-center mt-5">

        </div>
    </div>
</header>
<section class="home-content ">
    <div class="content">

        <div class="container pt-5">
            <div class="d-flex justify-content-end">

            </div>

            <ul class="nav nav-tabs" id="myTab" role="tablist" style="background-color: #21252980 !important">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home"
                            type="button" role="tab" aria-controls="home" aria-selected="true">Tours
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile"
                            type="button" role="tab" aria-controls="profile" aria-selected="false">Users
                    </button>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent"
                 style="background-color: #21252980 !important;border-radius: 0.25rem;">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <table class="table text-white" style="width: 100%;">
                        <thead>
                        <tr class="text-center">
                            <th scope="col"></th>
                            <th scope="col">To</th>
                            <th scope="col">Date</th>
                            <th scope="col">Price</th>
                            <th scope="col">Process</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="item">
                            <tr class="text-center">
                                
                                <td><img src="${item.fromLocation}" style="width: 150px"></td>
                                <td>${item.toFrom}</td>
                                <td>${item.date}</td>
                                <td>${item.price} $</td>
                                <td>
                                    <a href="/update?id=${item.id}" class="btn btn-success me-2"style="border-radius: 30px;">Update</a>
                                    <a href="/cancel?id=${item.id}" class="btn btn-danger"style="border-radius: 30px;">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <table class="table text-white" style="width: 100%;">
                        <thead>
                        <tr class="text-center">
                            <th scope="col">Name</th>
                            <th scope="col">Surname</th>
                            <th scope="col">Username</th>
                            <th scope="col">E-Mail</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${users}" var="item">
                            <tr class="text-center">
                                <td>${item.name}</td>
                                <td>${item.surname}</td>
                                <td>${item.username}</td>
                                <td>${item.email}</td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</section>
</body>
</html>
