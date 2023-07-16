

<%@page import="dao.SponsorDAO"%>
<%@page import="model.Sponsor"%>
<!DOCTYPE html>

<%
        int sponsor_id =Integer.parseInt( request.getParameter("sponsor_id"));
        SponsorDAO dao = new SponsorDAO();
        Sponsor gotSponsor= dao.getSponsorBySponsorID(sponsor_id);
    %>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <!-- <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png"> -->
    <!-- <link rel="icon" type="image/png" href="../assets/img/favicon.ico"> -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Add Product</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="${base }/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <!-- <link href="../assets/css/demo.css" rel="stylesheet" /> -->
</head>
<style>
   .row{
       width: 80%;
       margin: 40px 10%;
   }
</style>
<body>
    <div class="wrapper">
        
        <div class="main-panel">
            

            <div class="content">
               <div class="container-fluid" >
                   <form id="myForm1" action="updateSponsor" method="post" enctype="multipart/form-data">
                       <div class="row">
                           <input type="hidden" name="sponsor_id" value="<%= gotSponsor.getSponsor_id() %>">
                           <label style="margin-top: 50px ;"></label>
                           
                           <div>
                               <img  alt="" src="./images/<%= gotSponsor.getImage() %>" style="width: 350px;height: 300px; margin-bottom: 30px ; "
                               id="imagePreview">
                           </div>
                           <div class="col-xxl-6" style="padding-bottom: 20px;">
                               <input name="imageUpdate" type="file" class="form-control" placeholder="Avatar"  id="imageInput" onchange="previewImage(event)"></input>
                           </div> 
                       </div>
                       <div class="row">
                           <div class="col-xxl-6" style="padding-bottom: 20px;">
                               <div class="form-floating">
                                   <textarea class="form-control" name="linkUpdate"  id="floatingTextarea" ><%= gotSponsor.getLink() %></textarea>
                                   <label  type="text" for="floatingTextarea" required="required">Enter link of sponsor </label>
                               </div>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-xxl-2">
                               <button class="btn btn-primary" type="submit">Update</button>
                           </div>
                       </div>
                   </form>
               </div>
            </div>

         <script>
           function previewImage(event) {
               var input = event.target;
               var preview = document.getElementById('imagePreview');

               if (input.files && input.files[0]) {
                   var reader = new FileReader();

                   reader.onload = function (e) {
                   preview.src = e.target.result;
                   };

                   reader.readAsDataURL(input.files[0]);
               }
               }
         </script>
         

</html>