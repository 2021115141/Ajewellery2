<?php include 'admin/db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-body">
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th class="text-center">Date </th>
						<th class="text-center">New Price</th>
						<th class="text-center">Used Price</th>
						<th class="text-center">Type of Gold </th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
					$query = $conn->query("SELECT * FROM setting  WHERE (setting_date BETWEEN CURDATE()-1 AND CURDATE()+1) order by unix_timestamp(setting_date)  DESC					");
					while($row= $query->fetch_assoc()):
					?>
					<tr>
						<td class="text-center"><?php echo $i++ ?></td>
						<td class=""><?php echo date("d/m/Y",strtotime($row['setting_date'])) ?></td>
						<td class="">RM <?php echo number_format((float)$row['setting_new'], 2, '.', ''); ?></td>
						<td class="">RM <?php echo number_format((float)$row['setting_used'], 2, '.', ''); ?></td>
						<td class=""><?php echo $row['setting_type'] ?></td>
						
					</tr>
					<?php endwhile; ?>
				</tbody>
				
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('table').dataTable()
		$('.view_order').click(function(){
			uni_modal("My Order "+$(this).attr('data-code'),"view_order.php?id="+$(this).attr('data-id'),"large")
		})
	})
</script>