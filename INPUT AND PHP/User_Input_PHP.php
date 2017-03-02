<html>
    <head>
    <title>Lab 2</title>
    <head>
    <body>
        <form action="lab2.php" method="POST">
        First name: <input type="text" name="FName" value=""><br>
        Last name: <input type="text" name="lastname" value=""><br>
        Major:
        <input type="radio" name="major"
        <?php if (isset($major) && $major=="Computer Science") echo "checked";?    >
        value="Computer Science">Computer Science
        <input type="radio" name="major"
        <?php if (isset($major) && $major=="other") echo "checked";?>
        value="other">Other
        <br>
        What is your current standing in your degree?
        <br>
        <select name="formProgression">
            <option value="">Select...</option>
            <option value="Freshman">Freshman</option>
            <option value="Sophmore">Sophmore</option>
            <option value="Junior">Junior</option>
            <option value="Senior">Senior</option>
        </select>
        <input type="submit" value="Submit">
    </form>
<?php
	if(isset($_POST['FName']) && isset($_POST['lastname']) && isset($_POST['major']) && isset($_POST['formProgression'])){
		echo "Name: ". $_POST['FName']. " ".  $_POST['lastname']. "<br />";
		echo "Major: ". $_POST['major']. "<br />";
		echo "Year: ". $_POST['formProgression']. "<br />";}
?>
    </body>
 </html>