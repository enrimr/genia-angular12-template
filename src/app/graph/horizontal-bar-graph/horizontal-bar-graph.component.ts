import { Component, OnInit } from '@angular/core';
import { GraphComponent } from '../graph.abstract';

/**
 * Represents a horizontal bar graph component.
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
