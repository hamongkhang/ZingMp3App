<?php
    $hostname="localhost";
$username="id17763764_appnhac_khang";
$password="iRc]2{vO(dY6#Y8/";
$databasename="id17763764_appnhac";
$con = mysqli_connect($hostname,$username,$password,$databasename);

    $query = "SELECT * FROM chude";
    $data =mysqli_query($con,$query);

class Chude{
function Chude($idchude,$tenchude,$hinhchude){
      $this->IdChuDe= $idchude;
$this->TenChuDe=$tenchude;
$this->HinhChuDe=$hinhchude;
}
}
$arraychude=array();
while ($row =mysqli_fetch_assoc($data)){
array_push($arraychude,new Chude($row['IdChuDe'],$row['TenChuDe'],$row['HinhChuDe']));
}
echo json_encode($arraychude)
?>