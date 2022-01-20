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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/css/select2.css" />
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
            <a href="/user/logout" class="p-3 btn btn-dark me-2"style="border-radius: 30px;margin-inline-start: 700px">Log Out</a>

        </div>

        <div class="text-center mt-5">

        </div>
    </div>
</header>
<section class="home-content ">
    <div class="content">
        <div class="container pt-5 d-flex flex-column justify-content-center align-items-center">
            <h2 class="text-white mb-3"style="color:#f7c86f;">Add New Tour</h2>

            <form action="/create/tour" method="post"
                  style="width: 40%; padding: 20px; background: #21252980;border-radius: 0.5rem">


                <select id="id_select2_example" style="width: 100%; height: 150px" required class="form-select" name="fromLocation">
                    <option value=https://www.celestyalcruises.com.tr/uploads/santorini-800x800.jpg data-img_src="https://www.celestyalcruises.com.tr/uploads/santorini-800x800.jpg">Greek Islands Tour</option>
                    <option value=https://images.etstur.com/files/images/hotelImages/TR/215443/l/Selectum-Blu-Cruises-Genel-320725.jpg data-img_src="https://images.etstur.com/files/images/hotelImages/TR/215443/l/Selectum-Blu-Cruises-Genel-320725.jpg">Cruises</option>
                    <option value=https://i.pinimg.com/originals/d6/d1/29/d6d129c0741224998265789defb2b521.jpg data-img_src="https://i.pinimg.com/originals/d6/d1/29/d6d129c0741224998265789defb2b521.jpg">Mediterranean Sea Tour</option>
                    <option value=https://www.rentgo.com/wp-content/uploads/2021/06/trabzon.jpg data-img_src="https://www.rentgo.com/wp-content/uploads/2021/06/trabzon.jpg">Black Sea Tour</option>
                    <option value=https://img-s1.onedio.com/id-57e03faaa05194921314a6ae/rev-0/raw/s-6ef54813f86c5b6600c6883804b8e8de5fe7ac73.jpg data-img_src="https://img-s1.onedio.com/id-57e03faaa05194921314a6ae/rev-0/raw/s-6ef54813f86c5b6600c6883804b8e8de5fe7ac73.jpg">Abroad Tour</option>
                </select>

                <select required class="form-select mt-2" aria-label="To where" name="toFrom">
                    <option disabled selected>Select Your Option</option>
                    <option value="Greek Islands Tour">Greek Islands Tour</option>
                    <option value="Cruises Tour">Cruises</option>
                    <option value="Mediterranean Sea Tour">Mediterranean Sea Tour</option>
                    <option value="Black Sea Tour">Black Sea Tour</option>
                    <option value="Abroad Tour">Abroad Tour</option>
                </select>

                <select required class="form-select mt-3" aria-label="Number Of Days" name="date">
                    <option disabled selected>Select Your Option</option>
                    <option value="3 Days">3 Days</option>
                    <option value="4 Days">4 Days</option>
                    <option value="5 Days">5 Days</option>
                    <option value="6 Days">6 Days</option>
                    <option value="7 Days">7 Days</option>
                </select>

                <input required class="form-control mt-2" placeholder="Price" type="number" name="price"/>

                <button type="submit" class="btn btn-success mt-2"style="border-radius: 30px;width: 40%;margin-inline-start: 125px;">Save</button>

                <%
                    String status = request.getParameter("status");
                    if (status != null && status.equals("success")) {
                %>
                <p class="text-white">Uçuş kaydı başarılı !</p>

                <% } %>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/js/select2.js"></script>
                <script type="text/javascript">
                    function custom_template(obj){
                        var data = $(obj.element).data();
                        var text = $(obj.element).text();
                        if(data && data['img_src']){
                            img_src = data['img_src'];
                            template = $("<div><img src=\"" + img_src + "\" style=\"width:100%;height:150px;\"/><p style=\"font-weight: 700;font-size:14pt;text-align:center;\">" + text + "</p></div>");
                            return template;
                        }
                    }
                    var options = {
                        'templateSelection': custom_template,
                        'templateResult': custom_template,
                    }
                    $('#id_select2_example').select2(options);
                    $('.select2-container--default .select2-selection--single').css({'height': '180px'});

                </script>
            </form>
        </div>
    </div>

</section>
</body>
</html>