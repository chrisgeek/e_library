class Book < ActiveRecord::Base
   
	     validates:firstname , presence:true,
         length: { minimum: 2 }

         validates:lastname , presence:true,
         length: { minimum: 2 }

		 validates:reg_number , presence:true,
         length: { minimum: 11 },
         numericality:{only_integer:true}         

         validates:phone , presence:true,
         numericality:{only_integer:true}


       validates:gender , presence:true

	 	 validates:category , presence:true,
       length: { minimum: 2 }


	 	 validates:author , presence:true,
         length: { minimum: 2 }


	 	 validates:title , presence:true,
         length: { minimum: 2 }


end
