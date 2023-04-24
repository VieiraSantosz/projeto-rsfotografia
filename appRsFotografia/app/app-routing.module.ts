import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.module').then(m => m.TabsPageModule)
  },
  {
    path: 'home',
    loadChildren: () => import('./pg/home/home.module').then( m => m.HomePageModule)
  },
  {
    path: 'sobre',
    loadChildren: () => import('./pg/sobre/sobre.module').then( m => m.SobrePageModule)
  },
  {
    path: 'contato',
    loadChildren: () => import('./pg/contato/contato.module').then( m => m.ContatoPageModule)
  },
  {
    path: 'perfil',
    loadChildren: () => import('./pg/perfil/perfil.module').then( m => m.PerfilPageModule)
  },
  {
    path: 'ensaio1',
    loadChildren: () => import('./pg/ensaio1/ensaio1.module').then( m => m.Ensaio1PageModule)
  },
  {
    path: 'ensaio2',
    loadChildren: () => import('./pg/ensaio2/ensaio2.module').then( m => m.Ensaio2PageModule)
  },
  {
    path: 'ensaio3',
    loadChildren: () => import('./pg/ensaio3/ensaio3.module').then( m => m.Ensaio3PageModule)
  },
  {
    path: 'cadastro',
    loadChildren: () => import('./pg/cadastro/cadastro.module').then( m => m.CadastroPageModule)
  },
  {
    path: 'login',
    loadChildren: () => import('./pg/login/login.module').then( m => m.LoginPageModule)
  },
  {
    path: 'usuario',
    loadChildren: () => import('./pg/usuario/usuario.module').then( m => m.UsuarioPageModule)
  }
];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
