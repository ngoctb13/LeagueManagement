<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Nha Tai Tro</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
    <style>
        body{
            margin: 0;
            font-family: "Arial";
           
        }

        .container{
            max-width: 1200px;
            margin: auto;
            
        }

        .content_cart{
            margin-top: 100px;
        }

        .row{
            padding-bottom: 15px;
            margin-top: 15px;
            display: flex;
            justify-content: start;
            flex-wrap: wrap;
        }
        

        .product {
           
            display: block;
            margin-right: 10px;
            position: relative;
            width: calc(100% / 4);
            margin: 0 30px;
            margin-bottom: 30px;

        }
        h2{
          text-align: center;
        }
        .product .img1{
            height: 300px;
            width: 100%;
        }
        .img1  img{
            width: 100%;
            height: 300px;
        }
        
        input[type="text"] {
            padding: 4px 0;
            width: calc(100%);
            color: #ccc;
            cursor: pointer;
        }
        input[type="text"]:hover{
          color: #000
        }
        .btn-delete {
            position: absolute;     
            top: -13px;
            right: -3px;
        }
        .btn-delete button{
            background-color: #fff;
            border: 0;
            padding: 10px 15px;
            color: #ee1e46;
            border-radius: 50%;
           
        }
        .btn-delete button:hover{
          border: 1px solid #ee1e46;
          cursor: pointer;
        }
        .btn-add a{
          background-image: linear-gradient(to right top,#9467c1,#8c69c2,#846ac2,#7b6cc2,#736dc2,#736dc2,#736dc2,#736dc2,#7c6cc2,#846ac2,#8d69c2,#9567c1)!important;
          border: none;
          background-image: none;
          border: 1px solid transparent;
          border-radius: 4px;
          cursor: pointer;
          display: inline-block;
          font-size: 14px;
          font-weight: 400;
          line-height: 1.428571429;
          margin-bottom: 0;
          padding: 5px;
          text-align: center;
          touch-action: manipulation;
          -webkit-user-select: none;
          -moz-user-select: none;
          user-select: none;
          vertical-align: middle;
          white-space: nowrap;
          margin: 30px;
          text-decoration: none;
          color: #fff;

        }
        .form-control{
          margin: 0;
        }
        
    </style>
    <div class="container">
        <div class="content">
            <h2 id="">Sponsor</h2>
            <div class="btn-add">
              <a href="addSponsor.jsp" class="add-nhataitro"><i class="fa-solid fa-plus"></i> Add Sponsor</a>
          </div>
            <div class="row">
                <div class="product">
                    <a href="updateSponsor.jsp" class="img1">
                        <img id="imageContainer" src="./images/bg_1.jpg">
                    </a>
                    
                    <input value="https://www.facebook.com/" type="text" name="" id="">
                    <div class="btn-delete">
                        <button type="button"><i class="fa-solid fa-xmark"></i></button>
                    </div>
                </div>
                <div class="product">
                    <a href="updateSponsor.jsp" class="img1">
                        <img id="imageContainer" src="./images/bg_2.jpg">
                    </a>
                    
                    <input value="https://www.facebook.com/" type="text" name="" id="">
                    <div class="btn-delete">
                        <button type="button"><i class="fa-solid fa-xmark"></i></button>
                    </div>
                </div>
                <div class="product">
                    <a href="updateSponsor.jsp" class="img1">
                        <img id="imageContainer" src="./images/bg_3.jpg">
                    </a>
                    
                    <input value="https://www.facebook.com/" type="text" name="" id="">
                    <div class="btn-delete">
                        <button type="button"><i class="fa-solid fa-xmark"></i></button>
                    </div>
                </div>

                
                
            </div>
            

            
        </div>
        
        
    </div>

    <script src="./jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script >
        
        
        // var themelement = $(".btn-add button").click(function(){
        //   var element = $("<div>").attr("class", "product"); 
        
        //   element.append(a); 
        //   element.append(input); 
        //   element.append(xoa); 
        //   a.append(img);
        //   xoa.append(btn_xoa);
        //   btn_xoa.append(icon);

          
        //   $(".row").append(element);
        //     });
        //     var a = $("<a>").attr("class", "img1"); 
        //     var img = $("<img>").attr("src", "./images/bg_3.jpg"); 
        //     var input = $("<input>").attr("type", "text"); 
        //     var xoa =  $("<div>").attr("class", "btn-delete"); 
        //     var btn_xoa =  $("<button>").attr("type", "button"); 
        //       icon = $("<i>").attr("class", "fa-solid fa-xmark"); 


            $('.btn-delete button').on('click', function(){
            var thongbao = confirm('B?n mu?n xóa không ?');
            if(thongbao){
              $(this).parents('.product').remove();
            }
        });
    </script>
</body>
</html>