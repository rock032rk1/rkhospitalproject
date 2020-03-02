 $(document).ready(function(){
	 $('.delBtn').on('click',function(event){
			
		    event.preventDefault();
			var href=$(this).attr('href');
			$('#myModal #delRef').attr('href',href);
			$('#myModal').modal();
		});
	 
	/* Photo thumbnell*/
	 $('.photoedit #photoButton').on('click',function(event){
		    event.preventDefault();
			var href=$(this).attr('href');
			
				$('#myModal #employeePhoto').attr('src', href);
				
				$('#myModal').modal();
			
	 });
	 
	/* edit photo*/
	 $('#adminEdit .uBtn').on('click',function(event){
		 event.preventDefault();
		 var href=$(this).attr('href');
		
		 $.get(href,function(stu,status){
			 
			 $('#aid').val(stu.aid);
			 $('#fname').val(stu.fname);
			 $('#lname').val(stu.lname);
			 $('#gender').val(stu.gender);
			/* var dob = stu.dob.substr(0,10);*/
			 $('#dob').val(stu.dob);
			 $('#mobile').val(stu.mobile);
			 $('#email').val(stu.email);
			 $('#address').val(stu.address);
			 $('#city').val(stu.city);
			 $('#state').val(stu.state);
			 $('#education').val(stu.education);
			 $('#profession').val(stu.profession);
			 $('#password').val(stu.password);
			/* $('#file').val(stu.filename);*/
			 
		 });
		 $('#exampleModal').modal();
	 });
 });