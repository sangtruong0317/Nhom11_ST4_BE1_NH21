<?php
    if(isset($_POST['submitEditProduct'])){
        $id = $_POST['id'];
        $name = $_POST['name'];
        $manu_id = $_POST['manu_id'];
        $type_id = $_POST['type_id'];
        $price = $_POST['price'];
        $images = $_FILES['fileUpload']['name'];
        $path = "../img/" . basename($_FILES['fileUpload']['name']);
        $description = $_POST['description'];
        
        
        if($images != ""){
            if(getimagesize($_FILES['fileUpload']['tmp_name'])){
                foreach($products->getProductID($id) as $value){
                    $pathOld = "../img/" . $value['images'] ;
                    if(file_exists($pathOld)){
                        unlink($pathOld);
                    }
                        if(move_uploaded_file($_FILES['fileUpload']['tmp_name'],$path)){
                        if($products->updateProduct($name, $manu_id, $type_id, $price, $images, $description,$id)){
                            echo "<script>alert('Đã sửa');window.location.href='products.php'</script>";
                        }
                        else{
                            echo "Sửa không thành công";
                        }
                    }
                }
        }        
            else{
                echo "<script>alert('Ảnh không hợp lệ')</script>";
            }
        }
        else{
            foreach($products->getAllProducts() as $value){
                if($id == $value['id']){
                    
                    $image = $_FILES['fileUpload']['name'];
                    $image = $value['images'];
                    if($products->updateProduct($name,$manu_id,$type_id,$price,$images,$description,$id)){
                        echo "<script>alert('Đã sửa');window.location.href='products.php'</script>";
                    }
                    else{
                        echo "Sửa không thành công";
                    }
                }
            }
        }
        
    }
    if(isset($_POST['editManu'])){
        $id = $_POST['id'];
        $manu_name = $_POST['name'];
        if($manufacture->updateManu($id,$manu_name)){
            echo "<script>alert('Đã sửa');window.location.href='manufactures.php'</script>";
        }
    }
    if(isset($_POST['editProtype'])){
        $id = $_POST['id'];
        $type_name = $_POST['name'];
        if($protype->updateProtype($id,$type_name)){
            echo "<script>alert('Đã sửa');window.location.href='protypes.php'</script>";
        }
    }

    if(isset($_POST['editUser'])){
        $id = $_POST['id'];
        $name = $_POST['name'];
        $password = $_POST['password'];
        $role = $_POST['role'];
        if($user->updateUser($id,$name,$password,$role)){
            echo "<script>alert('Sửa thành công');window.location.href='users.php'</script>";
        }
    }
?>