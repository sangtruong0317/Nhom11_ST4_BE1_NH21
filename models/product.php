<?php
class Product extends Db
{
    public function getNewPhone(){
        $sql = self::$connection->prepare("SELECT * FROM products WHERE`type_id`=122 ORDER BY create_at DESC LIMIT 0,10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getNewLaptop(){
        $sql = self::$connection->prepare("SELECT * FROM products WHERE`type_id`=123 ORDER BY create_at DESC LIMIT 0,10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getNewHeadphone(){
        $sql = self::$connection->prepare("SELECT * FROM products WHERE`type_id`=124 ORDER BY create_at DESC LIMIT 0,10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getNewWatch(){
        $sql = self::$connection->prepare("SELECT * FROM products WHERE`type_id`=125 ORDER BY create_at DESC LIMIT 0,10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getNewTV(){
        $sql = self::$connection->prepare("SELECT * FROM products WHERE`type_id`=126 ORDER BY create_at DESC LIMIT 0,10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getAllProducts()
    {
        $sql = self::$connection->prepare("SELECT * FROM products");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    //tim kiem theo id
    public function getProductById($id)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE id = ?");
        $sql->bind_param("i", $id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    //tim kiem theo tu khoa
    public function search($keyword)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE `name` LIKE ?");
        $keyword = "%$keyword%";
        $sql->bind_param("s", $keyword);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    //L???y SP theo type ID
    public function getProductByType($type_id)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE type_id = ?");
        $sql->bind_param("i", $type_id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    //H??m vi???t ra danh s??ch t???t c??? s???n ph???m (ph??n trang) 
    function get3ProductsByType($type_id,$page, $perPage)
    {
        // T??nh s??? th??? t??? trang b???t ?????u  
        $firstLink = ($page - 1) * $perPage;
        //D??ng LIMIT ????? gi???i h???n s??? l?????ng hi???n th??? 1 trang 
        $sql = self::$connection->prepare("SELECT * FROM Products WHERE type_id= ? LIMIT ?, ?");
        $sql->bind_param("iii", $type_id,$firstLink,$perPage);
        $sql->execute(); //return an object 
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array   
    }
    function paginate($url, $total, $page, $perPage)
    {
        $totalLinks = ceil($total / $perPage);
        $link = "";
        for ($j = 1; $j <= $totalLinks; $j++) {
            $link = $link . "<li> <a href='$url&page=$j' > $j </a> </li>";
        }
        return $link;
    }
}
