<table width="100%" cellspacing=5>
<style type="text/css">
<!--

body {
	background-image: url(images/background.gif);
	background-repeat: repeat-y;
	background-position: center;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	
	background: url(images/rumahsakit.jpg) no-repeat fixed;
   -webkit-background-size: 100% 100%;
   -moz-background-size: 100% 100%;
   -o-background-size: 100% 100%;
   background-size: 100% 100%;
}

.style1 {
	font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style4 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; }
.style5 {font-size: 12px}
.style7 {font-family: Arial, Helvetica, sans-serif}
.style13 {font-family: Arial, Helvetica, sans-serif; font-size: 12px; }
.style14 {font-size: 14px}
.style22 {color: #FFFF00}
.style23 {font-size: 14px; color: #FFFF00; }



-->
</style>
<?php
include "config/koneksi.php";
include "config/fungsi_indotgl.php";
include "config/library.php";
include "config/class_paging.php";





// Bagian Home
if ($_GET[module]=='home'){
 // echo "<tr><td align=center><img src=images/welcome.jpg><br><br></td></tr>";
  
  // Tampilkan 3 berita terbaru
  
 echo" <!doctype html>
<html amp='amp' lang='en'>
<head>
  <meta charset='utf-8'>
  <link rel='canonical' href='/example/amp/amp-element/amp-youtube.html' />
  <title>amp-youtube demo example - apacara.com</title>
  <meta name='author' content='Halwa RF, Fadlullah Fadul' />
  <link rel='publisher' href='https://plus.google.com/+HalwaRF' />
  <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
  <style amp-custom></style>
  <script async src='https://cdn.ampproject.org/v0.js'></script>
  <script async custom-element='amp-youtube' src='https://cdn.ampproject.org/v0/amp-youtube-0.1.js'></script>
</head>
<body>
  <amp-youtube autoplay
	width='240'
    height='135'
    layout='responsive'
    data-videoid='BeNnavor4FE'>
  </amp-youtube>
  
</body>";

 
  
  echo "<br><tr><td class=judul_head>&#187; Berita Terkini</td></tr>";
 	$terkini= mysql_query("SELECT * FROM berita,user 
                          WHERE user.id_user=berita.id_user 
                          ORDER BY id_berita DESC LIMIT 3");		 
	while($t=mysql_fetch_array($terkini)){
		$tgl = tgl_indo($t[tanggal]);
		echo "<tr><td class=isi_kecil>$t[hari], $tgl</td></tr>";
		echo "<tr><td class=judul><a href=?module=detailberita&id=$t[id_berita]>$t[judul]</a></td></tr>";
		echo "<tr><td class=isi_kecil>Ditulis Oleh : $t[nama_lengkap]</td></tr>";
    echo "<tr><td class=isi>";
 		if ($t[gambar]!=''){
			echo "<img src='admin/foto_berita/$t[gambar]' width=150 height=120 hspace=10 border=0 align=left>";
		}
    $kalimat=strtok(nl2br($t[isi_berita])," ");
    for ($i=1;$i<=50;$i++){
      echo ($kalimat);
      echo (" "); // Spasi antar kalimat
      $kalimat=strtok(" "); // Potong per kalimat
    } 
    echo " ... <a href=?module=detailberita&id=$t[id_berita]>Selengkapnya</a>
          <br><br><hr color=white></td></tr>";
			}
  
  // Tampilkan 5 berita sebelumnya
  echo "<tr><td><img src=images/berita_sebelumnya.jpg></td></tr>";
  $sebelum=mysql_query("SELECT * FROM berita 
                        ORDER BY id_berita DESC LIMIT 3,5");		 
	while($s=mysql_fetch_array($sebelum)){
	   echo "<tr><td class=isi>&bull; &nbsp; &nbsp; 
          <a href=?module=detailberita&id=$s[id_berita]>$s[judul]</a></td></tr>";
	}
  echo "<tr><td align=right><a href=?module=berita>
        <img src=images/arsip_berita.jpg border=0></a></td></tr>";

  // Tampilkan 3 agenda dan 3 pengumuman terbaru
  echo "<tr><td>
        <table width=100%>
        <tr>
          <td><img src=images/agenda.jpg></td>
          <td><img src=images/pengumuman.jpg></td>
        </tr>
        <tr valign=top>
          <td>";
        
 	$agenda=mysql_query("SELECT * FROM agenda 
                      ORDER BY id_agenda DESC LIMIT 3");		 
	while($a=mysql_fetch_array($agenda)){
    $mulai  =tgl_indo($a[tgl_mulai]);
    $selesai=tgl_indo($a[tgl_selesai]);
	 	echo "<div class=isi_kecil>$mulai - $selesai </div>
          <div class=isi><a href=?module=detailagenda&id=$a[id_agenda]>$a[tema]</a></div>
          <hr color=white>";
			}
  
  echo "</td>
        <td>";
 	
  $umum=mysql_query("SELECT * FROM pengumuman 
                    ORDER BY id_pengumuman DESC LIMIT 3");		 
	while($u=mysql_fetch_array($umum)){
    $tgl=tgl_indo($u[tanggal]);
	 	echo "<div class=isi_kecil>$tgl </div>
          <div class=isi><a href=?module=detailpengumuman&id=$u[id_pengumuman]>$u[judul]</a></div>
         <hr color=white>";
			}

  echo "</td></tr></table>
        </td></tr>";

}


// Detail Berita
elseif ($_GET[module]=='detailberita'){
	$detail=mysql_query("SELECT * FROM berita,user 
                      WHERE user.id_user=berita.id_user 
                      AND id_berita='$_GET[id]'");
	$d   = mysql_fetch_array($detail);
	$tgl = tgl_indo($d[tanggal]);
	echo "<tr><td class=isi_kecil>$d[hari], $tgl</td></tr>";
	echo "<tr><td class=judul>$d[judul]</td></tr>";
	echo "<tr><td class=isi_kecil>Ditulis Oleh : $d[nama_lengkap]</td></tr>";
  echo "<tr><td class=isi>";
 	if ($d[gambar]!=''){
		echo "<img src='admin/foto_berita/$d[gambar]' hspace=10 border=0 align=left>";
	}
 	$isi_berita=nl2br($d[isi_berita]);
	echo "$isi_berita</td></tr>";	 		  
	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  

  // Apabila berita dibuka, maka tambahkan counternya
  mysql_query("UPDATE berita SET counter=$d[counter]+1 
              WHERE id_berita='$_GET[id]'");
}


// Bagian Berita
elseif ($_GET[module]=='berita'){
   echo "<tr><td class=judul_head>&#187; Berita</td></tr>";
      
  $p      = new Paging;
  $batas  = 8;
  $posisi = $p->cariPosisi($batas);

 	$sql   = "SELECT * FROM berita,user 
           WHERE user.id_user=berita.id_user 
           ORDER BY id_berita DESC LIMIT $posisi,$batas";		 
	$hasil = mysql_query($sql);
	
  while($r=mysql_fetch_array($hasil)){
	 $tgl = tgl_indo($r[tanggal]);
	 echo "<tr><td class=isi_kecil>$r[hari], $tgl</td></tr>";
	 echo "<tr><td class=judul><a href=$_SERVER[PHP_SELF]?module=detailberita&id=$r[id_berita]>$r[judul]</a></td></tr>";
	 echo "<tr><td class=isi>";
   $kalimat=strtok(nl2br($r[isi_berita])," ");
   for ($i=1;$i<=50;$i++){
    echo ($kalimat);
    echo (" "); // Spasi antar kalimat
    $kalimat=strtok(" "); // Potong per kalimat
   } 
   echo " ... <a href=$_SERVER[PHP_SELF]?module=detailberita&id=$r[id_berita]>Selengkapnya</a><br><br>
          <hr color=white></td></tr>";
      
	}

  $jmldata     = mysql_num_rows(mysql_query("SELECT * FROM berita"));
  $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
  $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

  echo "<tr><td class=kembali>$linkHalaman</td></tr>";
}


// Bagian Agenda
elseif ($_GET[module]=='agenda'){
   echo "<tr><td class=judul_head>&#187; Agenda</td></tr>";
      
  $p      = new Paging;
  $batas  = 10;
  $posisi = $p->cariPosisi($batas);

 	$sql   = "SELECT * FROM agenda,user  
           WHERE user.id_user=agenda.id_user 
           ORDER BY id_agenda DESC LIMIT $posisi,$batas";		 
	$hasil = mysql_query($sql);
	
  while($r=mysql_fetch_array($hasil)){
	 $tgl_mulai   = tgl_indo($r[tgl_mulai]);
	 $tgl_selesai = tgl_indo($r[tgl_selesai]);
   $isi_agenda=nl2br($r[isi_agenda]);
	
	 echo "<tr><td class=isi_kecil>$tgl_mulai s/d $tgl_selesai</td></tr>";
	 echo "<tr><td class=judul>$r[tema]</td></tr>";
	 echo "<tr><td class=isi><b>Topik</b>    : $isi_agenda</td></tr>";
 	 echo "<tr><td class=isi><b>Tempat</b>   : $r[tempat]</td></tr>";
 	 echo "<tr><td class=isi><b>Pengirim</b> : $r[nama_lengkap]<hr color=white></td></tr>";
	}

  $jmldata     = mysql_num_rows(mysql_query("SELECT * FROM agenda"));
  $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
  $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

  echo "<tr><td class=kembali>$linkHalaman</td></tr>";
}


// Detail Agenda
elseif ($_GET[module]=='detailagenda'){
	$detail=mysql_query("SELECT * FROM agenda,user 
                      WHERE user.id_user=agenda.id_user 
                      AND id_agenda='$_GET[id]'");
	$d   = mysql_fetch_array($detail);
  $tgl_mulai   = tgl_indo($d[tgl_mulai]);
  $tgl_selesai = tgl_indo($d[tgl_selesai]);
  $isi_agenda=nl2br($d[isi_agenda]);
	
  echo "<tr><td class=isi_kecil>$tgl_mulai s/d $tgl_selesai</td></tr>";
  echo "<tr><td class=judul>$d[tema]</td></tr>";
	echo "<tr><td class=isi><b>Topik</b>    : $isi_agenda</td></tr>";
 	echo "<tr><td class=isi><b>Tempat</b>   : $d[tempat]</td></tr>";
 	echo "<tr><td class=isi><b>Pengirim</b> : $d[nama_lengkap]<hr color=white></td></tr>";

	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  
}


// Bagian Pengumuman
elseif ($_GET[module]=='pengumuman'){
   echo "<tr><td class=judul_head>&#187; Pengumuman</td></tr>";
      
  $p      = new Paging;
  $batas  = 10;
  $posisi = $p->cariPosisi($batas);

 	$sql   = "SELECT * FROM pengumuman,user  
           WHERE user.id_user=pengumuman.id_user 
           ORDER BY id_pengumuman DESC LIMIT $posisi,$batas";		 
	$hasil = mysql_query($sql);
	
  while($r=mysql_fetch_array($hasil)){
	 $tgl         = tgl_indo($r[tanggal]);
   $isi         = nl2br($r[isi]);
	
	 echo "<tr><td class=isi_kecil>$tgl</td></tr>";
	 echo "<tr><td class=judul>$r[judul]</td></tr>";
	 echo "<tr><td class=isi>$isi</td></tr>";
 	 echo "<tr><td class=isi><b>Pengirim</b> : $r[nama_lengkap]<hr color=white></td></tr>";
	}

  $jmldata     = mysql_num_rows(mysql_query("SELECT * FROM pengumuman"));
  $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
  $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

  echo "<tr><td class=kembali>$linkHalaman</td></tr>";
}


// Detail Pengumuman
elseif ($_GET[module]=='detailpengumuman'){
	$detail=mysql_query("SELECT * FROM pengumuman,user 
                      WHERE user.id_user=pengumuman.id_user 
                      AND id_pengumuman='$_GET[id]'");
	$d   = mysql_fetch_array($detail);
  $tgl         = tgl_indo($d[tanggal]);
  $isi         = nl2br($d[isi]);
	
  echo "<tr><td class=isi_kecil>$tgl</td></tr>";
  echo "<tr><td class=judul>$d[judul]</td></tr>";
 	if ($d[gambar]!=''){
		echo "<img src='admin/foto_pengumuman/$d[gambar]' hspace=10 border=0 align=left>";
	}
  
	echo "<tr><td class=isi>$isi</td></tr>";
 	echo "<tr><td class=isi>
	<b>Pengirim</b> : $d[nama_lengkap]<hr color=white></td></tr>";

	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  
}


// Bagian Hubungi Kami
elseif ($_GET[module]=='hubungi'){
  echo "<tr><td class=judul_head>&#187; Hubungi Kami</td></tr>";

  echo "<tr><td class=isi>Silahkan hubungi kami secara online:</td></tr>";  

  echo "<form method=POST action='?module=kirimemail'>  
        <tr><td class=isi>Nama   : <input type=text name=nama size=35></td></tr>
        <tr><td class=isi>E-mail : <input type=text name=email size=35></td></tr>
        <tr><td class=isi>Subjek: <input type=text name=subjek size=50></td></tr>
        <tr><td class=isi>Pesan  : <br><textarea name=pesan rows=13 cols=70></textarea></td></tr>
        <tr><td><input type=submit value=Kirim></td></tr>
        </form>";

	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  
}


// Bagian Kirim Email
elseif ($_GET[module]=='kirimemail'){
  mysql_query("INSERT INTO hubungi(nama,
                                   email,
                                   subjek,
                                   pesan,
                                   tanggal) 
                        VALUES('$_POST[nama]',
                               '$_POST[email]',
                               '$_POST[subjek]',
                               '$_POST[pesan]',
                               '$tgl_sekarang')");

  echo "<tr><td class=judul_head>&#187; Status Email</td></tr>
        <tr><td class=isi>Email telah sukses terkirim dan segera akan kami balas</td></tr>
        <tr><td class=kembali><br>
        [ <a href=index.php>Kembali</a> ]</td></tr>";	 		  
}


// Bagian Profil
elseif ($_GET[module]=='profil'){
   echo "<tr><td class=judul_head>&#187; Profil RSUD Yowari</td></tr>";

	$profil = mysql_query("SELECT * FROM modul WHERE id_modul='11'");
	$r      = mysql_fetch_array($profil);

  echo "<tr><td class=isi>";
  if ($r[gambar]!=''){
		echo "<br><img src='admin/foto_berita/$r[gambar]' hspace=10 border=0 align=left>";
	}
	$isi_profil=nl2br($r[static_content]);
	echo"<br><br>";
	echo"<br><br>";
	echo"<br><br>";
	echo"<br>";
  echo "$isi_profil</td></tr>";  

	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  
}


// Bagian Fasilitas Pelayanan
elseif ($_GET[module]=='fasilitas'){
   echo "<tr><td class=judul_head>&#187; Fasilitas Pelayanan</td></tr>";

	$fasilitas = mysql_query("SELECT * FROM modul WHERE id_modul='27'");
	$r      = mysql_fetch_array($fasilitas);

  echo "<tr><td class=isi>";
  if ($r[gambar]!=''){
		echo "<img src='admin/foto_berita/$r[gambar]' hspace=10 border=0 align=left>";
	}
	$fasilitas_pel=nl2br($r[static_content]);
  echo "$fasilitas_pel</td></tr>";  

	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  
}

// Bagian Standar Pelayanan
elseif ($_GET[module]=='standar'){
   echo "<tr><td class=judul_head>&#187; Standar Pelayanan RSUD YOWARI SENTANI KABUPATEN JAYAPURA</td></tr>";

	$standar = mysql_query("SELECT * FROM modul WHERE id_modul='28'");
	$r      = mysql_fetch_array($standar);

  echo "<tr><td class=isi>";
  if ($r[gambar]!=''){
		echo "<img src='admin/foto_berita/$r[gambar]' hspace=10 border=0 align=left>";
	}
	$standar_pel=nl2br($r[static_content]);
  echo "$standar_pel</td></tr>";  

	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  
}


// Bagian Tempat Tidur
elseif ($_GET[module]=='tempattidur'){
	
?>

<style type="text/css">
<!--
.style1 {
	font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style14 {font-size: 14px}
.style22 {color: #FFFF00}
.style24 {
	font-size: 14px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style25 {font-family: Arial, Helvetica, sans-serif}
.style26 {font-family: Arial, Helvetica, sans-serif; font-size: 14px; }
-->
</style>
<p class="style1"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbspINFORMASI KAPASITAS TEMPAT TIDUR RSUD YOWARI SENTANI </p>
<table cellspacing="0" cellpadding="0">
  <tr>
    <td width="31" height="33"></td>
    <td width="204" bgcolor="#0000FF" class="xl71 style22"><div align="center" class="style24">NAMA RUANG </div></td>
    <td width="140" bgcolor="#0000FF" class="xl71 style22"><div align="center" class="style14 style25"><strong>KELAS </strong></div></td>
    <td width="160" bgcolor="#0000FF" class="xl71 style22"><div align="center" class="style24">KAPASITAS </div></td>
  </tr>
  <tr>
    <td height="23"></td>
    <td height="23" class="xl65 style25 style14">RUANG YP KARAFIR </td>
    <td height="23" class="xl66"><div align="center" class="style26">VIP </div></td>
    <td height="23" class="xl66"><div align="center" class="style26">1 </div></td>
  </tr>
  <tr>
    <td height="25" class="xl65"></td>
    <td height="25" bgcolor="#FFFF00" class="xl67 style25 style14">RUANG BUPATI </td>
    <td height="25" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">KELAS I </div></td>
    <td height="25" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">12 </div></td>
  </tr>
  <tr>
    <td height="23" class="xl65"></td>
    <td height="23" class="xl69 style25 style14">RUANG CENDERAWASIH </td>
    <td height="23" class="xl70"><div align="center" class="style26">KELAS I </div></td>
    <td height="23" class="xl70"><div align="center" class="style26">10 </div></td>
  </tr>
  <tr>
    <td height="24" class="xl65"></td>
    <td height="24" bgcolor="#FFFF00" class="xl67 style25 style14">RUANG NURI </td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">KELAS II </div></td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">8 </div></td>
  </tr>
  <tr>
    <td height="25" class="xl65"></td>
    <td height="25" class="xl65 style25 style14">RUANG KANAK - KANAK </td>
    <td height="25" class="xl66"><div align="center" class="style26">KELAS II </div></td>
    <td height="25" class="xl66"><div align="center" class="style26">4 </div></td>
  </tr>
  <tr>
    <td height="24" class="xl65"></td>
    <td height="24" bgcolor="#FFFF00" class="xl67 style25 style14">RUANG BEDAH WANITA </td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">KELAS III </div></td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">8 </div></td>
  </tr>
  <tr>
    <td height="23" class="xl65"></td>
    <td height="23" class="xl65 style25 style14">RUANG BEDAH PRIA </td>
    <td height="23" class="xl66"><div align="center" class="style26">KELAS III </div></td>
    <td height="23" class="xl66"><div align="center" class="style26">8 </div></td>
  </tr>
  <tr>
    <td height="23" class="xl65"></td>
    <td height="23" bgcolor="#FFFF00" class="xl67 style25 style14">RUANG INTERNA WANITA </td>
    <td height="23" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">KELAS III </div></td>
    <td height="23" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">14 </div></td>
  </tr>
  <tr>
    <td height="24" class="xl65"></td>
    <td height="24" class="xl65 style25 style14">RUANG INTERNA PRIA </td>
    <td height="24" class="xl66"><div align="center" class="style26">KELAS III </div></td>
    <td height="24" class="xl66"><div align="center" class="style26">14 </div></td>
  </tr>
  <tr>
    <td height="24" class="xl65"></td>
    <td height="24" bgcolor="#FFFF00" class="xl67 style25 style14">RUANG PERINA </td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">NICU / PICU </div></td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">23</div></td>
  </tr>
  <tr>
    <td height="22" class="xl65"></td>
    <td height="22" class="xl65 style25 style14">RUANG NIFAS </td>
    <td height="22" class="xl66"><div align="center" class="style26">KELAS III </div></td>
    <td height="22" class="xl66"><div align="center" class="style26">8 </div></td>
  </tr>
  <tr>
    <td height="24" class="xl65"></td>
    <td height="24" bgcolor="#FFFF00" class="xl67 style25 style14">RUANG ICU</td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">ICU</div></td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">4</div></td>
  </tr>
  <tr>
    <td height="22" class="xl65"></td>
    <td height="25" class="xl65 style25 style14">RUANG KANAK - KANAK </td>
    <td height="25" class="xl66"><div align="center" class="style26">KELAS II </div></td>
    <td height="25" class="xl66"><div align="center" class="style26">4 </div></td>
  </tr>
  <tr>
    <td height="24" class="xl65"></td>
    <td height="24" bgcolor="#FFFF00" class="xl67 style25 style14">RUANG ISOLASI COVID </td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">ISOLASI</div></td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">10</div></td>
  </tr>
  <tr>
    <td height="22" class="xl65"></td>
    <td height="25" class="xl65 style25 style14">RUANG NIFAS </td>
    <td height="25" class="xl66"><div align="center" class="style26">KELAS III </div></td>
    <td height="25" class="xl66"><div align="center" class="style26">16</div></td>
  </tr>
  <tr>
    <td height="24" class="xl65"></td>
    <td height="24" bgcolor="#FFFF00" class="xl67 style25 style14">RUANG VK </td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">KELAS III </div></td>
    <td height="24" bgcolor="#FFFF00" class="xl68"><div align="center" class="style26">8</div></td>
  </tr>
  <tr>
    <td height="22" class="xl65"></td>
    <td height="25" class="xl65 style25 style14">RUANG PONEK</td>
    <td height="25" class="xl66"><div align="center" class="style26">KELAS III</div></td>
    <td height="25" class="xl66"><div align="center" class="style26">4</div></td>
  </tr>
</table>


<?





	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  
}

// Bagian VIDEO
elseif ($_GET[module]=='video'){
	
?>

<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style14 {font-size: 14px}
.style22 {color: #FFFF00}
.style24 {
	font-size: 14px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style25 {font-family: Arial, Helvetica, sans-serif}
.style26 {font-family: Arial, Helvetica, sans-serif; font-size: 14px; }
-->
</style>
</head>

<p class="style1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VIDEO YOWARI</p>
<table width="580" border="0">
  <tr>
    <th width="5" height="109" scope="col">&nbsp;</th>
    <th width="180" scope="col"><a href="https://www.youtube.com/watch?v=Peqq59wsoWo" target="_blank"><img src="images/vid_profil.jpg" width="176" height="136"></a></th>
    <th width="180" scope="col"><a href="https://www.youtube.com/watch?v=Pp6_f-_Q8oM" target="_blank"><img src="images/vid_etika_batuk.jpg" width="176" height="136"></a></th>
    <th width="180" scope="col"><a href="https://www.youtube.com/watch?v=-6ABcgSc_FQ" target="_blank"><img src="images/vid_6_langkah.jpg" width="176" height="136"></a></th>
  </tr>
  <tr>
    <th height="21" scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th height="128" scope="row">&nbsp;</th>
    <td><a href="https://www.youtube.com/watch?v=fKoqEGaaqWM" target="_blank"><img src="images/vid_apd_level1.jpg" width="176" height="136"></a></td>
    <td><a href="https://www.youtube.com/watch?v=O5Def_iczfc" target="_blank"><img src="images/vid_apd_level2.jpg" width="176" height="136"></a></td>
    <td><a href="https://www.youtube.com/watch?v=n1GhLJ-lK_c" target="_blank"><img src="images/vid_vaksin.jpg" width="176" height="136"></a></td>
  </tr>
  <tr>
    <th height="21" scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <th scope="row">&nbsp;</th>
    <td><a href="https://www.youtube.com/watch?v=EPom_zMuA0w" target="_blank"><img src="images/semarak77hutri.jpg" width="176" height="136"></a></td>
    <td><a href="https://www.youtube.com/watch?v=tBMDZBfEp2M" target="_blank"><img src="images/VISITASI.jpg" width="176" height="136"></a></td>
    <td><a href="https://www.youtube.com/watch?v=6vVE_Nwt2IM target="_blank"><img src="images/vid_pelayanan.jpg" width="176" height="136"></a></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <th height="21" scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <th height="21" scope="row">&nbsp;</th>
    <td><a href="https://youtu.be/nab5pPyvopM" target="_blank"><img src="images/vid_pengaduan.jpg" width="176" height="136"></a></td>
    <td><a href="https://youtu.be/wm0_qijC87I" target="_blank"><img src="images/vid_kunjungan.jpg" width="176" height="136"></a></td>
    <td><a href="https://youtu.be/wm0_qijC87I" target="_blank"><img src="images/vid_safety_briefing.jpg" width="176" height="136"></a></td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>


<?



	  
}





// Bagian Hasil Pencarian
elseif ($_GET[module]=='hasilcari'){
   echo "<tr><td class=judul_head>&#187; Hasil Pencarian</td></tr>";

  // Hanya mencari berita, apabila diperlukan bisa ditambahkan utk mencari agenda, pengumuman, dll
	$cari   = mysql_query("SELECT * FROM berita WHERE isi_berita LIKE '%$_POST[kata]%'");
	$jumlah = mysql_num_rows($cari);

  if ($jumlah > 0){
    echo "<tr><td class=isi>
          <br>Ditemukan <b>$jumlah</b> berita dengan kata <b>$_POST[kata]</b> : <ul>"; 
    
    while($r=mysql_fetch_array($cari)){
      echo "<li><a href=?module=detailberita&id=$r[id_berita]>$r[judul]</a></li>";
    }      
    echo "</ul></td></tr>";
  }
  else{
    echo "<tr><td class=judul>
          Tidak ditemukan berita dengan kata <b>$_POST[kata]</b></td></tr>";
  }

	echo "<tr><td class=kembali><br>
        [ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr>";	 		  
}


?>
</table>
