import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { Ensaio2Page } from './ensaio2.page';

const routes: Routes = [
  {
    path: '',
    component: Ensaio2Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class Ensaio2PageRoutingModule {}
