 $(document).ready(function(){
	  $('.table .eBtn').on('click',function(event){
		  event.preventDefault();
		  var href=$(this).attr('href');
		  $.get(href,function(stu,status){
				
				$('.myForm #pid').val(stu.pid);
				$('.myForm #name').val(stu.name);
				$('.myForm #mobile').val(stu.mobile);
				$('.myForm #email').val(stu.email);
				
			});
		  $('.myForm #exampleModal').modal();
	  });
	  $('.nBtn').on('click',function(){
		  
		   
		    
		    $('.myForm1 #pid').val('');
			$('.myForm1 #name').val('');
			$('.myForm1 #mobile').val('');
			$('.myForm1 #email').val('');
			$('.myForm1 #exampleModal').modal();
	  });
	  $('.table .delBtn').on('click',function(event){
			
		    event.preventDefault();
			var href=$(this).attr('href');
			$('#myModal #delRef').attr('href',href);
			$('#myModal').modal();
		});
	
	  
  });

