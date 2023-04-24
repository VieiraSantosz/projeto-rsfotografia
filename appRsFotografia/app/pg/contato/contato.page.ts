import { Component, OnInit } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { map } from 'rxjs/operators';
import { UrlService } from '../../servidor/url.service';
import { FormBuilder, Validator, Validators } from '@angular/forms';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-contato',
  templateUrl: './contato.page.html',
  styleUrls: ['./contato.page.scss'],
})
export class ContatoPage implements OnInit {

  cadastro:any;
  nome:any;
  email:any;
  celular:any;
  endereco: any;
  data: any;
  conheceu:any;
  mensagem:any;

  constructor(public http: Http, public formConst: FormBuilder, public nav: NavController, public servidorUrl: UrlService) { 

    this.cadastro = this.formConst.group({
    nome:['',Validators.required],
    email:['',Validators.required],
    celular:['',Validators.required],
    endereco:['',Validators.required],
    data:['',Validators.required],
    conheceu:['',Validators.required],
    mensagem:['',Validators.required],
    })
   }

  ngOnInit () {
  }

  async cadCliente() {

    if(this.nome == undefined || this.email == undefined || this.celular == undefined || this.endereco == undefined 
      || this.data == undefined || this.conheceu == undefined || this.mensagem == undefined){
      this.servidorUrl.Alertas('Atenção', 'Preencha todos os campos');
    }else{
        this.cadDados(this.cadastro.value).subscribe(
          data => {
            console.log(this.nome + 'Dados teste');
            this.servidorUrl.Alertas(this.nome, 'Enviado com sucesso!');
          },
          erro => {
            console.log(this.nome + 'Erros de dados');
            this.servidorUrl.Alertas(this.nome, 'Dados Incorretos.')
          }
        )
      }
    }
  

  cadDados(nome){
    let cabecalho = new Headers({'content-type': 'application/x-www-form-urlencoded'});
    return this.http.post(this.servidorUrl.getUrl() + 'contato.php', nome, {
      headers: cabecalho,
      method: 'POST'
    }).pipe(map(
      (res: Response) => { return res.json(); }
    ));  
  }

}