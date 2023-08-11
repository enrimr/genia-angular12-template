import { Component, OnInit } from '@angular/core';
import { GraphComponent } from '../graph.abstract';

/**
 * HorizontalBarGraphComponent is a concrete implementation of GraphComponent. It displays data in the form of a horizontal bar chart.
 * 
 * @remarks
 * This component utilizes ng2-charts and Chart.js to provide visualization.
 * 
 * @example
 * ```html
 * <app-horizontal-bar-graph [data]="yourDataArray" [options]="yourOptionsObject"></app-horizontal-bar-graph>
 * ```
 * 
 * @property barChartType - Specifies the type of the chart (horizontalBar in this case).
 */

@Component({
  selector: 'app-horizontal-bar-graph',
  templateUrl: './horizontal-bar-graph.component.html',
  styleUrls: ['./horizontal-bar-graph.component.css']
})
export class HorizontalBarGraphComponent extends GraphComponent implements OnInit {
  
  public barChartType: string = 'horizontalBar';
  
  ngOnInit(): void {
    this.renderGraph();
  }

  renderGraph(): void {
    // Logic to render the horizontal bar graph using ng2-charts.
    // This will utilize this.data and this.options.
  }
}
