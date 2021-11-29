<?php
     $hostname="localhost";
     $username="id17763764_appnhac_khang";
     $password="iRc]2{vO(dY6#Y8/";
     $databasename="id17763764_appnhac";
     $con = mysqli_connect($hostname,$username,$password,$databasename);
    $query = "SELECT * FROM playlist";
    $data = mysqli_query($con,$query);

    class Danhsachplaylist{
          function Danhsachplaylist($idplaylist,$ten,$hinhnen,$hinhicon){
              $this ->IdPlayList =$idplaylist;
              $this ->Ten = $ten;
              $this ->Hinh =$hinhnen;
              $this ->Icon = $hinhicon;
       }
     }
     $arrayplaylist = array();
     while ($row = mysqli_fetch_assoc($data)) {
          array_push($arrayplaylist, new Danhsachplaylist($row['IdPlayList']
                                            ,$row['Ten']
                                            ,$row['Hinhnen']
                                            ,$row['Hinhicon']));
    }
    echo json_encode($arrayplaylist);
?>