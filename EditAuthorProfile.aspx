<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditAuthorProfile.aspx.cs" Inherits="TRPR.EditAuthorProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="StyleSheet.css" rel="stylesheet"/>
        <style>
									body{
										background-image: url("imgs/login1.jpg") ;
		background-repeat:no-repeat;
		
		
		background-size: cover;
									}
	input[type=text],  select {
	
    padding: 8px 5px;
	margin:5px 0 5px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
	 width:140px;
}
	h2{
		font-size:40px;
		font-weight:900;
		color:white;
		text-align:center;
	}
	.modal-content{
		background-color:#f9f9f9;
	}
	.footer{
	/*padding:20px;*/
	background:#3b5998;
	
       position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
  
  
    
}
 footer a {
    color: white;
	
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .share{
	  color:white;
	
  }

      
 


        .rightcolumn {
		
          margin-left:25%;
		  margin-right:10%;
            width: 50%;           
            display: inline-block;
           margin-top:2%;
        }

       .container{
		   	
            margin-top:30px;
            margin-left:5%;
			margin-right:%;
			width:100%;
        }

  



@media (min-width: 1025px) and (max-width: 1440px) {
	 .rightcolumn {
            width: 60%;           
            margin-left:20%;
          }
		
	
}

@media (min-width: 769px) and (max-width: 1024px) {
	

		 .rightcolumn {
            width: 55%;           
            margin-left:23%;
          }
		

        	
	
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
	
		 .rightcolumn {
            width: 52%;           
            margin-left:23%;
          }
		

        	}

@media (min-width: 376px) and (max-width: 425px) {
	
	 .rightcolumn {

			 margin-left:8%;
			  margin-right:5%;
			width: 85%;		
	}
	 h2 {
        		font-size: 25px;
        	}
}


@media (min-width: 320px) and (max-width: 375px) {
	
	 .rightcolumn {

			 margin-left:8%;
			  margin-right:5%;
			width: 85%;		
	}
        	h2 {
        		font-size: 20px;
        	}
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 >Manage Your Profile</h2>
	
		
			 <div class="rightcolumn">
	 <div class="modal-content animate" >
     <div class="container">
		
	 <div class="input-container">
		 <br />
		 <asp:Label ID="lblName" runat="server"  Text="Name: "></asp:Label><br />
		 <asp:TextBox ID="txtName" runat="server" Width="90%"   class="form-control" ></asp:TextBox><br />
		  <asp:Label ID="lblAreaOfExpertisse" runat="server"  Text="Area of Expertise: "></asp:Label><br />
		 <asp:DropDownList ID="ddlAreaOfExpertisse" runat="server" Width="90%"   class="form-control"></asp:DropDownList>
		<asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label><br />
		 <asp:TextBox ID="txtCity" runat="server" Width="90%" class="form-control" ></asp:TextBox><br />
		 <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><br />
		 <asp:TextBox ID="txtEmail" runat="server" Width="90%" class="form-control" ></asp:TextBox><br />
		 <asp:Label ID="lblProvince" runat="server" Text="Province:"></asp:Label><br />
		 <asp:TextBox ID="txtProvince" runat="server" Width="90%" class="form-control" ></asp:TextBox><br />
		 <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label><br />
		 <asp:TextBox ID="txtPhone" runat="server" Width="90%" class="form-control" ></asp:TextBox><br />
		<asp:Label ID="lblCountry" runat="server" Text="Country:"></asp:Label><br />
		  <div class="autocomplete" style="width:90%;">
		 <input id="myInput" name="myCountry" style="width:100%; height:33px;"  type="text"/>
			</div> 
		<asp:Label ID="lblPostalCode" runat="server" Text="Postal Code:"></asp:Label> <br />
		<asp:TextBox ID="txtPostalCode" runat="server" Width="90%" class="form-control" ></asp:TextBox> <br />
	  </div>
        
				</div>
		<br />
                <asp:Button ID="btnSave" runat="server" style="margin-left:12%;" class="btn btn-primary" Text="Edit" Width="103px" Height="45px"  ></asp:Button> 
		  &nbsp;&nbsp; 
		  <asp:Button ID="btnCancel" runat="server" class="btn btn-danger" Text="Cancel" Width="103px" Height="45px" OnClick="btnCancel_Click"  ></asp:Button> 
                   <br /> <br /> <br /> <br /> <br />
                </div>
                            <br />
	                  <br />
			</div>
		
<script>
function autocomplete(inp, arr) {
  /*the autocomplete function takes two arguments,
  the text field element and an array of possible autocompleted values:*/
  var currentFocus;
  /*execute a function when someone writes in the text field:*/
  inp.addEventListener("input", function(e) {
      var a, b, i, val = this.value;
      /*close any already open lists of autocompleted values*/
      closeAllLists();
      if (!val) { return false;}
      currentFocus = -1;
      /*create a DIV element that will contain the items (values):*/
      a = document.createElement("DIV");
      a.setAttribute("id", this.id + "autocomplete-list");
      a.setAttribute("class", "autocomplete-items");
      /*append the DIV element as a child of the autocomplete container:*/
      this.parentNode.appendChild(a);
      /*for each item in the array...*/
      for (i = 0; i < arr.length; i++) {
        /*check if the item starts with the same letters as the text field value:*/
        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
          /*create a DIV element for each matching element:*/
          b = document.createElement("DIV");
          /*make the matching letters bold:*/
          b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
          b.innerHTML += arr[i].substr(val.length);
          /*insert a input field that will hold the current array item's value:*/
          b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
          /*execute a function when someone clicks on the item value (DIV element):*/
          b.addEventListener("click", function(e) {
              /*insert the value for the autocomplete text field:*/
              inp.value = this.getElementsByTagName("input")[0].value;
              /*close the list of autocompleted values,
              (or any other open lists of autocompleted values:*/
              closeAllLists();
          });
          a.appendChild(b);
        }
      }
  });
  /*execute a function presses a key on the keyboard:*/
  inp.addEventListener("keydown", function(e) {
      var x = document.getElementById(this.id + "autocomplete-list");
      if (x) x = x.getElementsByTagName("div");
      if (e.keyCode == 40) {
        /*If the arrow DOWN key is pressed,
        increase the currentFocus variable:*/
        currentFocus++;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 38) { //up
        /*If the arrow UP key is pressed,
        decrease the currentFocus variable:*/
        currentFocus--;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 13) {
        /*If the ENTER key is pressed, prevent the form from being submitted,*/
        e.preventDefault();
        if (currentFocus > -1) {
          /*and simulate a click on the "active" item:*/
          if (x) x[currentFocus].click();
        }
      }
  });
  function addActive(x) {
    /*a function to classify an item as "active":*/
    if (!x) return false;
    /*start by removing the "active" class on all items:*/
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
    /*add class "autocomplete-active":*/
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    /*a function to remove the "active" class from all autocomplete items:*/
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  function closeAllLists(elmnt) {
    /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inp) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }
  /*execute a function when someone clicks in the document:*/
  document.addEventListener("click", function (e) {
      closeAllLists(e.target);
  });
}

/*An array containing all the country names in the world:*/
var countries = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua & Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia & Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Central Arfrican Republic","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cuba","Curacao","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kiribati","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauro","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre & Miquelon","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","St Kitts & Nevis","St Lucia","St Vincent","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad & Tobago","Tunisia","Turkey","Turkmenistan","Turks & Caicos","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States of America","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];

/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
autocomplete(document.getElementById("myInput"), countries);
</script>
    </form>
</body>
</html>
