
<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/js/bootstrap.min.css">
</head>
<body>
    
    <%
	int userid = 0;
	try{
		userid = Integer.parseInt(session.getAttribute("user").toString());
		if (userid == 0){
			response.sendRedirect("home.jsp");
		}
	}
	catch(Exception e){
		response.sendRedirect("home.jsp");
	}
%>
    
<form class="form-signin" action="UserControllerServlet" method="POST" >
        
    <input type="hidden" name="command" value="DETAILS" />
    
    <h1 class="h3 mb-3 font-weight-normal text-center">Personal Details</h1>

    <input type="hidden" name="user_id" value="<%=userid%>">
    
    <label>pan</label>
    <input type="text" name="pan" class="form-control" required autofocus/>
    
    <br>
    <label>uid</label>
    <input type="number" name="uid" class="form-control" placeholder="uid" required autofocus>
    
    <br>
    <label class="sr-only">ration</label>
    <input type="text" name="ration" class="form-control" placeholder="ration" required autofocus>
    
    <br>
    <label class="sr-only">blood_group</label>
    <input type="text" name="blood_group" class="form-control" placeholder="blood_group" required autofocus>
    <br>
    <label class="sr-only">passport_no</label>
    <input type="number" name="passport_no" class="form-control" placeholder="passport_no" required autofocus>
    <br>
    <label class="sr-only">dl_no</label>
    <input type="text" name="dl_no" class="form-control" placeholder="dl_no" required autofocus>
    <br>
    <label class="sr-only">vid_no</label>
    <input type="text" name="vid_no" class="form-control" placeholder="vid_no" required autofocus>
    <br>
    <label class="sr-only">epf</label>
    <input type="text" name="epf" class="form-control" placeholder="epf" required autofocus>
    <br>
    <label class="sr-only">ppf</label>
    <input type="text" name="ppf" class="form-control" placeholder="ppf" required autofocus>
    <br>
    <label class="sr-only">gas_consumer_number</label>
    <input type="number" name="gas_consumer_number" class="form-control" placeholder="gas_consumer_number" required autofocus>
    <br>
    <label class="sr-only">gas_servcie_provider</label>
    <input type="text" name="gas_servcie_provider" class="form-control" placeholder="gas_servcie_provider" required autofocus>
    <br>
    <label class="sr-only">elec_accnt_no</label>
    <input type="number" name="elec_accnt_no" class="form-control" placeholder="elec_accnt_no" required autofocus>
    <br>
    <label class="sr-only">elec_service_provider</label>
    <input type="text" name="elec_service_provider" class="form-control" placeholder="elec_service_provider" required autofocus>
      <br>
    <label class="sr-only">water_accnt_no</label>
    <input type="number" name="water_accnt_no" class="form-control" placeholder="water_accnt_no" required autofocus>
     <br>
    <label class="sr-only">phoneNo1</label>
    <input type="number" name="phoneNo1" class="form-control" placeholder="phoneNo1" required autofocus>
     <br>
    <label class="sr-only">phoneNo2</label>
    <input type="number" name="phoneNo2" class="form-control" placeholder="phoneNo2" required autofocus>     
  
  <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>

</form>
</body>
</html>