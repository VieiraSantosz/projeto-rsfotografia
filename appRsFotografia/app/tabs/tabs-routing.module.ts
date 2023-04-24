import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TabsPage } from './tabs.page';

const routes: Routes = [
  {
    path: 'tabs/pg',
    component: TabsPage,
    children: [
      {
        path: 'home',
        loadChildren: () => import('../pg/home/home.module').then(m => m.HomePageModule)
      },
      {
        path: 'sobre',
        loadChildren: () => import('../pg/sobre/sobre.module').then(m => m.SobrePageModule)
      },
      {
        path: 'contato',
        loadChildren: () => import('../pg/contato/contato.module').then(m => m.ContatoPageModule)
      },
      {
        path: 'perfil',
        loadChildren: () => import('../pg/perfil/perfil.module').then(m => m.PerfilPageModule)
      },
      {
        path: 'ensaio1',
        loadChildren: () => import('../pg/ensaio1/ensaio1.module').then( m => m.Ensaio1PageModule)
      },
      {
        path: 'ensaio2',
        loadChildren: () => import('../pg/ensaio2/ensaio2.module').then( m => m.Ensaio2PageModule)
      },
      {
        path: 'ensaio3',
        loadChildren: () => import('../pg/ensaio3/ensaio3.module').then( m => m.Ensaio3PageModule)
      },
      {
        path: 'cadastro',
        loadChildren: () => import('../pg/cadastro/cadastro.module').then( m => m.CadastroPageModule)
      },
      {
        path: 'login',
        loadChildren: () => import('../pg/login/login.module').then( m => m.LoginPageModule)
      },
      {
        path: 'usuario',
        loadChildren: () => import('../pg/usuario/usuario.module').then( m => m.UsuarioPageModule)
      },
      {
        path: '',
        redirectTo: '/tabs/pg/home',
        pathMatch: 'full'
      }
    ]
  },
  {
    path: '',
    redirectTo: '/tabs/pg/home',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
})
export class TabsPageRoutingModule {}
