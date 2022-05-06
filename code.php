<?php
session_start();
$conn =mysqli_connect("localhost", "root", "", "php_velidation_form" );


if(isset($_POST['register_btn']))
{
   $firstname =$_POST['fname'];
   $lasttname =$_POST['lname'];
   $age =$_POST['age'];
   $mobile_number =$_POST['mobile'];
   $email =$_POST['email'];
   $password =$_POST['password'];
   $confirm_password =$_POST['confirm'];
   $gender =$_POST['gender'];
//    $hobbies =$_POST['hobbies'];
   $hobbies = $_POST['hobbies'];
    $chk="";  
    foreach($hobbies as $chk1)  
       {  
          $chk.= $chk1.",";  
       } 


   $country =$_POST['country'];
   $address =$_POST['address'];
   $upload =$_POST['file_uploading'];

     if(empty($firstname) || empty($lasttname) || empty($age) || empty($mobile_number) || empty($email) || empty($password) || empty($confirm_password) || empty($gender) || empty($hobbies) || empty($country) || empty($address) || empty($upload))
     {
        $_SESSION['status'] = "All Field are Mandatory.! ";
        header("location: form.php");
     }
     else
     {
        if($password == $confirm_password)
        {
            $query ="INSERT INTO users (firstname,lastname,age,mobile_number,email,password,gender,hobbies,country,address,upload) 
            VALUES ('$firstname','$lasttname','$age','$mobile_number','$email','$password','$gender','$chk','$country','$address','$upload')";
            $query_run = mysqli_query($conn, $query);
      
            if($query_run)
            {
                move_uploaded_file($_FILES["file_uploading"]["tmp_name"], "uploads/".$_FILES["file_uploading"]);
               $_SESSION['status'] = "Registered successfully";
               header("location: form.php");
            }
            else
            {
              $_SESSION['status'] =  "Registered failed";
               header("location: form.php");
            }
        }
        else
        {
          $_SESSION['status'] =  "password mismatch"; 
            header("location: form.php");
        }
     }



 

}


?>