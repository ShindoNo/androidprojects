<html>
<head>
<script>
function displayDate()
{
alert('Hello');
}

function popitup(url) {
	newwindow=window.open(url,'name','height=200,width=150');
	if (window.focus) {newwindow.focus()}
	return false;
}

</script>
</head>
<body>

<h1>My First JavaScript</h1>
<p id="demo">This is a paragraph.</p>

<button type="button" onclick="displayDate()">Display Date</button>

</body>
</html> 