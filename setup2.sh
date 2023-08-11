#!/bin/bash

# Crear la estructura de directorios
mkdir -p src/app/dashboard
mkdir -p src/app/horizontal-bar-graph
mkdir -p src/app/pie-chart-graph

# Componente abstracto Graph
echo "import { Component, Input } from '@angular/core';

/**
 * @abstract
 * Represents an abstract graph component.
 */
@Component({
  template: ''
})
export abstract class GraphComponent {
  /**
   * @Input() data: Array<any> - Represents the data for the graph.
   * @Input() options: any - Represents configuration options for the graph.
   */
  @Input() data: Array<any> = [];
  @Input() options: any = {};

  /**
   * Abstract method to render the graph.
   */
  abstract renderGraph(): void;
}" > src/app/graph.abstract.ts

# Componente abstracto Report
echo "import { Component } from '@angular/core';

/**
 * @abstract
 * Represents an abstract report component.
 */
@Component({
  template: ''
})
export abstract class ReportComponent {
  /**
   * Abstract method to render the report.
   */
  abstract renderReport(): void;
}" > src/app/report.abstract.ts

# Componente HorizontalBarGraph
echo "import { Component, OnInit } from '@angular/core';
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
}" > src/app/horizontal-bar-graph/horizontal-bar-graph.component.ts

echo "<div class=\"bar-container\">
  <canvas baseChart 
          [datasets]=\"data\"
          [options]=\"options\"
          [chartType]=\"barChartType\"></canvas>
</div>" > src/app/horizontal-bar-graph/horizontal-bar-graph.component.html

echo ".bar-container {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: auto;
  padding: 20px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  background-color: #f9f9f9;
}" > src/app/horizontal-bar-graph/horizontal-bar-graph.component.css

# Componente PieChartGraph
echo "import { Component, OnInit } from '@angular/core';
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
}" > src/app/pie-chart-graph/pie-chart-graph.component.ts

echo "<div class=\"pie-container\">
  <canvas baseChart 
          [data]=\"data\"
          [options]=\"options\"
          [chartType]=\"pieChartType\"></canvas>
</div>" > src/app/pie-chart-graph/pie-chart-graph.component.html

echo ".pie-container {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: auto;
  padding: 20px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  background-color: #f9f9f9;
}" > src/app/pie-chart-graph/pie-chart-graph.component.css

# Componente Dashboard
echo "import { Component, OnInit } from '@angular/core';

/**
 * Represents a dashboard to showcase different graphs.
 */
@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  public barChartData: Array<any> = [
    {data: [65, 59, 80, 81, 56, 55, 40], label: 'Sample Data'}
  ];
  public barChartOptions: any = {
    scaleShowVerticalLines: false,
    responsive: true
  };

  public pieChartData: Array<any> = [300, 500, 100];
  public pieChartOptions: any = {
    responsive: true
  };

  ngOnInit(): void {}
}" > src/app/dashboard/dashboard.component.ts

echo "<section class=\"dashboard\">
  <div class=\"chart-wrapper\">
    <app-horizontal-bar-graph [data]=\"barChartData\" [options]=\"barChartOptions\"></app-horizontal-bar-graph>
  </div>
  
  <div class=\"chart-wrapper\">
    <app-pie-chart-graph [data]=\"pieChartData\" [options]=\"pieChartOptions\"></app-pie-chart-graph>
  </div>
</section>" > src/app/dashboard/dashboard.component.html

echo ".dashboard {
  display: flex;
  flex-direction: column;
  gap: 20px;
  padding: 20px;
}

.chart-wrapper {
  padding: 20px;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
}" > src/app/dashboard/dashboard.component.css

echo "¡Configuración completada!"
