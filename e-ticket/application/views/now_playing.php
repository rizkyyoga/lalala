<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>e - ticket</title>
</head>
<body>
<div id="container">
<ul>
<li><a href="<?php echo site_url('home/');?>">home</a></li>
<li><a href="<?php echo site_url('now_playing/');?>">now playing</a></li>
<li><a href="<?php echo site_url('coming_soon/');?>">coming soon</a></li>
<li><a href="<?php echo site_url('contact_us/');?>">contact us</a></li>
</ul>
<?php foreach ($now_playing as $film) { ?>
<a href="<?php echo site_url('now_playing/details/'.$film->id_film.'/');?>"><?php echo $film->judul; ?></a>
<br>
<?php } ?>
</div>
</body>
</html>