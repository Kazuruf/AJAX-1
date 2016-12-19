<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
  </head>
  <body>

  
<nav id="navigationbar" class="navbar navbar-light bg-faded">
	<ul class="nav navbar-nav">
		<li class="nav-item active">
		  <a class="nav-link" href="#">Trainee <span class="sr-only">(current)</span></a>
		</li>
	  
		<li class="nav-item">
		  <input type="submit" class="nav-link" value="By ID" data-toggle="modal" data-target="#myModal">
		 </li>
	  
		<li class="getAll nav-item">
		  <a class="nav-link" href="#">By All</a>
		</li>

		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			CRUD
			</a>
			<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> 
				<input type="submit" class="dropdown-item" value="Insert" data-toggle="modal" data-target="#myModal2">
				<input type="submit" class="dropdown-item" value="Edit" data-toggle="modal" data-target="#myModal3">
				<input type="submit" class="dropdown-item" value="Delete" data-toggle="modal" data-target="#myModal4">
			</div>
		</li>
	</ul>
</nav>


<table class="table">
	<thead class="thead-inverse">
	  <tr>
	    <th>#</th>
	    <th>Name</th>
	    <th>Major</th>
	  </tr>
	</thead>
	<tbody>
	
	</tbody>
</table>





    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
</body>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		  <div class="modal-dialog modal-sm">
		    <div class="modal-content">
		      <div class="modal-body">
		        <form class="form-inline">
			  <div class="form-group">
			    <input type="text" class="form-control" id="getByIDTrainee" placeholder="Trainee ID">
			  </div>
			  <button class="get_by_id" type="submit" class="btn btn-primary">Find</button>
			</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
  
		<!-- Modal2 -->
	  <div class="modal fade" id="myModal2" role="dialog">
	    <div class="modal-dialog modal-sm">
	      <div class="modal-content">
	        <div class="modal-body">
	          <form class="form-inline">
				  <div class="form-group">
				    <input type="text" class="form-control" id="name" placeholder="Name">
					<input type="text" class="form-control" id="major" placeholder="Major">
				  </div>
				  <button class="add" type="submit" class="btn btn-primary">Insert</button>
				</form>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	    </div>
	  </div>
	  
	  		<!-- Modal3 -->
	  <div class="modal fade" id="myModal3" role="dialog">
	    <div class="modal-dialog modal-sm">
	      <div class="modal-content">
	        <div class="modal-body">
	          <form class="form-inline">
				  <div class="form-group">
				    <input type="text" class="form-control" id="id" placeholder="ID (WHO?)">
					<input type="text" class="form-control" id="updateName" placeholder="Change Name">
					<input type="text" class="form-control" id="updateMajor" placeholder="Change Major">
				  </div>
				  <button class="update" type="submit" class="btn btn-primary">Update</button>
				</form>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	    </div>
	  </div>
	  
	  	  		<!-- Modal4 -->
	  <div class="modal fade" id="myModal4" role="dialog">
	    <div class="modal-dialog modal-sm">
	      <div class="modal-content">
	        <div class="modal-body">
	          <form class="form-inline">
				  <div class="form-group">
				    <label for="exampleInputName2">ID</label>
				    <input type="text" class="form-control" id="deleteId" placeholder="ID (Which Person?)">
				  </div>
				  <button class="delete" type="submit" class="btn btn-primary">Delete</button>
				</form>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	    </div>
	  </div>
	  
	  
	  
<script type="text/javascript">
$(".delete").click(function(){
	var trainee_id = $("#deleteId").val();
	var obj = JSON.stringify({id: trainee_id});
	$.ajax({
		method: "POST", 
		url:"http://localhost:7001/ajax/delete", 
		data: obj
	});
	getData();
});

$(".add").click(function(){
	var trainee_name = $("#name").val();
	var trainee_major = $("#major").val();
	var obj = JSON.stringify({name: trainee_name, major: trainee_major});
	$.ajax({
		method: "POST", 
		url:"http://localhost:7001/ajax/insert", 
		data: obj
	});
	getData();
});


$(".update").click(function(){
	var trainee_id = $("#id").val();
	var trainee_name = $("#updateName").val();
	var trainee_major = $("#updateMajor").val();
	var obj = JSON.stringify({id: trainee_id, name: trainee_name, major: trainee_major});
	$.ajax({
		method: "POST", 
		url:"http://localhost:7001/ajax/update", 
		data: obj
	});
	getData();
});



$(".get_by_id").click(function(){
	$(".table tbody tr").remove();
	var trainee_id = $("#getByIDTrainee").val();
	var obj = JSON.stringify({id: trainee_id});
	$.ajax({
		method:"POST",
		url:"http://localhost:7001/ajax/getById", 
		data: {
	        id: trainee_id
    	},
    	success: function(resp){
			var row = "<tr><td>"+ resp.id +"</td>"+
					  "<td>"+ resp.name +"</td>"+
						"<td>"+ resp.major +"</td>"+ "</tr>";
			$(".table tbody").append(row);
		}
	});
	
});


$(".getAll").click(function(){
	$(".table tbody tr").remove();
	$.ajax({
		method:"POST",
		url:"http://localhost:7001/ajax/getAll", 
    	success: function(resp){
			var iterable = resp.trainees;
			$.each(iterable, function(i, item){
				
				var trainee = "<tr>"+
					"<td>"+item.id+"</td>"+
					"<td>"+item.name+"</td>"+
					"<td>"+item.major+"</td>" + "</tr>";
				$(".table tbody").append(trainee);
			});
		}
	});
});

function getData(){
	$(".table tbody tr").remove();
	$.ajax({
		method:"POST",
		url:"http://localhost:7001/ajax/getAll", 
    	success: function(resp){
			var iterable = resp.trainees;
			$.each(iterable, function(i, item){
				
				var trainee = "<tr>"+
					"<td>"+item.id+"</td>"+
					"<td>"+item.name+"</td>"+
					"<td>"+item.major+"</td>" + "</tr>";
				$(".table tbody").append(trainee);
			});
		}
	});
}




</script>
</html>