//   
//#################################################################################
//Simple File Manager PHP Script v1.5.													
//Created By Dave Earley.															
//Dave-Earley.com																	
//3rd April 10																	
//Do whatever you wish with the script (but please leave this notice here)		
//#################################################################################

   $(document).ready(function() {
	   
	   $('#search-box-div').append($('div#crumb').html()); 
		$('div#crumb').hide();
	   
		$("#manage_table").tablesorter(); 
        $('#upload_box').hide();
        $('#upload_button').click(function() {

            $('#upload_button').fadeOut('fast', function() {

                $('#upload_box').fadeIn('fast');

            });


        });


        $('#close_upload').click(function() {

            $('#upload_box').fadeOut('fast', function() {

                $('#upload_button').fadeIn('fast');
            });
            return false;


        });
        
        
        $('#rename_box').hide();
        $('a#rename').click(function() {

            $('#rename_box').toggle();
            
          var file = $(this).attr('href');

          jQuery.url.setUrl(file); 
          var file = jQuery.url.param("file")

          jQuery('#screen').empty();
          jQuery('#screen').append(file);
         // jQuery('input old_file_name').val(file);
          $('input[name="old_file_name"]').val(file);


        
        
        //console.log(file);
        
            return false;

        });

        $('#file_box').hide();
        $('#file_button').click(function() {

            $('#file_button').fadeOut('fast', function() {

                $('#file_box').fadeIn('fast');

            });


        });



        $('#folder_box').hide();
        $('#folder_button').click(function() {

            $('#folder_button').fadeOut('fast', function() {

                $('#folder_box').fadeIn('fast');

            });


        });


        $('#close_folder').click(function() {

            $('#folder_box').fadeOut('fast', function() {

                $('#folder_button').fadeIn('fast');
            });
            return false;


        });
		
		$(".close").click(
					function () {
						$(this).fadeTo(400, 0, function () { // Links with the class "close" will close parent
							$(this).slideUp(400);
						});
					return false;
					}
				);

		

    });