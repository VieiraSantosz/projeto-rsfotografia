import { Component, OnInit } from '@angular/core';
import { UsuariooService } from '../../servidor/usuarioo.service';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.page.html',
  styleUrls: ['./perfil.page.scss'],
})
export class PerfilPage implements OnInit {

  constructor(public dadosUsuario: UsuariooService, public nav:NavController) { 
    
    if(localStorage.getItem('deslogado') == 'sim'){

      localStorage.setItem('deslogado', 'nao');

      location.reload;

    }



    if(localStorage.getItem('usuarioLogado') != null) {

      this.autenticarUsuario();

      this.nav.navigateBack('/tabs/pg/usuario');

    }

  }

  ngOnInit() {
   
  }

  autenticarUsuario(){
    this.dadosUsuario.setIdUsuario(localStorage.getItem('idCliente'));
    this.dadosUsuario.setNomeUsuario(localStorage.getItem('nomeCliente'));
    this.dadosUsuario.setEmailUsuario(localStorage.getItem('emailCliente'));
    this.dadosUsuario.setStatusUsuario(localStorage.getItem('statusCliente'));
    this.dadosUsuario.setFotoUsuario(localStorage.getItem('fotoCliente'));
  }

}
