<?php
    $servername = "localhost";
    $user = "root";
    $password = "";
    $dbase = "sdp";
    //establish connection to mysql server
    $conn = mysqli_connect($servername,$user,$password,$dbase);

    session_start();
    
    if(isset($_GET['id'])){
        $id = $_GET['id'];
    }else{
        die('id not provided');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User - RADIANT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Capriola' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Bakbak One' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Source Sans Pro' rel='stylesheet'>
    <link rel="icon" type="image/x-icon" href="images/android-icon-36x36.png">
    <style>
      h1.a {
      font-family: "Capriola", sans-serif;
      color: #e6b800;
      font-size: 25px;
      }

      .content {
      max-width: 1300px;
      margin: auto;
      padding: 10px;
      }
      label{
        font-weight: bold;
      }
    </style>
</head>
<body>
    <div style="max-width: 1300px; margin: auto; padding: 10px;">
    <!-- Header -->
    <div class="container">
      <a class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none" width="auto" height="auto">
        <svg class="bi me-2" width="40" height="32"><img onclick="location.href='index.php'" src="images/radiant_bg.png" style="border-radius: 10%;" alt="Logo" width="55" height="80"></svg>
        <h1 class="fs-4; a" onclick="location.href='index.php'"style="margin: 10px;font-weight: bold;">&nbsp;&nbsp;&nbsp;RADIANT<br>&nbsp;Club & Society</h1> 
      </a>
    </div>
    </div>
    
    <!--Profile-->
    <div class="container rounded bg-white mt-5 mb-5 content" style="font-family: Source Sans Pro,san-serif;">
    <div class="row d-flex justify-content-center" style="width: 1300px; ">
        <div class=" border-right">
            <div class="d-flex flex-column align-items-center text-center ">                
            <span class="font-weight-bold" style="font-size: 1.3rem;">
            </span>
            </div>
            </div>
            <?php   
                $sql_query = "SELECT * FROM students WHERE sid = $id";
                $result = mysqli_query($conn, $sql_query);
                while ($row = mysqli_fetch_array($result)) {
            
            ?>
            
        <div class="col-md-6 border-right"> 
            <div class="">
            <form action="./cusermodify.php?id=<?= $id ?>" method="POST" onSubmit="return validate();">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right" style="font-size:2.5rem"><b>Member Profile - Assign Role</b></h4>
                </div>
                <div class="row mt-2">
                  <div class="col-md-6">
                      <label class="labels">User ID</label>
                      <input type="text" name="idnum" class="form-control" placeholder="" readonly value="<?= $row["sid"]?>">
                  </div>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6">  
                        <label class="labels">Username</label>
                        <input type="text" name="username" class="form-control" readonly placeholder="" value="<?= $row["username"]?>" >
                    </div>
                    <div class="col-md-6">  
                        <label class="labels"></label>
                    </div>
                    <div class="col-md-6">
                        <label class="labels">First Name</label>
                        <input type="text" name="fname" class="form-control" readonly placeholder="" value="<?= $row["Fname"]?>">
                    </div>
                    <div class="col-md-6">  
                        <label class="labels">Last Name</label>
                        <input type="text" name="lname" class="form-control" readonly placeholder="" value="<?= $row["Lname"]?>" >
                    </div>

                    <div class="col-md-6">  
                        <label class="labels">Student ID</label>
                        <input type="text" name="studentid" class="form-control" readonly placeholder="" value="<?= $row["studentid"]?>" >
                    </div>
                    <div class="col-md-6">  
                        <label class="labels">Intake</label>
                        <input type="text" name="intake" class="form-control" readonly placeholder="" value="<?= $row["intake"]?>" >
                    </div>
                    <div class="col-md-6">
                        <label class="labels">Contact Info</label>
                        <input type="text" name="contact" class="form-control" readonly value="<?= $row["mobile_num"]?>">
                    </div>
                    <div class="col-md-6">
                        <label class="labels">Email</label>
                        <input type="text" name="email" class="form-control" readonly value="<?= $row["email"]?>">
                    </div>
                    <div class="col-md-6">  
                        <label class="labels">IC / Passport</label>
                        <input type="text" name="ic_passport" class="form-control" readonly placeholder="" readonly value="<?= $row["ic_passport"]?>" >
                    </div>

                    <div class="col-md-6">  
                        <label class="labels">Gender</label>
                        <input type="text" name="gender" class="form-control" readonly placeholder=""  value="<?= $row["gender"]?>" >
                    </div>
                
                    <div class="col-md-6">
                        <label class="labels">Birthday</label>
                        <input type="date" name="birthday" class="form-control" readonly readonly value="<?= $row["birth_date"]?>">
                    </div>
                    <div class="col-md-6">
                        <label class="labels">Country</label>
                        <input type="text" name="Country" class="form-control" readonly readonly value="<?= $row["country"]?>">
                    </div>
                
                    <div class="col-md-6">
                        <label class="labels">Club ID</label>
                        <input type="text" name="clubid" class="form-control" readonly value="<?= $row["clubid"]?>">
                        <?php 
                        $cid = $row["clubid"];
                        $query = mysqli_query(
                            $conn,"SELECT * FROM clubs WHERE cid = $cid");
                        $res = mysqli_fetch_array($query);
                        $clubname = $res['cname'];
                        echo "<input type='text' name='club' class='form-control' placeholder='' readonly value='$clubname' >";

                         ?>
                    </div>
                    <div class="col-md-6">  
                        <label class="labels">Role</label>
                        <br>
                        <select type="text" class="form-control" id="role" name="role" value="<?= $row["role"]?>">
                            <option value="Committee">Committee</option>
                            <option value="Organizer">Organizer</option>
                            <option value="Students">Students</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                    <br>
                    <input type="submit" value="Submit" class="btn btn-warning" ></button>
                    </div>
                    <div class="col-md-2">
                            <br>
                            <input type="button" class="btn btn-info" value="Go back" onclick="history.back()">
                        </div>
                </div>
    </div>
                <?php
        }
        ?>
            </form>
            </div>
        </div>
        <br><br>

    <!--Footer-->
    <div class="container">
      <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <p class="col-md-4 mb-0 text-muted">© 2022 Radiant Club & Society, Inc</p>

        <a class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
          <img src="images/radiant.png" style="border-radius: 10%;" alt="Logo" width="55" height="55">
        </a>

        <ul class="nav col-md-4 justify-content-end">
          <li class="nav-item"><a href="index.php" class="nav-link px-2 text-muted">Home</a></li>
          <li class="nav-item"><a href="about.php" class="nav-link px-2 text-muted">About Us</a></li>
          <li class="nav-item"><a href="clubs.php?id=" class="nav-link px-2 text-muted">Club & Society</a></li>
          <li class="nav-item"><a href="events.php" class="nav-link px-2 text-muted">Events</a></li>
          <li class="nav-item"><a href="contact.php" class="nav-link px-2 text-muted">Contact Us</a></li>
        </ul>
      </footer>
    </div>
</body>
</html>