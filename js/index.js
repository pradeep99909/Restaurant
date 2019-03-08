


function book()
{
  var a=document.getElementById('boo');
  a.style.display="flex";

  
}
function oclose()
{
  var a=document.getElementById('boo');
  a.style.display="none";
  
}



function check_b(){
  console.log('hj');
}


const loading = () =>{
  document.getElementById('loader').style.display='none';
};

window.addEventListener("load",loading,true);



const da = () => {
  alert('hello');
};

const book_table = () => {
  const http=new XMLHttpRequest();

  http.onreadystatechange= function(){
    if(http.status==200){
      alert(http.responseText);
    }
  }
  http.open('post','booktable.php',false);
  http.send();
};



/*for Order food*/

var id=0;



function add(value,price){


var orderarea=document.getElementById('orderarea');
  
  var takeorder=document.getElementById('takeorder');

  var list=document.getElementById("list_"+value);

  console.log("list_"+value);
  list.onclick=null;


  add_in_array(value,price);
  orderarea.innerHTML="";
  for(let num=0;num<order.length;num++){
    
    
    orderarea.innerHTML+="<div id='orderlist'><div id='orderlistone'><p>"+order[num].name+"</p><p id='price_"+order[num].name+"'>Rs."+order[num].price * order[num].quantity+"</p></div><div id='orderlistone'><p>Quantity:<input value='"+order[num].quantity+"' type='number' onchange=chang('" + encodeURIComponent(order[num].name) + "') id='count_"+order[num].name+"' value=1 max=20 min=1></p><i class='material-icons' onclick=d('" + encodeURIComponent(order[num].name) + "','"+order[num].price+"')>delete</i></div></div>";
    
  
  }
  

  /*total calculation*/
  var t=0;
  var total=document.getElementById('total');
  for(let n=0;n<order.length;n++){
    m=order[n].quantity * order[n].price;
    t=t+m;
  }
  total.innerHTML="Total Rs."+t;

  

  
}

var order=[];

const add_in_array=(value,price) => {
  for(let xo=0;xo<order.length;xo++){
    if(order[xo].name!==value){
      order.push({'name':value,'price':price,'quantity':1});
      console.log(order);
      return order;
    }
  }
  //order.push({'name':value,'price':price,'quantity':1});

};



const d = (value,price) => {

  var elem=document.createElement('div');

var orderarea=document.getElementById('orderarea');
  for(let num1=0;num1<order.length;num1++){
    if(order[num1].name===decodeURIComponent(value)){
      order.splice(num1,1);
      
    }
    

  }

  

  orderarea.innerHTML=null;

  for(let num2=0;num2<order.length;num2++){
    
    
    orderarea.innerHTML=orderarea.innerHTML+"<div id='orderlist'><div id='orderlistone'><p>"+order[num2].name+"</p><p id='price_"+order[num2].name+"'>Rs."+order[num2].price * order[num2].quantity+"</p></div><div id='orderlistone'><p><input type='number' value='"+order[num2].quantity+"' onchange=chang('" + encodeURIComponent(order[num2].name) + "') id='count_"+order[num2].name+"' value=1 max=20 min=1></p><i class='material-icons' onclick=d('" + encodeURIComponent(order[num2].name) + "','"+order[num2].price+"')>delete</i></div></div>";
    
  
  }


  var list=document.getElementById("list_"+decodeURIComponent(value));

  list.addEventListener('click',() => { add(decodeURIComponent(value),price); });


  /*total calculation*/
  var t=0;
  var total=document.getElementById('total');
  for(let n=0;n<order.length;n++){
    m=order[n].quantity * order[n].price;
    t=t+m;
  }
  total.innerHTML="Total Rs."+t;

}


const chang = (value) => {
  
  
  /* change Quantity and change price of food*/
  for(let num=0;num<order.length;num++){
    if(order[num].name===decodeURIComponent(value)){
      order[num].quantity=document.getElementById("count_"+decodeURIComponent(value)).value;
      var price=document.getElementById("price_"+decodeURIComponent(value));
      price.innerHTML="Rs."+order[num].price*order[num].quantity;
    }
  }


  /*total calculation*/
  var t=0;
  var total=document.getElementById('total');
  for(let n=0;n<order.length;n++){
    m=order[n].quantity * order[n].price;
    t=t+m;
  }
  total.innerHTML="Total Rs."+t;
}


const lo = (value) =>{
  alert(value);
}
