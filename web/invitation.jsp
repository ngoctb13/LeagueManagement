<%@page import="model.Team"%>
<%@page import="dao.TeamDAO"%>
<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Soccer &mdash; Website by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <link rel="stylesheet" href="css/jquery.fancybox.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">

        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/style.css.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="css/team.css">



    </head>
    <%
        TeamDAO dao = new TeamDAO();
        Team team = new Team();
    %>
    <body>

        <style>
            .col-12{
                position: relative;
                height: 1000px;

            }
            .header_Box{
                margin: 3% 4%;
                font-size: 20px;
            }
            .box{
                margin: 0 10%;
            }
            .header_Box_right{
                float: right;
            }
            #dataTables-example tr td,#dataTables-example tr th{
                color: #333
            }
            .modal1,.modal5,.modal9{
                position: fixed;
                height: 100%;
                width: 100%;
                background: rgb(0, 0, 0, 0.6);
                z-index: 3;
            }
            .modal_inner form{
                width: 50%;
                margin: 10% auto;
                text-align: center;
                justify-content: center;
                border: 1px solid #de536f;
                background-color: #de536f ;
                border-radius: 15px;
                border: none;

            }
            .modal_inner form table{
                width: 100%;
                border: none;

            }
            .modal_inner form table tr th{
                width: 30%;
                color: white;
                border: none;

            }
            .modal_inner label{
                color: white;
                font-size: 17px;
                font-weight: bold;
                border: none;

            }
            .modal_inner form table tr td{
                width: 70%;
                margin-right: 10px;
                border: none;

            }
            .modal_inner form table tr td input, .modal_inner form input {
                padding: 10px;
                border-radius: 10px;
                border: none;
                width: 90%;
                margin: 10px 0;
                border: none;

            }
            .hide{
                display: none;
            }
            .icon_exit{
                width: 100%;
            }
            .icon_exit span{
                padding: 10px;
                float: right;
                margin: 10px 10px 0 10px;
            }
            .icon_exit span:hover{
                border: 1px dashed #333;
                border-radius: 5px;
                cursor: pointer;
            }

        </style>
        
<!--            <div class="modal1 hide">
                <c:forEach items="${invitation}" var="i">
                <div class="modal_inner" id="responseInvitation">
                    <form action="responseInvitation?teamID=" method=""><div class="modal_header3">

                            <div class="icon_exit"><span class="fa fa-times"></span></div>

                            <table class="table">
                                <tr>
                                    <th><label for="" >Enter The Shirt Number You Want:</label></th>
                                    <td><input type="text" name="shirt_number" id="" value= "" required="Not empty"></td>
                                </tr>
                                <tr>
                                    <th><label for="">Enter The Position You Want:</label></th>
                                    <td><input type="text" name="position" id="" value= "" required="Not empty"></td>
                                </tr>
                            </table>    
                            <input type="submit" name="" id="" value= "Submit" style="width: 30%;">


                        </div>
                    </form>>
                </div>
                     </c:forEach>
            </div>-->
       
        <div class="col-12 content_box">
            <div class="header_Box">
                <p>
                    Invitation to join the Team
                </p>
                <div class="header_Box_right">
                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="assets_1/images/author/avatar.png" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">${sessionScope.user.full_name} <i class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="home.jsp">Home</a>
                                <a class="dropdown-item" href="#">Settings</a>
                                <a class="dropdown-item" href="logout">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





            <div class="box box-primary">
                <div class="box-body">

                    <table width="100%" class="table table-hover" id="dataTables-example">
                        <thead>
                            <tr>

                                <th>Team Name</th>
                                <th>Message</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${invitation}" var="i" varStatus="status">
                                <tr>                          
                                    <td>${teamNames[status.index]}</td>
                                    <td>${i.mess}</td>
                                    <td>${i.status}</td>
                                    <td class="text-end">
                                        <a id="Accept" href="acceptTeamInvitation.jsp?team_id=${i.teamID}"  class="btn btn-outline-info btn-rounded btnxoa">Accept</a>
                                        <a href="#" class="btn btn-outline-danger btn-rounded btnxoa">Decline</a>
                                    </td>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>

                </div>

            </div>

        </div>





        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.mb.YTPlayer.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

        <script src="js/main.js"></script>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

  <script src="js/main.js"></script>
  <script>
    var modal = document.querySelector('.modal1')
    var hienthi = document.querySelector('#Accept')
   var andi = document.querySelector('.icon_exit span')
    var xoa = document.querySelector('.btnxoa')

    function toggModal(){
        modal.classList.toggle('hide')
    }

    
    andi.addEventListener('click', toggModal);
    $('.btnxoa').on('click', function(){
        $(this).closest('tr').remove();
        
    });
    hienthi.addEventListener('click', toggModal);

  
</script>
        <script>
            var form = document.getElementById("myForm");
            var team_id = '<%= session.getAttribute("team_id")%>';
            var hiddenInput = document.createElement("input");
            hiddenInput.type = "hidden";
            hiddenInput.name = "team_id";
            hiddenInput.value = team_id;
            form.appendChild(hiddenInput);
        </script> 

    </body>

</html>