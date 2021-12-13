<?php include "header.php";

$id = "";
$edit = "";
if (isset($_GET['idProduct']) && $_GET['edit']) {
    $id = $_GET['idProduct'];
    $edit = $_GET['edit'];

}
require "processEdit.php";
?>

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
    <?php if ($edit == "product") {
    foreach ($products->getProductID($id) as $array) {
        ?>
    <!-- Main content -->
    <section class="content">
    <form action="" method="POST" enctype="multipart/form-data">
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
                <input type="hidden" value="<?=$array['id']?> " name="id">
                <input type="text" id="inputName" name="name" class="form-control" value="<?=$array['name']?>">

            </div>

              <div class="form-group">
                <label for="inputStatus">Manufacture</label>
                <select id="inputStatus" name="manu_id" class="form-control custom-select">
                <?php
foreach ($manu->getAllManu() as $value) {
            if ($array['manu_name'] == $value['manu_name']) {
                ?>
                                        <option selected value="<?=$value['manu_id']?>"><?=$value['manu_name']?>
                                        </option>

                                        <?php } else {?>
                                        <option value="<?=$value['manu_id']?>"><?=$value['manu_name']?></option>
                                        <?php }}?>
                </select>
              </div>
              <div class="form-group">
                <label for="inputStatus">Protype</label>
                <select id="inputStatus" name="type_id" class="form-control custom-select">
                <?php foreach ($protype->getAllProtype() as $value) {
            if ($value['type_name'] == $array['type_name']) {
                ?>
                                        <option selected value="<?=$value['type_id']?>"><?=$value['type_name']?>
                                        </option>
                                        <?php } else {?>
                                        <option value="<?=$value['type_id']?>"><?=$value['type_name']?></option>
                                        <?php }}?>
                </select>
              </div>
              <div class="form-group">
                <label >Price</label>
                <input class="form-control" name="price" required value="<?=$array['price']?> ">
              </div>
              <div class="form-group">
                <label for="inputDescription">Description</label>
                <textarea id="inputDescription" class="form-control" rows="4" required placeholder="Description"
                                            name="description"><?=$array['description']?>></textarea>
              </div>
              <div class="form-group"  >
                <label  for="inputProjectLeader">Image</label>
                <div class="controls">
                                        <input type="file" name="fileUpload" id="fileUpload">
                                        <img style="width:100px;height:100px"
                                            src="<?="../img/" . $array['images']?>" alt="">
                                    </div>
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
          <div class="form-actions">
                                        <button type="submit" name="submitEditProduct" class="btn btn-success">Cập
                                            nhật</button>
                                    </div>
        </div>
      </div>

</form><?php }}?>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include "footer.php"?>
