import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HorizontalBarGraphComponentComponent } from './src/graph/horizontal-bar-graph/horizontal-bar-graph-component/horizontal-bar-graph-component.component';
import { PieGraphComponentComponent } from './src/graph/pie-graph/pie-graph-component/pie-graph-component.component';
import { DemoComponent } from './demo/demo.component';

@NgModule({
  declarations: [
    AppComponent,
    HorizontalBarGraphComponentComponent,
    PieGraphComponentComponent,
    DemoComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
