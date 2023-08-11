import { Component, OnInit } from '@angular/core';
import { GraphComponent } from '../abstract/graph-component/graph-component.component';

/**
 * Pie Graph Component.
 */
@Component({
  selector: 'app-pie-graph',
  templateUrl: './pie-graph.component.html',
  styleUrls: ['./pie-graph.component.css']
})
export class PieGraphComponent extends GraphComponent implements OnInit {

  constructor() { super(); }

  ngOnInit(): void { }

  renderGraph(): void {
    // Logic to render pie graph using ng2-charts
  }
}

