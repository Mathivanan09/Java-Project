function validate()
{
	x=document.getElementsByTagName('input');
	patternName=/^[A-Za-z]+$/
	patternMobile=/^([0-9])+$/
	patternEmail=/^+$/
	patternPassword=/^+$/	
	
	
	
	/*Name Field*/
	
	if (x[0].value=="") 
		{
			alert("Please Fill the Name field");
			return false;
		}
	if (!patternName.test(x[0].value)) 
		{
			alert("Only Letters are Allowed in the Name Field");
			return false;
		};
	if(x[0].value.length>26)
		{
			alert("Only using lessthan 26 characters in Age Field");
			x[0].value="";
			return false;
		}
		
		/*Mobile Field*/
		if (x[1].value=="") 
		{
			alert("Please Fill the Mobile field");
			return false;
		}
		if(!patternMobile.test(x[1].value))
		{
			alert("Only Numbers are allowed in this field");
			return false;
		}
		
		/*Email Field*/
		if (x[2].value=="") 
		{
			alert("Please Fill the Email field");
			return false;
		}
		
		/*Password Field*/
		if (x[3].value=="") 
		{
			alert("Please Fill the Password field");
			return false;
		}
		
		/*Confirm Field*/
		if (x[4].value=="") 
		{
			alert("Please Fill the Confirm Password field");
			return false;
		}
		
}
