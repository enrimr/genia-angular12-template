import { Component } from '@angular/core';
import { AbstractGraphComponent } from '../graph.abstract.ts';

@Component({
  selector: 'app-horizontal-bar-graph',
  templateUrl: './horizontal-bar.component.html',
  styleUrls: ['./horizontal-bar.component.css']
})
export class HorizontalBarComponent extends AbstractGraphComponent {
  renderGraph() {
    // Logic to render horizontal bar graph using ng2-charts.
  }
}
