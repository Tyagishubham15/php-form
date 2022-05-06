jQuery.validator.addMethod("noSpace", function(value, element) { 
    return value == '' || value.trim().length != 0;  
}, "No space please and don't leave it empty");
jQuery.validator.addMethod("customEmail", function(value, element) { 
  return this.optional( element ) || /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test( value ); 
}, "Please enter valid email address!");
$.validator.addMethod( "alphanumeric", function( value, element ) {
return this.optional( element ) || /^\w+$/i.test( value );
}, "Letters, numbers, and underscores only please" );
var $registrationForm = $('#registration');
if($registrationForm.length){
  $registrationForm.validate({
      rules:{
          fname: {
              required: true
          },
          lname: {
              required: true
          },
          age: {
            required: true,
            number: true,
            min: 18
          },
          mobile: {
              required: true,
              minlength: 10,
              maxlength: 10,
              digits: true
          },
          email: {
              required: true,
              customEmail: true
          },
          password: {
              required: true,
              minlength: 5,
              maxlength: 8
          },
          confirm: {
              required: true,
              equalto: '#password'
          },
          gender: {
              required: true
          },
          hobbies: {
              required: true
          },
          country: {
              required: true
          },
          address: {
              required: true
          },
          file_uploading: {
            required: true, 
            accept: "file_uploading/jpg, file_uploading/jpeg, file_uploading/png"
           
          }
      },
      messages:{
          fname: {
              required: 'Please enter username!'
          },
          lname: {
            required: 'Please enter last name!'
        },
        age: {
            required: "Please enter your age",
            number: "Please enter your age as a numerical value",
            min: "You must be at least 18 years old"
          },
          mobile: {
            required: 'Please enter mobile number!'
        },
          email: {
              required: 'Please enter email!',
              email: 'Please enter valid email!'
          },
          password: {
              required: 'Please enter password!'
          },
          confirm: {
              required: 'Please enter confirm password!',
              equalto: 'Please enter same password!'
          },
          gender: {
            required: 'Please select the gender!'
        },
        hobbies: {
            required: 'Please select the gender!'
        },
          country: {
              required: 'Please select country!'
          },
          address: {
              required: 'Please enter address!'
          },
          file_uploading: {
            required: 'Required!', 
            accept: 'Not an image!',
            
          }
      },
      errorPlacement: function(error, element) 
      {
        if (element.is(":radio")) 
        {
            error.appendTo(element.parents('.gender'));
        }
        else if(element.is(":checkbox")){
            error.appendTo(element.parents('.hobbies'));
        }
        else 
        { 
            error.insertAfter( element );
        }
        
       }
  });
}