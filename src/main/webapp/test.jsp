<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>

</head>
<body>


<h2>Trainees</h2>
<table id="trainee">
	<thead><tr>
		<th>ID</th><th>Name</th><th>Major</th>
	</tr></thead>
	<tbody></tbody>
</table>
<button id="go">check</button>



<h1>Add Trainee</h1>
Name: <input type="text" id="name" /> <br/>
major: <input type="text" id="major"/> <br/>
<button id="add">Add</button>

<h1>Update Trainee</h1>
Where? (ID): <input type="text" id="id" /> <br/>
Name: <input type="text" id="updateName"/> <br/>
Major: <input type="text" id="updateMajor" /> <br/>
<button id="update">update</button>

<h1>Delete Trainee</h1>
Which Trainee? (ID): <input type="text" id="deleteId" /> <br/>
<button id="delete">Delete</button>

<h1>trainee By ID</h1>
<table id="traineeById">
	<thead><tr>
		<th>ID</th><th>Name</th><th>Major</th>
	</tr></thead>
	<tbody></tbody>
</table>
Which Trainee? (ID): <input type="text" id="getByIDTrainee"/> <br/>
<button id="get_by_id">Get by ID</button>


<h1>get All trainee</h1>
<table id="allTrainee">
	<thead><tr>
		<th>ID</th><th>Name</th><th>Major</th>
	</tr></thead>
	<tbody></tbody>
</table>
<button id="getAll">Get all Trainee</button>

</body>

<script type="text/javascript">
$("#add").click(function(){
	var trainee_name = $("#name").val();
	var trainee_major = $("#major").val();
	var obj = JSON.stringify({name: trainee_name, major: trainee_major});
	$.ajax({
		method: "POST", 
		url:"http://localhost:7001/ajax/insert", 
		data: obj
	});
});


$("#update").click(function(){
	var trainee_id = $("#id").val();
	var trainee_name = $("#updateName").val();
	var trainee_major = $("#updateMajor").val();
	var obj = JSON.stringify({id: trainee_id, name: trainee_name, major: trainee_major});
	$.ajax({
		method: "POST", 
		url:"http://localhost:7001/ajax/update", 
		data: obj
	});
});

$("#delete").click(function(){
	var trainee_id = $("#deleteId").val();
	var obj = JSON.stringify({id: trainee_id});
	$.ajax({
		method: "POST", 
		url:"http://localhost:7001/ajax/delete", 
		data: obj
	});
});

$("#get_by_id").click(function(){
	var trainee_id = $("#getByIDTrainee").val();
	console.log(trainee_id);
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
						"<td>"+ resp.major +"</td>"
			$("#traineeById tbody").append(row);
		}
	});
});

$("#getAll").click(function(){
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
				$("#allTrainee tbody").append(trainee);
			});
		}
	});
});


</script>
</html>
