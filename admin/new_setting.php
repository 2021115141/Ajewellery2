<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-body">
			<form action="" id="manage-setting">

        <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="" class="control-label">Date</label>
							<input type="date" class="form-control form-control-sm" name="date" value="<?php echo isset($date) ? $date : '' ?>">
						</div>
					</div>
				</div>
                <div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="" class="control-label">Type</label>
							<input type="text" class="form-control form-control-sm" name="type" value="<?php echo isset($type) ? $type : '' ?>">
						</div>
					</div>
				</div>
                <div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="" class="control-label">New Price</label>
							<input type="text" class="form-control form-control-sm" name="new" value="<?php echo isset($new) ? $new : '' ?>">
						</div>
					</div>
				</div>
                <div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="" class="control-label">Used Price</label>
							<input type="text" class="form-control form-control-sm" name="used" value="<?php echo isset($used) ? $used : '' ?>">
						</div>
					</div>
				</div>
			
    </form>
    	</div>
    	<div class="card-footer border-top border-info">
    		<div class="d-flex w-100 justify-content-center align-items-center">
    			<button class="btn btn-flat  bg-gradient-primary mx-2" form="manage-setting">Save</button>
    			<a href="index.php?page=setting_list"><button class="btn btn-flat bg-gradient-secondary mx-2" type="button">Cancel</button></a>
    		</div>
    	</div>
	</div>
</div>
<script>
	$('#manage-setting').submit(function(e){
		e.preventDefault()
		start_load()
		$.ajax({
			url:'ajax.php?action=save_setting',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp == 1){
					alert_toast('Data successfully saved',"success");
					setTimeout(function(){
						location.href = 'index.php?page=setting_list'
					},2000)
				}
			}
		})
	})
</script>