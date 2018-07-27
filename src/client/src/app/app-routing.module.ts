import { NgModule }  from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { SharedComponent }  from './shared/shared.component';
import { AboutUserBodyComponent } from './about-user-body/about-user-body.component';
import { TestComponent } from './test/test.component';
import { PostComponent } from './post/post.component';
import { NavigationToolsComponent } from './navigation-tools/navigation-tools.component';

const routes: Routes = [
  {
    path: '',
    redirectTo: '',
    pathMatch: 'full'
  },
  {
    path: 'post',
    component: PostComponent,
  },
  {
    path: 'interesting',
    component: TestComponent,
  },
  {
    path: '**',
    component: AboutUserBodyComponent,
  }
];

@NgModule({
  imports: [ RouterModule.forRoot(routes) ],
  exports: [ RouterModule ]
})

export class AppRoutingModule {}