import { Component, OnInit } from '@angular/core';
import { UrlService } from '../../servidor/url.service'
import { UsuariooService } from '../../servidor/usuarioo.service';
import { Http } from '@angular/http';
import { map } from 'rxjs/operators';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {

  email:string;
  senha:string;

  constructor(public urlServidor:UrlService, public http:Http, public nav:NavController, public dadosUsuario:UsuariooService) {
    this.email = "neidesouza@gmail.com";
    this.senha = "1234";

  }

  ngOnInit() {
    document.querySelector('ion-tab-bar').style.display = 'none';
  }


  async logar(){

    if(this.email == "" || this.senha == "" ){ 

      this.urlServidor.Alertas('RsFotografia','preencha todos os dados');

    }else{

      this.http.get(this.urlServidor.getUrl()+'login.php?email='+this.email+'&senha='+this.senha)
      .pipe(map(rep=>rep.json()))
      .subscribe(data=>{

      if(data.msg.Logado=='Sim'){
        if(data.Dados.statusCliente=='ATIVO'){
          this.urlServidor.Alertas(data.Dados.nomeCliente, 'Seja Bem Vindo!');
          

          //Pegar e guardar os dados no Local Storage:
          localStorage.setItem('idCliente', data.Dados.idCliente);
          localStorage.setItem('nomeCliente', data.Dados.nomeCliente);
          localStorage.setItem('emailCliente', data.Dados.emailCliente);
          localStorage.setItem('statusCliente', data.Dados.statusCliente);
          localStorage.setItem('fotoCliente', data.Dados.fotoCliente);

          localStorage.setItem('usuarioLogado', data);

          this.dadosUsuario.setIdUsuario(localStorage.getItem('idCliente'));
          this.dadosUsuario.setNomeUsuario(localStorage.getItem('nomeCliente'));
          this.dadosUsuario.setEmailUsuario(localStorage.getItem('emailCliente'));
          this.dadosUsuario.setStatusUsuario(localStorage.getItem('statusCliente'));
          this.dadosUsuario.setFotoUsuario(localStorage.getItem('fotoCliente'));

          
          document.querySelector('ion-tab-bar').style.display = 'flex';

          //Direcionar
          this.nav.navigateBack('/tabs/pg/home');
        }else{
          this.urlServidor.Alertas(data.Dados.nomeCliente, 'Sua conta se encontra INATIVA, entre em contato com a empresa!');
        }
      }else{
        this.urlServidor.Alertas('RsFotografia', 'Usuário ou Senha Inválida!');
      }  
      
      });
    }
  }

  autenticarUsuario(){
    this.dadosUsuario.setIdUsuario(localStorage.getItem('idCliente'));
    this.dadosUsuario.setNomeUsuario(localStorage.getItem('nomeCliente'));
    this.dadosUsuario.setEmailUsuario(localStorage.getItem('emailCliente'));
    this.dadosUsuario.setStatusUsuario(localStorage.getItem('statusCliente'));
    this.dadosUsuario.setFotoUsuario(localStorage.getItem('fotoCliente'));
  }
}
