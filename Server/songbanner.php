<?php
    $hostname="localhost";
$username="id17763764_appnhac_khang";
$password="iRc]2{vO(dY6#Y8/";
$databasename="id17763764_appnhac";
$con = mysqli_connect($hostname,$username,$password,$databasename);
    $query = "SELECT quangcao.Id, quangcao.Hinhanh, quangcao.Noidung, quangcao.Idbaihat, baihat.TenBaiHat, baihat.HinhBaiHat FROM `baihat` INNER JOIN quangcao ON quangcao.Idbaihat =baihat.IdBaiHat WHERE quangcao.Idbaihat=baihat.IdBaiHat";
$data =mysqli_query($con,$query);
class Quangcao{
function Quangcao($idquangcao,$hinhanh,$noidung,$idbaihat,$tenbaihat,$hinhbaihat){
      $this->IdQuangCao= $idquangcao;
$this->Hinhanh=$hinhanh;
$this->Noidung=$noidung;
$this->IdBaiHat=$idbaihat;
$this->TenBaiHat=$tenbaihat;
$this->HinhBaiHat=$hinhbaihat; 
}
}
$mangquangcao=array();
while ($row =mysqli_fetch_assoc($data)){
array_push($mangquangcao,new Quangcao($row['Id'],$row['Hinhanh'],$row['Noidung'],$row['Idbaihat'],$row['TenBaiHat'],$row['HinhBaiHat']));
}
echo json_encode($mangquangcao);
?>