<?php
include 'tablebookL.php';
include 'reservedlabel.php';

 ?>
<!DOCTYPE html>
<html>
<head>
  <title>Dinning</title>
  <meta name="viewport" content="width=device-width , initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" type="text/css" href="jquery.datetimepicker.min.css">
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"> -->

  <style type="text/css">
    .body {
      background-image: url("img/f5.jpg");
      background-color: #cccccc;
      background-repeat: no-repeat;
      background-size: cover;
      color: white;
    }
    #h5 {
      background-color: #FFF0F5;
      text-align: center;
      text-shadow: #808080;
      color: black;
      margin-top: 50px;
    }
    #form {
      background: rgba(255, 255, 255, 0.2);
      color: #black;
      text-align: left;
      height: 380px;
      margin-left: 0px;
    }
    @media only screen and (min-width: 720px) {
      .container {
        width: 100%;
        margin-left: 300px;
      }
    }
     .dropbtn {
      background-color: white;
      color: black;
      padding: 7px;
      font-size: 16px;
      font-weight: bold;
      border: none;
      cursor: pointer;
    }

    .dropdown {
      position: relative;
      /* display: inline-block; */
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      /* box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2); */
      z-index: 1;
    }

    .dropdown-content a {
      color: black;
      padding: 5px 10px;
      text-decoration: none;
      display: block;
    }

    .dropdown-content a:hover {
      background-color: #f1f1f1
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }

    .dropdown:hover .dropbtn {
      /* background-color: #3e8e41; */
    }
    .label-count {
  /* position:inherit; */
  top: 2px;
  margin-left: 15px;
  /* margin-top: 20px; */
  right: 6px;
  font-weight: bold;
  font-size: 15px;
  line-height: 10px;
  background-color: #000;
  padding: 0 4px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  -ms-border-radius: 3px;
  border-radius: 3px; }  
  </style>
</head>

