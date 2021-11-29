<?php
    $hostname="localhost";
$username="id17763764_appnhac_khang";
$password="iRc]2{vO(dY6#Y8/";
$databasename="id17763764_appnhac";
$con = mysqli_connect($hostname,$username,$password,$databasename);

class Theloai{
function Theloai($idtheloai,$Idchude,$tentheloai,$hinhtheloai){
            $this->IdTheLoai=$idtheloai;
            $this->IdKeyChuDe=$Idchude;
            $this->TenTheLoai=$tentheloai;
            $this->HinhTheLoai=$hinhtheloai;
}
}
$arraytheloai=array();
$idchude=$_POST['idchude'];
$query="SELECT * FROM theloai WHERE IdChuDe ='$idchude'";
$data =mysqli_query($con,$query);
while($row=mysqli_fetch_assoc($data)){
array_push($arraytheloai,new Theloai(
$row['IdTheLoai'],
$row['IdChuDe'],
$row['TenTheLoai'],
$row['HinhTheLoai']
));
}
echo json_encode($arraytheloai);
?>