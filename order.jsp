<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta charset="utf-8"/>
    <meta name="description" content="House-hold Rental" />
    <meta name="keywords" content="House-hold Rental" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
   
    <style>
            .wrapper {
                padding-left: 15px;
                padding-right: 15px;
            }

            h3 {
                font-weight: bold;
            }

            #main {
                padding-top: 5%;
            }

            .no-border {
                border: 0;
                box-shadow: none;
            }

            .add-pad {
                padding-left: 5%;
            }
            input[type=number]::-webkit-inner-spin-button, 
            input[type=number]::-webkit-outer-spin-button { 
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                margin: 0; 
            }
            .drop-down {
                 margin-left:2px;
            }
            .datatable-css {
                width: 100%;
            }
            .ui-datatable.borderless thead th
            
            label {
			    /* Other styling... */
			    text-align: right;
			    clear: both;
			    float:left;
			    margin-right:15px;
			}
            
            
        </style>


    <script>
    
    $(document).ready(function(){ 
        debugger;
        $.ajax({
            type: "Get",
            url: "confirmAndCheckout",
            dataType : 'json',
            async: false,
            success: function(data) {
                debugger;
                
                var divCol  = "<div>";
                var divWell = "<div>";
                var divClose= "</div>";

                for (var key in data) {

                    var orderId     = "<h5>"      + data[key]._id.valueOf()    + "</h5>";
                    var itemName = "<div class='input-group mb-3 col-sm-12'>"+
                                     "<div class='input-group-prepend'>" +
                                        "<span class='input-group-text'>" + "Item Name" + "</span>"+
                                      "</div>" +
                                      "<label class = 'form-control' id = 'itemNameLabel'>" +data[key].itemName+ "</label>"+
                                    "</div>"
                                    
                    // do like this for all - manage all space from one div to next 
                    var ownerName = "<label id = 'ownerNameLabel'>" +data[key].ownerName+ "</label>";
                    var ownerAddress = "<label id = 'ownerAddressLabel'>" +data[key].ownerAddress+ "</label>";
                    var fromDate = "<label id = 'fromDateLabel'>" +data[key].fromDate+ "</label>";
                    var toDate = "<label id = 'toDateLabel'>" +data[key].toDate+ "</label>";
                    var totalCost = "<label id = 'totalCostLabel'>" +data[key].totalCost+ "</label>";

                    var div = divCol + divWell + orderId +itemName + ownerName + ownerAddress + fromDate + toDate + totalCost + divClose;

                    $('.col-md-12').append(div); // insert the div you've just created
                
                }
            },
            error: function(data) {
                alert(data);
            }
        });
    });
    
    </script>
</head>        
<body>
<div class="wrapper">
                <div id="main" class="row">
                    <div class="col-sm-3"> </div>
	                    <div class="col-sm-6">
	                    <h3>Thank you for your order!!! </h3>
		                    <div class ="mt-2 col-md-12">       
		                    </div>
	                    </div>
                    <div class="col-sm-3"> </div>
                </div>
            </div>
            </body>
</html>