function formValidation()  
{  
var uname = document.registration.uname;  
var pass = document.registration.pass; 
var cmpass = document.registration.cmpass;  
var fname = document.registration.fname; 
var lname = document.registration.lname; 
var email = document.registration.email;   
var phone = document.registration.phone;  
var loc = document.registration.loc; 


if(uname_validation(uname,4,12))  
	{  
	  if(pass_validation(pass,4,12))  
	    {  
		if(cmpass_validation(pass,cmpass))
		  {  
	       if(fname_validation(fname))  
		     {  
			  if(lname_validation(lname))
				{
				 if(email_validation(email))
					{
					if(phone_validation(phone))
					  {
					   if(loc_validation(loc))
						 {
								
						 }
					  }
					}
				}
			 }
		  }
		}  
	}  
return false;  
}  

function uname_validation(uname,mx,my)  
{  
var uname_len = uname.value.length;  
if (uname_len == 0 || uname_len >= my || uname_len < mx)  
{  
alert("User Name should not be empty / length be between "+mx+" to "+my);  
uname.focus();  
return false;  
}  
return true;  
}  

function pass_validation(pass,mx,my)  
{  
var pass_len = pass.value.length;  
if (pass_len == 0 ||pass_len >= my || pass_len < mx)  
{  
alert("Password should not be empty / length be between "+mx+" to "+my);  
pass.focus();  
return false;  
}  
return true;  
}  

function cmpass_validation(pass,cmpass)  
{  
var pass = pass.value; 
var cmpass = cmpass.value; 
if (pass!=cmpass)  
{  
alert("Password not matched ");  
cmpass.focus();  
return false;  
}  
return true;  
}  

function fname_validation(fname)  
{   
var letters = /^[A-Za-z]+$/;  
if(fname.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('First name must have alphabet characters only');  
fname.focus();  
return false;  
}  
}  

function lname_validation(lname)  
{   
var letters = /^[A-Za-z]+$/;  
if(lname.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('Last name must have alphabet characters only');  
lname.focus();  
return false;  
}  
} 

function email_validation(email)  
{  
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
if(email.value.match(mailformat))  
{  
return true;  
}  
else  
{  
alert("You have entered an invalid email address!");  
email.focus();  
return false;  
}  
}   


function phone_validation(phone)  
{   
var numbers = /^[0-9]+$/;  
if(phone.value.match(numbers))  
{  
return true;  
}  
else  
{  
alert('Phone number must have numeric characters only');  
phone.focus();  
return false;  
}  
}  


function loc_validation(loc)  
{   
var letters = /^[A-Za-z]+$/;  
if(loc.value.match(letters))  
{  
alert('Form Successfully Submitted');  
window.location.reload(); 
return true;  
}  
else  
{  
alert('Location must have alphabet characters only');  
loc.focus();  
return false;  
} 
 
}  

