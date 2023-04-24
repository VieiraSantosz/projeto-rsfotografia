<?php

    require_once("conexao.php");

    header('content-type: application/json; charset-UTF-8');
    header('Access-Control-Allow-Methods: POST, GET');

    $data = file_get_contents("php://input");
    $objData = json_decode($data);

    $nome         = $objData->nome;
    $email        = $objData->email;
    $celular      = $objData->celular;
    $endereco     = $objData->endereco;
    $data         = $objData->data;
    $conheceu     = $objData->conheceu;
    $mensagem     = $objData->mensagem;
    
    $nome         = stripslashes($nome);
    $email        = stripslashes($email);
    $celular      = stripslashes($celular);
    $endereco     = stripslashes($endereco);
    $data         = stripslashes($data);
    $conheceu     = stripslashes($conheceu);
    $mensagem     = stripslashes($mensagem);

    $nome          = trim($nome);
    $email         = trim($email);
    $celular       = trim($celular);
    $endereco      = trim($endereco);
    $data          = trim($data);
    $conheceu      = trim($conheceu);
    $mensagem      = trim($mensagem);

    $dados;

    $conexao = Conexao::LigarConexao();
    $conexao->exec("SET NAMES utf8");

    if($conexao){

    $query = $conexao->prepare("INSERT INTO contato (nomeContato, emailContato, telefoneContato, mensagemContato, enderecoContato, dataContato, conheceuContato) 
                                VALUES ('".$nome."', '".$email."', '".$celular."', '".$mensagem."', '".$endereco."', '".$data."', '".$conheceu."')");

    $query->execute();
    $dados = array('mensagem' => 'Dados inseridos com sucesso');
    echo json_encode($dados);
    
    }else{
        $dados = array('mensagem' => 'Não foi possível realizar o cadastro.');
        echo json_encode($dados);
    } 
?>