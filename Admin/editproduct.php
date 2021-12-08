<?php include"header.php" ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Product Edit</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Product Edit</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
    <form action="edit.php" method="POST" enctype="multipart/form-data">
      <div class="row">
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">General</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            
            <div class="card-body">
          
              <div class="form-group">
                <label for="inputName">Name</label>
                <input type="text" id="inputName" class="form-control" value="">
                
            </div>
              
              <div class="form-group">
                <label for="inputStatus">Manufacture</label>
                <select id="inputStatus" class="form-control custom-select">
                  <option disabled>Select one</option>
                  <?php
                  $getAllManu=$manu->getAllManu();
                  foreach($getAllManu as $value){
                   ?>
                  <option value=<?php echo $value['manu_id'] ?>>
                  <?php echo $value['manu_name'] ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="form-group">
                <label for="inputStatus">Protype</label>
                <select id="inputStatus" class="form-control custom-select">
                  <option disabled>Select one</option>
                  <?php
                  $getAllProtype=$protype->getAllProtype();
                  foreach($getAllProtype as $value){
                   ?>
                  <option value=<?php echo $value['type_id'] ?>>
                  <?php echo $value['type_name'] ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="form-group">
                <label >Price</label>
                <input class="form-control" value="">
              </div>
              <div class="form-group">
                <label for="inputDescription">Description</label>
                <textarea id="inputDescription" class="form-control" rows="4"></textarea>
              </div>
              <div class="form-group"  >
                <label  for="inputProjectLeader">Image</label>
                <input name="image" type="file" class="form-control">
              </div>
              
            </div>
            
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        
      </div>
      <div class="row">
        <div class="col-12">
          <a href="#" class="btn btn-secondary">Cancel</a>
          <input type="submit" value="Save Changes" class="btn btn-success float-right">
        </div>
      </div>
      
</form>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include"footer.php" ?>
