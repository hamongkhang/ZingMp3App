<?php
     $hostname="localhost";
     $username="id17763764_appnhac_khang";
     $password="iRc]2{vO(dY6#Y8/";
     $databasename="id17763764_appnhac";
     $con = mysqli_connect($hostname,$username,$password,$databasename);
     
    $query = "SELECT DISTINCT * FROM album ORDER BY rand ( " . date('Ymd') . ") LIMIT 4";
    $dataalbum = mysqli_query($con,$query);
    
    class Album{
       function Album($idalbum, $tenalbum, $tencasialbum,$hinhalbum){
                $this -> IdAlbum =$idalbum;
                $this -> TenAlbum = $tenalbum;
                $this -> TencasiAlbum = $tencasialbum;
                $this -> HinhanhAlbum =$hinhalbum;
       }
     }
     $arrayalbum = array();
     while ($row = mysqli_fetch_assoc($dataalbum)) {
          array_push($arrayalbum, new Album($row['IdAlbum']
                                            ,$row['TenAlbum']
                                            ,$row['TenCaSiAlbum']
                                            ,$row['HinhAlbum']));
    }
    echo json_encode($arrayalbum);
?>