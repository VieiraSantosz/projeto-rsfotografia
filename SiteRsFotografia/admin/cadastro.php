<?php

    require_once("conexao.php");

    header('content-type: application/json; charset-UTF-8');
    header('Access-Control-Allow-Methods: POST, GET');

    $data = file_get_contents("php://input");
    $objData = json_decode($data);

    $nome       = $objData->nome;
    $email      = $objData->email;
    $senha      = $objData->senha;
    $cidade     = $objData->cidade;

    $dataCad    = date('Y-m-d');
    $status     = 'ATIVO';
    
    $nome       = stripslashes($nome);
    $email      = stripslashes($email);
    $senha      = stripslashes($senha);
    $cidade     = stripslashes($cidade);

    $nome        = trim($nome);
    $email       = trim($email);
    $senha       = trim($senha);
    $cidade      = trim($cidade);

    $nomeFoto   = preg_replace('/\s+/', '', $nome);
    $foto       = 'cliente/'.$nomeFoto.'.png';

    $dados;

    $conexao = Conexao::LigarConexao();
    $conexao->exec("SET NAMES utf8");

    if($conexao){

    $query = $conexao->prepare("INSERT INTO cliente (nomeCliente, emailCliente, senhaCliente, statusCliente, dataCadCliente, fotoCliente, cidadeCliente) 
                                VALUES ('".$nome."', '".$email."', '".$senha."', '".$status."', '".$dataCad."', '".$foto."','".$cidade."')");

    $query->execute();
    $dados = array('mensagem' => 'Dados inseridos com sucesso');
    echo json_encode($dados);
    
    }else{
        $dados = array('mensagem' => 'Não foi possível realizar o cadastro.');
        echo json_encode($dados);

    }    
?>