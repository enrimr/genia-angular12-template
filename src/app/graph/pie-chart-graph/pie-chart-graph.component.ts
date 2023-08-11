import { Component, OnInit } from '@angular/core';
import { GraphComponent } from '../graph.abstract';
import { ChartType } from 'chart.js';

/**
 * PieChartGraphComponent is a concrete implementation of GraphComponent. It displays data in the form of a pie chart.
 * 
 * @remarks
 * This component utilizes ng2-charts and Chart.js to provide visualization.
 * 
 * @example
 * ```html
 * <app-pie-chart-graph [data]="yourDataArray" [options]="yourOptionsObject"></app-pie-chart-graph>
 * ```
 * 
 * @property pieChartType - Specifies the type of the chart (pie in this case).
 */

@Component({
  selector: 'app-pie-chart-graph',
  templateUrl: './pie-chart-graph.component.html',
  styleUrls: ['./pie-chart-graph.component.css']
})
export class PieChartGraphComponent extends GraphComponent implements OnInit {
  
  public pieChartType: ChartType = 'pie';
  
  ngOnInit(): void {
    this.renderGraph();
  }

  renderGraph(): void {
    // Logic to render the pie chart using ng2-charts.
    // This will utilize this.data and this.options.
  }
}
