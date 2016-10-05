
<?php
include "config.php";

?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script   src="https://code.jquery.com/jquery-3.1.1.js" ></script>
</head>
<body>
<form action="insert.php" method="post">
	<input type="text" name="ad" placeholder="adinizi daxil edin">
	<input type="text" name="soyad" placeholder="soyadinizi daxil edin">
		<div class="input">
		    <button class="addbutton">Add </button>
		    <div><input type="text" name="education[]" placeholder="tehsil bilginiz daxil edin"></div>
		</div>
	<input type="submit" name="submit" value="gonder">


</form>

<script>
	$(document).ready(function() {
    var max_input      = 10;
    var inputdiv         = $(".input");

    var add_button      = $(".addbutton");

    var x = 1;
    $(add_button).click(function(e){
        e.preventDefault();
        if(x < max_input){
            x++;
            $(inputdiv).append('<div><input type="text"  placeholder="tehsil bilginizi daxil edin" name="education[]"/><a href="#" class="inputsil">Remove</a></div>');
        }
    });

    $(inputdiv).on("click",".inputsil", function(e){
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
})
</script>

<?php

if (isset($_POST['submit'])) {

	if (isset($_POST["education"]) && is_array($_POST["education"])) {
		$name = $_POST['ad'];
		$surname = $_POST['soyad'];
		$melumat = implode(", ", $_POST["education"]);
		$sql = "INSERT INTO form (ad,soyad,education) VALUES ('$name', '$surname','$melumat')";
		$querry = mysqli_query($conn, $sql);
	}

}
?>
</body>
</html>

