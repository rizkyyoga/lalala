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

<a href="<?php echo site_url('home/');?>"> home </a>><a href="<?php echo site_url('now_playing/');?>"> now playing </a>>
<a href="<?php echo site_url('now_playing/details/'.$i->id_film.'/');?>"> <?php echo $i->judul; ?></a> > buy ticket
<h3><?php echo $i->judul;?> Ticket</h3>
<table>

<tr>
<td>jadwal</td>
<td>studio</td>
<td>kursi tersedia</td>
</tr>
<?php foreach($tayang as $j){?>
<tr>
<td><?php echo $j->waktu;?></td>
<td><?php echo $j->nama_studio; ?></td>
<td>
<select><?php  foreach($kursi as $k){
if($k->id_tayang==$j->id_tayang){
?>
  <option value="<?php echo $k->no_kursi; ?>"><?php echo $k->no_kursi; ?></option>
<?php
	}
} ?>
</select> </td>
</tr>
<?php } ?>
</table>
</div>
</body>
</html>