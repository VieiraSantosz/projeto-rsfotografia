import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { Ensaio1PageRoutingModule } from './ensaio1-routing.module';

import { Ensaio1Page } from './ensaio1.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    Ensaio1PageRoutingModule
  ],
  declarations: [Ensaio1Page]
})
export class Ensaio1PageModule {}
