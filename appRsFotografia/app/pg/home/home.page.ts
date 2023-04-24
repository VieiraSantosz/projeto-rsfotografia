import { Component, OnInit } from '@angular/core';
import { UrlService } from '../../servidor/url.service';
import { map } from 'rxjs/operators';
import { Http } from '@angular/http';

@Component({
  selector: 'app-home',
  templateUrl: './home.page.html',
  styleUrls: ['./home.page.scss'],
})
export class HomePage implements OnInit {

  fotoss: any;

  constructor(public Http: Http, public servidorUrl: UrlService) {
    this.fotos();
  }

  ngOnInit() {
  }

  fotos(){
    // Buscar servicos
    this.Http.get(this.servidorUrl.getUrl()+'fotos.php')
    .pipe(map(rep =>rep.json()))
    .subscribe(listaDados => {
      this.fotoss = listaDados;
      console.log(this.servidorUrl.getUrl()+this.fotoss[2].fotoss);
    })
  }

} //Fim da CLASSE

