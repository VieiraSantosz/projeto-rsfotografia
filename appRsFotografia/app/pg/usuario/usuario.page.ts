import { Component, OnInit } from '@angular/core';
import { UsuariooService } from '../../servidor/usuarioo.service';
import { UrlService } from '../../servidor/url.service';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-usuario',
  templateUrl: './usuario.page.html',
  styleUrls: ['./usuario.page.scss'],

})

export class UsuarioPage implements OnInit {

  constructor(public dadosUsuario: UsuariooService, public servidorUrl: UrlService, public nav: NavController) {

    this.verificarLogin();
  
}

ngOnInit() {
}

verificarLogin(){
  if(localStorage.getItem('usuariologado') != null){
    console.log("Usuário Logado");  
    this.dadosUsuario.setIdUsuario(localStorage.getItem('idCliente'));
    this.dadosUsuario.setNomeUsuario(localStorage.getItem('nomeCliente'));
    this.dadosUsuario.setEmailUsuario(localStorage.getItem('emailCliente'));
    this.dadosUsuario.setStatusUsuario(localStorage.getItem('statusCliente'));
    this.dadosUsuario.setFotoUsuario(localStorage.getItem('fotoCliente'));
  
  }else{
    this.nav.navigateBack('/tabs/pg/perfil');
  }
}

sairLogin(){
  localStorage.clear();
  location.reload();

  localStorage.setItem('deslogado', 'sim');
  this.nav.navigateBack('/tabs/pg/home');
}

}



