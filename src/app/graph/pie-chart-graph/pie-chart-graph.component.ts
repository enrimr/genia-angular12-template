import { Component, OnInit } from '@angular/core';
import { GraphComponent } from '../graph.abstract';

/**
 * Represents a pie chart graph component.
 */
@Component({
  selector: 'app-pie-chart-graph',
  templateUrl: './pie-chart-graph.component.html',
  styleUrls: ['./pie-chart-graph.component.css']
})
export class PieChartGraphComponent extends GraphComponent implements OnInit {
  
  public pieChartType: string = 'pie';
  
  ngOnInit(): void {
    this.renderGraph();
  }

  renderGraph(): void {
    // Logic to render the pie chart using ng2-charts.
    // This will utilize this.data and this.options.
  }
}
