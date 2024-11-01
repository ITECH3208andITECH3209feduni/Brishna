<?php

//index.php

include('class/Appointment.php');

$object = new Appointment;

if(isset($_SESSION['customer_id']))
{
	header('location:dashboard.php');
}

$object->query = "
SELECT * FROM accountant_schedule_table 
INNER JOIN accountant_table 
ON accountant_table.accountant_id = accountant_schedule_table.accountant_id
WHERE accountant_schedule_table.accountant_schedule_date >= '".date('Y-m-d')."' 
AND STR_TO_DATE(CONCAT(accountant_schedule_table.accountant_schedule_date, ' ', accountant_schedule_table.accountant_schedule_end_time), '%Y-%m-%d %H:%i:%s') > '".$object->now."'  
AND accountant_schedule_table.accountant_schedule_status = 'Active' 
AND accountant_table.accountant_status = 'Active' 
ORDER BY accountant_schedule_table.accountant_schedule_date ASC
";

$result = $object->get_result();

include('header.php');
?>

<div class="card">
    <form method="post" action="result.php">
        <div class="card-header"><h3><b>Accountant Schedule List</b></h3></div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Accountant Name</th>
                        <th>Education</th>
                        <th>Speciality</th>
                        <th>Appointment Date</th>
                        <th>Appointment Day</th>
                        <th>Available Time</th>
                        <th>Action</th>
                    </tr>
                    <?php
                    foreach($result as $row)
                    {
                        echo '
                        <tr>
                            <td>'.$row["accountant_name"].'</td>
		      				<td>'.$row["accountant_degree"].'</td>
		      				<td>'.$row["accountant_expert_in"].'</td>
		      				<td>'.$row["accountant_schedule_date"].'</td>
		      				<td>'.$row["accountant_schedule_day"].'</td>
		      				<td>'.$row["accountant_schedule_start_time"].' - '.$row["accountant_schedule_end_time"].'</td>
		      				<td><button type="button" name="get_appointment" class="btn btn-primary btn-sm get_appointment" data-id="'.$row["accountant_schedule_id"].'">Get Appointment</button></td>
		      			</tr>
		      			';
                    }
                    ?>
                </table>
            </div>
        </div>
    </form>
</div>

<?php

include('footer.php');

?>

<script>

$(document).ready(function(){
	$(document).on('click', '.get_appointment', function(){
		var action = 'check_login';
		var accountant_schedule_id = $(this).data('id');
		$.ajax({
			url:"action.php",
			method:"POST",
			data:{action:action, accountant_schedule_id:accountant_schedule_id},
			success:function(data)
			{
				window.location.href=data;
			}
		})
	});
});

</script>