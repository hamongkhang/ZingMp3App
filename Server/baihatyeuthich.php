<?php
     $hostname="localhost";
     $username="id17763764_appnhac_khang";
     $password="iRc]2{vO(dY6#Y8/";
     $databasename="id17763764_appnhac";
     $con = mysqli_connect($hostname,$username,$password,$databasename);

    class Baihat{
        function Baihat($idbaihat,$tenbaihat,$hinhbaihat,$casi,$linkbaihat,$luotthich){
            $this->Idbaihat = $idbaihat;
            $this->Tenbaihat = $tenbaihat;
            $this->Hinhbaihat = $hinhbaihat;
            $this->Casi = $casi;
            $this->Linkbaihat = $linkbaihat;
            $this->Luotthich = $luotthich;
        }
    }
    $arraycasi = array();
    $query = "SELECT * FROM baihat ORDER BY Luotthich DESC LIMIT 5";
    $data = mysqli_query($con,$query);
    while ($row = mysqli_fetch_assoc($data)){
        array_push($arraycasi, new Baihat($row['IdBaiHat'],$row['TenBaiHat'],$row['HinhBaiHat'],$row['CaSi'],$row['LinkBaiHat'],$row['Luotthich']));
    }
    echo json_encode($arraycasi);
?>