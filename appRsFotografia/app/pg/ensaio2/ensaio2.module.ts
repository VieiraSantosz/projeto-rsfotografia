import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { Ensaio2PageRoutingModule } from './ensaio2-routing.module';

import { Ensaio2Page } from './ensaio2.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    Ensaio2PageRoutingModule
  ],
  declarations: [Ensaio2Page]
})
export class Ensaio2PageModule {}
