<?php


function food(){
  $conn=mysqli_connect("localhost","root","","test");
  $string="SELECT * from food group by food";

  $query=mysqli_query($conn,$string);

$i=0;

  while($result=mysqli_fetch_array($query)){

    $i=$i+1;
    echo "
      <li onclick=fetch(this) value='".$result['food']."'>".$result['food']."</li>
    ";
  }
}


function name(){
  
$conn=mysqli_connect("localhost","root","","test");
    

$string="SELECT * from food where food='Biryani'";

    $query=mysqli_query($conn,$string);


    echo "
    <h2>Items</h2>
    <h3>Biryani</h3>";
    while($row=mysqli_fetch_array($query)){
      echo 
      "
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
}


?>
<!DOCTYPE html>
  <html>
  <head>
    <title>Restaurant</title>
    <meta name='viewport' content="width=device-width" />
    <link rel="stylesheet" href="css/style.css" >
    <style>
      
        @import url('https://fonts.googleapis.com/css?family=Kaushan+Script');
    </style>
    <script  src="js/index.js"></script>
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <script>
          function fetch(str){
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
              if (this.status == 200) {
                  document.getElementById("item").innerHTML = this.responseText;
              }
          }
          xmlhttp.open("GET", "fetch_food.php?food=" + str.innerHTML, true);
          xmlhttp.send();
          }


      </script>
 </head>
 <body>
  <div id='loader'>
    <div id='circle'>
    </div>
  </div>
  <div id="all">
  <div id="slider">
  <div id="option">
    <ul>
      <li><a href=''>Home</a></li>
      <li><a href='#side'>Categories</a></li>
      <li><a href=''>Menu</a></li>
      <li><a href=''>Blog</a></li>
      <li><a href='#footer'>Contact</a></li>
    </ul>
  </div>
    <div id='img'>LOGO</div>
  
  
  <div id="head">
    <h1>ORDER ONLINE</h1>
  </div>
  
    </div>
  <div id="online">
    
       <div id="p" onClick="book()">Book A Table</div>
       <div id="p">Order Online</div>
    
  </div>
  <hr size=1 color="grey">
  <div id="blah">
   <div id="sym"><i class="material-icons">favorite</i><br><h3>Quality food</h3></div>
   <div id="sym"><i class="material-icons">local_shipping</i><br><h3>Fast Delivery</h3></div>
   <div id="sym"><i class="material-icons">restaurant</i><br><h3>No Junk Food</h3></div>
   </div>
  <div id='side'>
    <div id='side_1'>
      <div id='text'>
      <h1>Title</h1>
        <p>
        Lorem Ipsum is simply dummy text of the printing and typesetting 
        industry. Lorem Ipsum has been the industry's standard dummy text 
        ever since the 1500s, when an unknown printer took a galley of type 
        and scrambled it to make a type specimen book. It has survived not 
        only five centuries, but also the leap into electronic typesetting,
         remaining essentially unchanged. 
        </p>
      </div>
      <img src='images/food1.jpg'>
    </div>
    <div id='side_1'>
      <img src='images/food2.jpg'>
      <div id='text'>
      <h1>Title</h1>
        <p>
        Lorem Ipsum is simply dummy text of the printing and typesetting 
        industry. Lorem Ipsum has been the industry's standard dummy text 
        ever since the 1500s, when an unknown printer took a galley of type 
        and scrambled it to make a type specimen book. It has survived not 
        only five centuries, but also the leap into electronic typesetting,
         remaining essentially unchanged. 
        </p>
      </div>
    </div>
    <div id='side_1'>
      <div id='text'>
      <h1>Title</h1>
        <p>
        Lorem Ipsum is simply dummy text of the printing and typesetting 
        industry. Lorem Ipsum has been the industry's standard dummy text 
        ever since the 1500s, when an unknown printer took a galley of type 
        and scrambled it to make a type specimen book. It has survived not 
        only five centuries, but also the leap into electronic typesetting,
         remaining essentially unchanged. 
        </p>
      </div>
      <img src='images/food1.jpg'>
    </div>
    <div id='side_1'>
      <img src='images/food2.jpg'>
      <div id='text'>
        <h1>Title</h1>
        <p>
        Lorem Ipsum is simply dummy text of the printing and typesetting 
        industry. Lorem Ipsum has been the industry's standard dummy text 
        ever since the 1500s, when an unknown printer took a galley of type 
        and scrambled it to make a type specimen book. It has survived not 
        only five centuries, but also the leap into electronic typesetting,
         remaining essentially unchanged. 
        </p>
      </div>
    </div>
  </div>

  <div id="exp">
    
      <h5>About Us</h5>
      <h2>Tradition & Passion</h2>
      <br>
      <br>
      <button>Explore</button>
    

  </div>
  <div id="location">
    
      <h3>Our Location</h3>
    

    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1884.3805332872919!2d72.91950358276262!3d19.16193339820813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1502090204712" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>


  </div>
    
  <div id="footer">
    <div id="social">
      <h5>FACEBOOK</h5>
      <h5>TWITTER</h5>
      <h5>INSTAGRAM</h5>
      <h5>GOOGLE</h5>
      <h5>PINTEREST</h5>
      
    </div>
    <i class="material-icons" onClick="document.documentElement.scrollTop=0;">keyboard_arrow_up</i>
    <p>
      Andheri(W),Mumbai<br>
      India
    </p>
    <h4>Sarpine</h4>
  </div>
  
    <div id="boo">
      <div id="book">
        <div id='book1'>
          <h2>Book Table</h2>
        </div>
        <div id='book2'>
          <div id='book_close'>
            <i class='material-icons' onclick="oclose()">close</i>
          </div>
          <div id='book_form'>
            <h3>Details</h3>
            <form>
              <div id='book_input'>
                <input type='text' name='name' id='input_name' >
                <br>
                <label for='fname'>Name</label>
                <div id='mess_name' class='mess'></div>
              </div>

              <div id='book_input'>
                <input type='email' name='email' id='input_email'>
                <br>
                <label for='email'>Email</label>
                <div id='mess_email' class='mess'></div>
              </div>

              <div id='book_input'>
                <input type='tel' name='contact' id='input_contact' >
                <br>
                <label for='contact'>Phone Number</label>
                <div id='mess_contact' class='mess'></div>
              </div>

              <div id='book_input'>
                <input type='number' min=1 max=20 value=1 name='member' id='input_member' >
                <br>
                <label for='member'>No. of Members</label>
                <div id='mess_member' class='mess'></div>
              </div>

              <div id='book_input'>
                <input type='text' name='date' id='input_date' onchange='da()'>
                <br>
                <label for='date'>Date</label>
                <div id='mess_date' class='mess'></div>
              </div>

              <div id='book_input'>
                <input type='time' name='time' id='input_time' >
                <br>
                <label for='time'>Time</label>
                <div id='mess_time' class='mess'></div>
              </div>
              </form>
              <button name='book' id='book_submit' onclick='book_table()'>Book</button>
            
          </div>
        </div>
      </div>
    </div>

    <div id='message'>
      <div id='message_text'>
        Table Successfully Booked
      </div>
    </div>

    <div id='menu_main'>

      <div id="menu">
  <div id="food">
      <form action="index.php" method='post'>
        <ul>
            <?php
            food();
            ?>
        </ul>
      </form>
  </div>

  <div id="item">
    <?php name(); ?>
  </div>
  <div id="order">
    <h3>Your Orders:</h3>
    <div id="orderarea">
          
    </div>
    <div id='order_bottom'>
        <div id='total'>Total:</div>
        <button>Order</button>
    </div>
  </div>
</div>

</div>
</div>
 
    
  </body>
</html>
  
