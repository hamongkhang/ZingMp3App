<?php
     $hostname="localhost";
$username="id17763764_appnhac_khang";
$password="iRc]2{vO(dY6#Y8/";
$databasename="id17763764_appnhac";
$con = mysqli_connect($hostname,$username,$password,$databasename);
$query = "SELECT DISTINCT * FROM `playlist` ORDER BY rand(".date('Ymd').") LIMIT 3";
class PlaylistToday{
function PlaylistToday($idplaylist,$ten,$hinh,$icon){
$this->IdPlaylist=$idplaylist;
$this->Ten=$ten;
$this->HinhPlaylist=$hinh;
$this->Icon=$icon;
}
}
$arrayplaylistfortoday=array();
$data=mysqli_query($con,$query);
while($row=mysqli_fetch_assoc($data)){
array_push($arrayplaylistfortoday, new PlaylistToday($row['IdPlaylist'],row['Ten'],row['Hinhnen'],row['Hinhicon']));
}
echo json_encode($arrayplaylistfortoday);
?>