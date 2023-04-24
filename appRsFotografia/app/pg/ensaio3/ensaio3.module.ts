import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { Ensaio3PageRoutingModule } from './ensaio3-routing.module';

import { Ensaio3Page } from './ensaio3.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    Ensaio3PageRoutingModule
  ],
  declarations: [Ensaio3Page]
})
export class Ensaio3PageModule {}
