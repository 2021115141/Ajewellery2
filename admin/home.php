<?php include('db_connect.php') ?>
<!-- Info boxes -->
<?php 
if($_SESSION['login_type'] == 2){
  header("Location: https://example.com/myOtherPage.php");
}







if($_SESSION['login_type'] == 1): ?>
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Users</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM users where type = 2")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
           <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-gem"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Product</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM products")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-th-list"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Pending Orders</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM orders where status = 0")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-check"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Delivered Orders</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM orders where status = 3")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
      </div>

<?php else: ;?>
	 
          
<?php endif; ?>
