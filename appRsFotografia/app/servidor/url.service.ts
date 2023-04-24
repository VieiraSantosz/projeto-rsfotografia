import { Injectable } from '@angular/core';
import { AlertController } from '@ionic/angular';

@Injectable({
    providedIn: 'root'
  })
  export class UrlService {
    url: string = 'http://localhost/SiteRSFotografia/admin/';

    constructor(public alerta:AlertController) { }

    getUrl(){ //Pegar url
      return this.url;
    }
  

  async Alertas(titulo, msg) {

    const alert = await this.alerta.create({
      header: titulo,
      message: msg,
      buttons: ['OK']
    });

    await alert.present();
  }
}
