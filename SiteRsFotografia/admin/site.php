<?php
    require_once("conexao.php");

    class site{
        // Atributos (variaveis)
        public $nome;
        public $email;
        public $fone;
        public $endereco;
        public $data;
        public $conheceu;
        public $msg;

        // Metodo (função)
        public function InserirContato(){
            $query = "INSERT INTO `contato`(`nomeContato`, `emailContato`, `telefoneContato`, `mensagemContato`, `enderecoContato`, `conheceuContato`, `dataContato`) 
                      VALUES ('".$this->nome."', '".$this->email."','".$this->fone."','".$this->msg."','".$this->endereco."','".$this->conheceu."','".$this->data."')";
            
            $conexao = Conexao::LigarConexao();
            $conexao -> exec($query);
        }
    }
?>