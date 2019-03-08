<?php

$conn=mysqli_connect("localhost","root","","test");
    

$string="SELECT * from food where food='".$_GET['food']."'";

    $query=mysqli_query($conn,$string);


    echo "
    <h2>Items</h2>
    <h3>".$_GET['food']."</h3>";
    while($row=mysqli_fetch_array($query)){
      echo "
      
      <div id='list_".$row['name']."' class='list' onClick=add(this.dataset.value,this.dataset.price) data-type='".$row['type']."' data-price=".$row['price']." data-value='".$row['name']."' id='".$row['name']."'>
        <div id='list-left'>
            <div id='name'>".$row['name']."</div>
            <div id='price1'>Rs.".$row['price']."</div>
            <div id='type' data-type='".$row['type']."'>".$row['type']."</div>
        </div>
        <div id='list-right'>
            <i class='material-icons'>add_circle</i>
        </div>
    </div>
      ";
    }

echo "";
?>