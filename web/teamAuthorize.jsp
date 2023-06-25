<%-- 
    Document   : teamAuthorize
    Created on : Jun 25, 2023, 10:26:09 AM
    Author     : AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Team Host Authorization</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <style>
    body {
      background-color: #F8F8F8;
      font-family: Arial, sans-serif;
    }

    h1 {
      color: #0047AB;
    }

    #playerStatus {
      background-color: #FFFFFF;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      max-width: 300px;
      margin: 0 auto;
    }

    #statusText {
      color: #0047AB;
    }

    #authorizeButton {
      background-color: #0047AB;
      color: #FFFFFF;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
    }

    #authorizeButton:disabled {
      background-color: #CCCCCC;
      cursor: not-allowed;
    }

    #teamLogo {
      display: block;
      width: 150px;
      margin: 0 auto;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <h1>Team Host Authorization</h1>
  
  <div id="playerStatus">
    <h3>Player Status: <span id="statusText">Unauthorized</span></h3>
    <button id="authorizeButton" onclick="authorizePlayer()">Authorize</button>
    <img id="teamLogo" src="soccer-logo.png" alt="Team Logo">
  </div>
  
  <script>
    // Function to authorize the player
    function authorizePlayer() {
      // Send a request to the server to check authorization
      $.ajax({
        url: '/authorize',
        method: 'POST',
        success: function(response) {
          if (response === 'authorized') {
            // Update the player status
            $('#statusText').text('Authorized');
            
            // Disable the authorization button
            $('#authorizeButton').prop('disabled', true);
          }
        },
        error: function() {
          alert('Error occurred while authorizing the player.');
        }
      });
    }
  </script>
</body>
</html>

