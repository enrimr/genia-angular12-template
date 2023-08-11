import { Component, OnInit } from '@angular/core';
import { GraphComponent } from '../abstract/graph-component/graph-component.component';

/**
 * Horizontal Bar Graph Component.
 */
@Component({
  selector: 'app-horizontal-bar-graph',
  templateUrl: './horizontal-bar-graph.component.html',
  styleUrls: ['./horizontal-bar-graph.component.css']
})
export class HorizontalBarGraphComponent extends GraphComponent implements OnInit {

  constructor() { super(); }

  ngOnInit(): void { }

  renderGraph(): void {
    // Logic to render horizontal bar graph using ng2-charts
  }
}

