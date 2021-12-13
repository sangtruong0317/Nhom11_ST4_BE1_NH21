<?php
Class Product extends db{
    public function getAllProducts()
    {
        $sql = self::$connection->prepare("SELECT * 
        FROM products,manufactures,protypes
        WHERE products.manu_id=manufactures.manu_id
        AND products.type_id=protypes.type_id
        ORDER BY create_at DESC");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    function getProductID($id)
    {
        $sql = self::$connection->prepare("SELECT * 
        FROM products,manufactures,protypes
        WHERE products.manu_id = manufactures.manu_id and products.type_id = protypes.type_id AND products.id = ?");
        $sql->bind_param("i",$id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function addProduct($name,$manu_id,$type_id,$price,$image,$desc)
    {
        $sql = self::$connection->prepare("INSERT 
        INTO `products`(`name`, `manu_id`, `type_id`, `price`, `images`, `description`) 
        VALUES (?,?,?,?,?,?)");
        $sql->bind_param("siiiss", $name,$manu_id,$type_id,$price,$image,$desc);
        return $sql->execute(); //return an object
    }
    public function delProduct($id)
    {
        $sql = self::$connection->prepare("DELETE FROM `products` WHERE `id`=?");
        $sql->bind_param("i", $id);
        return $sql->execute(); //return an object
    }
    function updateProduct($name, $manu_id, $type_id, $price, $images, $description,$id){
        $query = self::$connection->prepare("UPDATE `products` SET `name` = ?,`manu_id` = ?,`type_id` = ?,
        `price` = ?,`images` = ?,`description` = ? WHERE `id` = ? ");
        $query->bind_param("siiissi",$name,$manu_id,$type_id,$price,$images,$description,$id);
        return $query->execute();
    }
}