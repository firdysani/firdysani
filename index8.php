<?php
	include "connection.php";
	
	$mapselect = mysqli_query($conn,"SELECT * FROM location");
	


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Image Map By Taufik</title>
    <meta name="author" content="Codeconvey" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <!-- Style CSS -->
    <link rel="stylesheet" href="css/style_1.css">
    
    <!--Only for demo purpose - no need to add.-->
    <link rel="stylesheet" type="text/css" href="css/demo_1.css" />
	
</head>
<body>
		
<div class="ScriptTop">
    <div class="rt-container">
        <div class="col-rt-4" id="float-right">

            <!-- AD HERE -->
            
        </div>
        <div class="col-rt-2">
            <ul>
               
            </ul>
        </div>
    </div>
</div>

<header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading">
            	<h1>Image Map by Taufik Prasetya</h1>
                
            </div>
        </div>
    </div>
</header>


<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
                  
                  
   
<!-- partial:index.partial.html -->
<div id="image-map">
    
    <H3>MAGNITUDO : <input type="text" name="magnitudo"> <input type="submit" name="submit" value="search">
   <img width="720" height="480" src="petasumatera.jpg" alt="Our Locations">  
   <?php
   while($mapresult = mysqli_fetch_array($mapselect))
   {
   
   ?>
   
  <div class="pin pin-down" data-xpos="<?php echo $mapresult['x']; ?>" data-ypos="<?php echo $mapresult['y']; ?>">  
    <h2><?php echo $mapresult['name']; ?></h2>     
    <ul>
      <li><strong>Kekuatan Gempa</strong></li>
      <li><?php echo $mapresult['earthquake']; ?> SR</li>
      
    </ul>
  </div>
<?php
   }
   ?>
      
    </ul>
  </div>
  
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script  src="./script.js"></script>

    		
           
    		</div>
		</div>
    </div>
</section>
     

   <!-- ANALYTICS -->

	</body>
</html>