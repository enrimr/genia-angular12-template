import { Component } from '@angular/core';
import { AbstractGraphComponent } from '../graph.abstract.ts';

@Component({
  selector: 'app-pie-graph',
  templateUrl: './pie.component.html',
  styleUrls: ['./pie.component.css']
})
export class PieComponent extends AbstractGraphComponent {
  renderGraph() {
    // Logic to render pie chart using ng2-charts.
  }
}
