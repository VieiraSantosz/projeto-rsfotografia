<?php
    header('Access-Control-Allow-Origin: *');
    class Conexao{
        public static function LigarConexao(){
            $conn = new PDO('mysql:host=localhost;dbname=u283879542_rsfotografia','root','');
            //$conn = new PDO('mysql:host=213.190.6.22;dbname=u283879542_rsfotografia','u283879542_rsfotografia','Rsfotografia01');
            return $conn;
        }
    }
?>