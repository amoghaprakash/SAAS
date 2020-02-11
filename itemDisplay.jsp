<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Item Display Page</title>
         <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
       
    <script>
    $(document).ready(function() {
    	debugger;
    	$.ajax({
            type: "Get",
            url: "itemDisplay",
            dataType : 'json',
            async: false,
            success: function(data) {
            	debugger;
            	$('#itemName').text(data.itemName);
        		$('#description').text(data.description);
        		$('#pricePerDay').text(data.pricePerDay);
        		$('#category').text(data.category);
        		$('#condition').text(data.condition);
        		
            },
            error: function(data) {
            	debugger;
                alert(data);
            }
        });
    	
		 $("#addtocart").click(function(event) {
			 debugger;
			 var jsonData = JSON.stringify({ 
	             itemName: $('#itemName').text(),
	             quantity: 1
			 });
			 $.ajax({
	            type: "POST",
	            url: "addtocart",
	            data: { cart : jsonData},
	            success: function(data) {
	            	debugger;
	            	window.location.href="http://localhost:8080/houserentalapp/addToCartSuccess.jsp";
	            	
	            },
	            error: function(data) {
	                alert(data);
	            }
	        });
		 });
    });
</script>


<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: #9CCECC;
  padding: 20px;
  text-align: center;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #2A7572;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
}

/* Left and right column */
.column.side {
  width: 25%;
}

/* Middle column */
.column.middle {
  width: 50%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

input[type=submit] {
  background-color: #1F6865;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: middle;
}

input[type=submit]:hover {
  background-color: #51C5C0;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column.side, .column.middle {
    width: 100%;
  }
}
</style>

</head>        
<body>


<div class="header">
  <h1>Item Details.....</h1>
  <p>Resize the browser window to see the responsive effect.</p>
</div>

<div class="topnav">
  <a href="#">Home</a>
  <a href="#">Favourite</a>
  <a href="#">Cart</a>
</div>

<div class="row">
  <div class="column side">
    <h2>Owner Details</h2>
    <p>Owner Address,
       Owner Name,
       Owner Contact Info</p>
  </div>
  
  <div class="column middle">
    <h2>All details</h2>
    <table id = "orderDetailsInfo">
                    
                                <tr> <td> <label id = "itemNameLable">Item Name: </label> <label id = "itemName"></label> </td> </tr>
                    
					             <tr> <td> <label id = "descriptionLable">Description: </label> <label id = "description"> </label> </td> </tr> 
						       
				                 <tr>  <td> <label id = "pricePerDayLable">Price: </label> <label id = "pricePerDay"> </label> </td> </tr>
				                 
				                 <tr> <td><label id = "conditionLable">Condition: </label> <label id = "condition"> </label> </td> </tr>

					    </table> 
    
  </div>
  
  <div class="column side">
    <h2>Add to Cart</h2>
    <p>
    <form action="addtocart" method="POST">
            <div class="content">
            <input style="margin:15px;" id="addtocart" type="submit" value="Add To Cart" />
             </div>
        </form>
    </p>
  </div>
</div>

<div class="wrapper">
                <div id="main" class="row">
                    <div class="col-sm-3"> </div>
                    <div class="col-sm-6">
                    <div class ="column middle">
                 </div>
                    </div>
                    <div class="col-sm-3"> </div>
                </div>
            </div>
</body>
</html>