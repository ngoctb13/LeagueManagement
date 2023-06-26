<%-- 
    Document   : leagueAuthorize
    Created on : Jun 25, 2023, 10:18:34 AM
    Author     : AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>League and Team Authorization</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <style>
    body {
      background-color: #F8F8F8;
      font-family: Arial, sans-serif;
    }

    h1 {
      color: #0047AB;
    }

    #authorizationContainer {
      max-width: 300px;
      margin: 0 auto;
    }

    .authorizationBox {
      background-color: #FFFFFF;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
    }

    .authorizationBox h3 {
      color: #0047AB;
    }

    .authorizationButton {
      background-color: #0047AB;
      color: #FFFFFF;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
    }

    .authorizationButton:disabled {
      background-color: #CCCCCC;
      cursor: not-allowed;
    }

    .teamLogo {
      display: block;
      width: 150px;
      margin: 0 auto;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <h1>League and Team Authorization</h1>

  <div id="authorizationContainer">
    <div class="authorizationBox">
      <h3>League Authorization</h3>
      <p>League Status: <span id="leagueStatusText">Unauthorized</span></p>
      <button class="authorizationButton" onclick="authorizeLeague()">Authorize League</button>
    </div>
    
    <div class="authorizationBox">
      <h3>Team Authorization</h3>
      <p>Team Status: <span id="teamStatusText">Unauthorized</span></p>
      <button class="authorizationButton" onclick="authorizeTeam()">Authorize Team</button>
      <img class="teamLogo" src="team-logo.png" alt="Team Logo">
    </div>
  </div>

  <script>
    // Function to authorize the league
    function authorizeLeague() {
      // Send a request to the server to check league authorization
      $.ajax({
        url: '/authorize-league',
        method: 'POST',
        success: function(response) {
          if (response === 'authorized') {
            // Update the league status
            $('#leagueStatusText').text('Authorized');
            
            // Disable the league authorization button
            $('.authorizationButton').prop('disabled', true);
          }
        },
        error: function() {
          alert('Error occurred while authorizing the league.');
        }
      });
    }

    // Function to authorize the team
    function authorizeTeam() {
      // Send a request to the server to check team authorization
      $.ajax({
        url: '/authorize-team',
        method: 'POST',
        success: function(response) {
          if (response === 'authorized') {
            // Update the team status
            $('#teamStatusText').text('Authorized');
            
            // Disable the team authorization button
            $('.authorizationButton').prop('disabled', true);
          }
        },
        error: function() {
          alert('Error occurred while authorizing the team.');
        }
      });
    }
  </script>
</body>
</html>

