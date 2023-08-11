import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ChartsModule } from 'ng2-charts';
import { HorizontalBarGraphComponent } from './graph/horizontal-bar-graph/horizontal-bar-graph.component';
import { PieChartGraphComponent } from './graph/pie-chart-graph/pie-chart-graph.component';
import { DashboardComponent } from './view/dashboard/dashboard.component';

@NgModule({
  declarations: [
    AppComponent,
    HorizontalBarGraphComponent,
    PieChartGraphComponent,
    DashboardComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ChartsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
