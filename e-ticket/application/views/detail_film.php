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
<?php foreach($film as $i){} ?>
<a href="<?php echo site_url('home/');?>">home</a>><a href="<?php echo site_url('now_playing/');?>">now playing</a>><?php echo $i->judul; ?>
<h3><?php echo $i->judul; ?></h3>
<p><?php echo $i->sinopsis;?></p>
<li><a href="<?php echo site_url('buy/ticket/'.$i->id_film.'/');?>">Buy Ticket</a></li>
<li><a href="<?php echo site_url('home/');?>">Watch Trailer</a></li>
<li><a href="<?php echo site_url('home/');?>">View Schedule</a></li>
</div>
</body>
</html>