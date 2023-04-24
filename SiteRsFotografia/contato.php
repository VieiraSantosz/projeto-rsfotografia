<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("admin/site.php");
$contato = new Site();

$ok = 0;

    if (isset($_POST["email"])) {

        $assunto    = "Site RsFotografia";
        $nome       = $_POST["nome"];
        $email      = $_POST["email"];
        $fone       = $_POST["fone"];
        $endereco   = $_POST["endereco"];
        $data       = $_POST["data"];
        $conheceu   = $_POST["conheceu"];
        $mens       = $_POST["mens"];

        $contato = new Site();
        $contato->nome = $nome;
        $contato->email = $email;
        $contato->fone = $fone;
        $contato->endereco = $endereco;
        $contato->data = $data;
        $contato->conheceu = $conheceu;
        $contato->msg = $mens;

        $contato->InserirContato();

        require 'email/Exception.php';
        require 'email/PHPMailer.php';
        require 'email/SMTP.php';

        //Envio para adm do site
        $mail = new PHPMailer();

        try {
            $mail->isSMTP();
            $mail->CharSet    = 'UTF-8';
            $mail->Host       = 'smtp-mail.outlook.com';
            $mail->SMTPAuth   = true;
            $mail->Username   = 'wesvieiratest@outlook.com';
            $mail->Password   = 'Vieirateste';
            $mail->Port       = 587;

            
            $mail->setFrom('wesvieiratest@outlook.com', 'SITE RSFOTOGRAFIA');
            $mail->addAddress("wesvieiratest@outlook.com");
           
            $mail->isHTML(true);                                  
            $mail->Subject  = 'Site RsFotografia';
            $mail->Body     = 
            "
                <strong>Mensagem do Site RsFotografia</strong>
                <br><br>
                <p>$nome</p>
                <p>$email</p>
                <p>$fone</p>
                <p>$endereco</p>
                <p>$data</p>
                <p>$conheceu</p>
                <p>$mens</p>
            ";
            $mail->AltBody  = 
            "
            <strong>Mensagem do Site RsFotografia</strong>
            <br><br>
            <p>$nome</p>
            <p>$email</p>
            <p>$fone</p>
            <p>$endereco</p>
            <p>$data</p>
            <p>$conheceu</p>
            <p>$mens</p>
            ";
            //$mail->send();
            if($mail->send()){ 
			
                $ok = 1;
                //echo "A Mensagem foi enviada com sucesso.";
                
            }else{
                $ok = 2;
                //echo "Não foi possível enviar a mensagem. Erro: " .$phpmail->ErrorInfo;
            }

        } catch (Exception $e) {
            echo "Error ao enviar o email: " . $e->getMessage();
        }     
        
        
        //Envio resposta para o usuário que preencheu o form no site
        $mailR = new PHPMailer();

        try {
            $mailR->isSMTP();
            $mailR->CharSet    = 'UTF-8';
            $mailR->Host       = 'smtp-mail.outlook.com';
            $mailR->SMTPAuth   = true;
            $mailR->Username   = 'wesvieiratest@outlook.com';
            $mailR->Password   = 'Vieirateste';
            $mailR->Port       = 587;

            
            $mailR->setFrom('wesvieiratest@outlook.com', 'SITE RSFOTOGRAFIA');
            $mailR->addAddress("$email");
           
            $mailR->isHTML(true);                                  
            $mailR->Subject  = 'Site RsFotografia';
            $mailR->Body     = 
            "
                Olá, <strong>$nome</strong> já recebemos seu e-mail e em breve daremos um retorno.
                <br><br>
                Obrigado.

                <strong>Equipe RsFotografia</strong>
            ";
            $mailR->AltBody  = 
            "
                Olá, <strong>$nome</strong> já recebemos seu e-mail e em breve daremos um retorno.
                <br><br>
                Obrigado.

                <strong>Equipe RsFotografia</strong>
            ";
            $mailR->send();
        } catch (Exception $e) {
            echo "Error ao enviar o email: " . $e->getMessage();
        }   
        
     } // FIM IF
?>

<!DOCTYPE html>

<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <title> RS Fotografia </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/reset.css">

    <link rel="stylesheet" type="text/css" href="css/slick.css"/>
    <link rel="stylesheet" type="text/css" href="css/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="css/lity.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">

</head>

<!-- TOPO -->
    <?php require_once("conteudo/topo.php") ?>
<!-- FIM TOPO -->

<!-- CONTATO -->
<div class="txtContato">
        <div class="contatoSec">
            <p> Contato </p>
        </div> 
        <div class="dados">
            <p> Deixe seus dados que entraremos em contato o mais breve possível!</p>
            <p> Caso prefira, chame em nosso whatsapp (11) 96822-1472.</p>
        </div>

<section class="formulario site">
        <h4>
            <?php 
                if($ok == 1){
                    echo $nome. ", sua mensagem foi enviada com sucesso.";
                }else if($ok == 2){
                    echo $nome. ", não foi possivel enviar sua mensagem";
                }
            ?>
        </h4>
        
    <div class="caixaform">
        <form method="post">
            <div class="divForm">
                <div> <input name="nome" type="text" placeholder="Nome: " require> </div>
                <div> <input name="email" type="email" placeholder="E-mail: " require> </div>
                <div> <input name="fone" type="tel" placeholder="Telefone: " require> </div>
                <div> <input name="endereco" type="text" placeholder="Endereço do Evento: " require> </div>
                <div> <input name="data" type="date" placeholder="Data do evento: " require> </div>
                <div> <input name="conheceu" type="text" placeholder="Como nos conheceu ?: " require> </div>
                <div> <input name="mens" type="text" placeholder="Mensagem: " require> </div>
            </div>
                <div class="enviar">
                    <div> <input type="submit" valeu="ENVIAR"> </div>
                </div>
        </form>
    </div>
</section>
                    
<!-- FIM CONTATO -->

<!-- RODAPÉ -->
<footer class="txtCadasSec">
    <div class="rodapeSec">    
        <div class="informacoes">
            <div class="sobre">
                <p> Sobre nós </p>
                <img src="img/logoRs.png" alt="Sobre">
            </div>        
            <div>
                <h2> RS Fotografia </h2>
                <h2> Empresa de Ensaios </h2>
                <h2> Fotograficos </h2>
            </div>
        </div>
           
        <div class="contato">
            <h2> CONTATO </h2>
            <h2> (11) 96822-1472 </h2>
            <h2> rsfotografia.contato@gmail.com </h2>
            <h2> Jardim Helena </h2>
            <h2> São Paulo / SP </h2>
        </div>
    </div>    
    </footer>
        <div class="softweb">
            <h2>Feito por SoftWeb Designer!</h2>
        </div>
<!-- FIM RODAPÉ -->

    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/slick.js"></script>
    <script type="text/javascript" src="js/lity.js"></script>
    <script type="text/javascript" src="js/wow.js"></script>
    <script type="text/javascript" src="js/animacoes.js"></script>

</body>

</html>