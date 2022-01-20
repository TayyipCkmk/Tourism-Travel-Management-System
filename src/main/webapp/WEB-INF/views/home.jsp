<%@ page import="com.traveltourismmanagementsystem.model.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
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

            <a href="/user/signin" type="button" class="p-3 btn btn-dark me-2"style="margin-inline-start: 550px;border-radius: 30px;">Login</a>
            <a href="/user/signup" class="p-3 btn me-2"style="background-color: #f7c86f;border-color: #f7c86f;border-radius: 30px;">Register</a>
            <a href="/admin/signin" class="p-3 btn btn-dark me-2"style="border-radius: 30px;">Admin</a>
        </div>

        <div class="text-center mt-5">

        </div>
    </div>
</header>
<section class="home-content ">
    <div class="content ">
        <div class="text-center container pt-5">
            <div class="camera_caption ">





                <h1 class="heading-style-1 visible-first"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Exploring</span></h1>
                <h1 class="indent heading-style-1 visible-first"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">the</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">world</span></h1>

                <!-- Read More link -->
                <div class="btn-wrapper">



                </div>

            </div>
    </div>

    </div>

</section>
</body>
</html>