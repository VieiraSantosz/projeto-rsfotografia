<?php
    require_once("conexao.php");
    try {
        

    $conexao = Conexao::LigarConexao();
    $conexao -> exec('SET NAMES UTF8');

    if(!$conexao){
        echo 'Não foi possivel fazer a conexao com o banco de dados';
    }

    $query = $conexao->prepare("SELECT * FROM cliente ORDER BY idCliente");
    $query->execute();
    $json="[";

    while($resultado = $query->fetch()){
        if($json!= "["){
            $json .= ",";
        }
        $json .= '{"idCliente" : "'.$resultado["idCliente"].'",';

            $json .= '"nomeCliente":"'.$resultado["nomeCliente"].'",';
            $json .= '"emailCliente":"'.$resultado["emailCliente"].'",';
            $json .= '"senhaCliente":"'.$resultado["senhaCliente"].'",';
            $json .= '"statusCliente":"'.$resultado["statusCliente"].'",';
            $json .= '"dataCadCliente":"'.$resultado["dataCadCliente"].'",';

            $json .= '"fotoCliente" : "'.$resultado["fotoCliente"].'"}';
    }

    $json .= ']';
    echo $json;


} catch (Excepition $e) {
    echo "Erro" . $e->getMensage();
}
?>