<?php
    $hostname="localhost";
$username="id17763764_appnhac_khang";
$password="iRc]2{vO(dY6#Y8/";
$databasename="id17763764_appnhac";
$con = mysqli_connect($hostname,$username,$password,$databasename);

$luotthich=$_POST['luotthich'];
$idbaihat=$_POST['idbaihat'];
$query="SELECT Luotthich FROM baihat WHERE IdBaiHat ='$idbaihat'";
$dataluotthich=mysqli_query($con,$query);
$row=mysqli_fetch_assoc($dataluotthich);
$tongluotthich=$row['Luotthich'];
if(isset($luotthich)){
$tongluotthich=$tongluotthich+$luotthich;
$querysum="UPDATE baihat SET Luotthich='$tongluotthich' WHERE IdBaiHat='$idbaihat'";
$dataupdate=mysqli_query($con,$querysum);
if($dataupdate){
echo "Success";
}else{
echo "Failed";
}
}
?>