<?php
$path = "./";

echo $_REQUEST['username'] . '<br/>';
echo $_REQUEST['password'] . '<br/>';

$fileName = $_REQUEST['filename'];


if (move_uploaded_file($_FILES[$fileName]['tmp_name'], $path . $_FILES[$fileName]['name']))
	echo "upload successful";
else 
	echo "upload failed";