<body class="body">
  <nav class="navbar navbar-expand-md navbar-light bg-light navbar sticky-top">
    <a class="navbar-brand" href="home.php"><img src="./img/logo.png" width="50px" height="50px"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item"  style="padding-top:23px; ">
          <a class="nav-link" href="home.php">Home</a>
        </li>
        <li class="nav-item">
          <span class="label-count" style="color:white;"><?php echo $total; ?></span>

          <a class="nav-link" href="reserved.php">Reserved</a>
        </li>
        <li class="nav-item">
          <span class="label-count" style="color:white;"><?php echo $total1; ?></span>
          <a class="nav-link" href="bookings.php">Bookings</a>
        </li>
        <li class="nav-item dropdown" style="margin-top:23px;">
          <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
            Accomudation
          </a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="delux.php?key=dulex">Deluxe Room</a>
            <a class="dropdown-item" href="classic.php?key=classic">Classic Room</a>
            <a class="dropdown-item" href="standard.php?key=standard">Standared room</a>
          </div>
        </li>
        <li class="nav-item" style="padding-top:23px; background-color:#ad871c; border-radius:7px;">
          <a class="nav-link" href="tablebook.php">Dinning</a>
        </li>
        <!-- <li class="nav-item dropdown" style="margin-top:23px;">
          <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
            Dining
          </a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="rakaposhi.php">Rakaposhi</a>
            <a class="dropdown-item" href="zamana.php">Zamana</a>
            <a class="dropdown-item" href="dawat.php">Dawat</a>
          </div>
        </li> -->
        <li class="nav-item" style="margin-top:23px;">
          <a class="nav-link" href="gallery.php">Gallery</a>
        </li>
        <li class="nav-item" style="margin-top:23px;">
          <a class="nav-link" href="contact.php">Contact Us</a>
        </li>
        <li class="nav-item" style="margin-top:23px;">
          <a class="nav-link" href="about.php">About Us</a>
        </li>
      </ul>
      <div class="navbar-nav ml-auto" style="margin-top:23px;">
        <!-- <a href="home.php?logout='1'" class="nav-item nav-link">Logout</a> -->
        <div class="dropdown">
          <button class="dropbtn"><?php echo $_SESSION['email']; ?></button>
          <div class="dropdown-content">
            <a href="history.php">History</a>
            <a href="clientinfo.php">Settings</a>
            <a href="home.php?logout='1'">Logout</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
  <br>
  <div class="container">
    <div class="row">
      <div class="col-sm-8" id="h5">
        <br>
        <h3>BOOK A TABLE</h3>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-sm-4" id="form">
        <form method="post" action="tablebook.php">
          <br>
          <!-- <div class="form-group">
            <label> Restaurant</label>
            <select class="form-control" id="rest" name="restaurant" placeholder="Select" required="true">
              <option value="Rakaposhi">Rakaposhi</option>
              <option value="Zamana">Zamana</option>
              <option value="Dawat">Dawat</option>
            </select>
          </div> -->
          <!-- <div class="form-group">
            <div class="col s12 m3"></div>
            <div class="col s12 m6">
           <input type="text" name="" id="time" class="timepicker">
           </div>
          </div> -->
          <!-- <div class="form-group">
            <input type="text" id="picker" name="" class="form-control">
          </div> -->
          <div class="form-group">
            <label style="font-weight: bolder;color: black;">No of Persons</label>
            <select class="form-control" id="nooftable" name="nooftable" placeholder="Select" required="true">
              <!-- <option value=""></option> -->
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>
          </div>
          <div class="form-group">
            <label style="font-weight: bolder;color: black;"> Date</label>
            <input type="date" name="date" id="date" min="<?php echo date("Y-m-d"); ?>" max="<?php echo date('Y-m-d', strtotime(' + 6 day')); ?>" class="form-control" placeholder="date" required="true">
          </div>
          <div class="form-group">
          <label style="font-weight: bolder;color: black;"> Time</label>
          <input type="text" id="time" name="time" class="form-control" placeholder="12:00 PM" required="true">
        </div>
      </div>
      <div class="col-sm-4" id="form">
        <br>
        
        <div class="form-group">
          <label for="comments" style="font-weight: bolder;color: black;"> Comments</label>
          <textarea class="form-control" id="comment" name="comments" placeholder="message" rows="4"></textarea>
        </div>
        <br>
        <input type="button" name="booktable" class="bn2" onclick="getInputValue();" data-toggle="modal" data-target="#exampleModalScrollable" value="Book a table" style="width: 70%;margin-left:50px;"><br>
      </div>
      <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalScrollableTitle" style="color: black;">Confirm Your Detail</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <script type="text/javascript">
              function getInputValue(){
                // var restaurant = document.getElementById('rest').value;
                var nooftable = document.getElementById('nooftable').value;
                var date = document.getElementById('date').value;
                var time = document.getElementById('time').value;
               var comment = document.getElementById('comment').value;
               // document.getElementById('restauran').innerHTML=restaurant;
               document.getElementById('table').innerHTML=nooftable;
               document.getElementById('date1').innerHTML=date;
               document.getElementById('time1').innerHTML=time;
               document.getElementById('comment1').innerHTML=comment;
            }
              </script>
              <!-- <h6 style="color:gray">Check_In Date</h6>
              <h6 id="restauran">jjj</h6>
              <hr size="30"> -->
              <!-- <br> -->
              <h6 style="color:gray">Check_Out Date</h6>
              <h6 id="table" style="color: black;"></h6>
              <hr size="30">
              <!-- <br> -->
              <h6 style="color:gray">Children</h6>
              <h6 id="date1" style="color: black;"></h6>
              <hr size="30">
              <!-- <br> -->
              <h6 style="color:gray">Adult</h6>
              <h6 id="time1" style="color: black;"></h6>
              <hr size="30">
              <!-- <br> -->
              <h6 style="color:gray">Message</h6>
              <h6 id="comment1" style="color: black;"></h6>
              <hr size="30">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" name="booktable" class="btn btn-primary">Confirm Booking</button>
            </div>
          </div>
        </div>
      </div>
      </form>
    </div>
  </div>
 
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <script type="text/javascript">
      const timer=document.querySelector('.timepicker');
      M.Timepicker.init(timer,{

      })
    </script> -->
    <script type="text/javascript" src="jquery.datetimepicker.full.min.js"></script>
    <script type="text/javascript">
      $('#time').datetimepicker({
        timepicer:true,
        datepicker:false,
        format:'H:i',
        value:'09:45',
        hours12:false,
        step:15
      })
    </script>
</body>
</html>
