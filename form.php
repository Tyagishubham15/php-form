<?php session_start(); ?>

<DOCTYPE html>
<html lang="en">
<head>
  <title>Registration Form With jQuery Validation </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css">
</head>
<body>
    <section>
        <div class = "container">
            <div class = "col-md-6 col-md-offset-3">
                <?php
                  if(isset($_SESSION['status']))
                  {
                      echo $_SESSION['status'];
                      unset($_SESSION['status']);
                  }
                ?>
                <div class = "panel panel-primary">
                    <div class = "panel-heading text-center">
                        Registration
                    </div>
                    <div class = "panel-body">
                        <!-- <form id = "registration" class="la" onsubmit="return validation()"> -->
                            <form action="code.php" method="POST">
                            <div class="form-group">
                                <label>First Name</label>
                            <input type = "text"  class = "form-control" name = "fname" placeholder = "Enter the First Name"/>
                            <span class="text-danger"><?php if (isset($firstname_error)) echo $firstname_error; ?></span>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                            <input type = "text"  class = "form-control" name = "lname" placeholder = "Enter the Last Name"/>
                            </div>
                            <div class="from-group">
                                <label>Your Age </label>
                                <input type = "text"  class = "form-control" name = "age" placeholder = "Enter the Age"/>
                            </div>
                            <div class="form-group">
                                <label>Mobile Number</label>
                            <input type = "text"  class = "form-control" name = "mobile" placeholder = "Enter the Mobile Number"/>
                            </div>
                            <div class="form-group">
                                <label>Your Email</label>
                            <input type = "text"  class = "form-control" name = "email" placeholder = "Enter the Your Email"/>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                            <input type = "password"  class = "form-control" name = "password" placeholder = "Enter the Your Password" id = "password"/>
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                            <input type = "password"  class = "form-control" name = "confirm" placeholder = "Enter the your Confirm Password"/>
                            </div>
                            <div class="form-group">
                                <label>Gender</label>
                            <div class = "gender" >
                                <label class="radio-inline"><input type="radio" name="gender" value="Male" />Male</label>
                                <label class="radio-inline"><input type="radio" name="gender" value="Female" />Female</label>       
                            </div>
                            </div>
                            <div class="form-group">
                                <label>Hobbies</label>
                            <div class = "hobbies">
                                <label class="checkbox-inline"><input type="checkbox" name = "hobbies[]" value="Cricket">Cricket</label>
                                <label class="checkbox-inline"><input type="checkbox" name = "hobbies[]" value="Football">Football</label>
                                <label class="checkbox-inline"><input type="checkbox" name = "hobbies[]" value="Hockey">Hockey</label>
                                <label class="checkbox-inline"><input type="checkbox" name = "hobbies[]" value="Tennis">Tennis</label>
                            </div>
                            </div>
                            <div class="form-group">
                                <label>Country</label>
                            <select class = "form-control" name = "country">
                                <option value="0" selected="" disabled="">--SELECT--</option>
                                <option>India</option>
                                <option>Australia</option>
                                <option>Japan</option>
                                <option>China</option>
                                <option>South Africa</option>
                            </select>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                            <textarea  class = "form-control" name = "address" placeholder="Address"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Upload :</label>
                                <input type="file" name="file_uploading" id="filename" >
                            </div>
                            <button type = "submit" class = "btn btn-primary" name="register_btn">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="jquery.js"></script>  
</body>
</html>