import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { Ensaio1Page } from './ensaio1.page';

const routes: Routes = [
  {
    path: '',
    component: Ensaio1Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class Ensaio1PageRoutingModule {}
