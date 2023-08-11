#!/bin/bash

# 2. Añadir las dependencias y devDependencies requeridas.
ng add ng2-charts@^4.1.1 
ng add chart.js@^3.9.1

# 3. Crear los componentes abstractos manualmente.
echo "
import { Component, Input } from '@angular/core';

/**
 * Represents an abstract component for reports.
 *
 * @remarks
 * This component should be extended by any specific report type component.
 *
 * @public
 */
export abstract class Report {
  @Input() data: any = {};
}
" > src/app/report.abstract.ts

echo "
import { Component, Input } from '@angular/core';

/**
 * Represents an abstract component for graphs.
 *
 * @remarks
 * This component should be extended by any specific graph type component.
 *
 * @public
 */
export abstract class Graph {
  @Input() data: any = {};

  /**
   * Render the graph based on the provided data.
   */
  abstract renderGraph(): void;
}
" > src/app/graph.abstract.ts

# 4. Crear los componentes específicos de gráficos usando ng generate.
ng generate component bar-graph
ng generate component pie-graph

# 5. Modificar el código fuente TypeScript, templates HTML y tests para estos componentes.
# Esto es una simplificación, idealmente, usarías un programa o script más avanzado para hacer estas modificaciones.

# Bar Graph Component
echo "
import { Component, OnInit } from '@angular/core';
import { Graph } from '../graph.abstract';
import { ChartType, ChartOptions } from 'chart.js';
import { SingleDataSet, Label } from 'ng2-charts';

/**
 * Represents a horizontal bar graph component.
 *
 * @remarks
 * This component uses the ng2-charts library to visualize data in a horizontal bar format.
 *
 * @example
 * <app-bar-graph></app-bar-graph>
 *
 * @public
 */
@Component({
  selector: 'app-bar-graph',
  templateUrl: './bar-graph.component.html',
  styleUrls: ['./bar-graph.component.css']
})
export class BarGraphComponent extends Graph implements OnInit {
  public barChartOptions: ChartOptions = {
    responsive: true,
  };
  public barChartLabels: Label[] = ['Label1', 'Label2', 'Label3'];
  public barChartType: ChartType = 'horizontalBar';
  public barChartData: SingleDataSet = [10, 20, 30];

  renderGraph() {}

  ngOnInit() {
    this.renderGraph();
  }
}
" > src/app/bar-graph/bar-graph.component.ts

echo "
<canvas baseChart [datasets]=\"barChartData\" [labels]=\"barChartLabels\" [options]=\"barChartOptions\" [chartType]=\"barChartType\"></canvas>
" > src/app/bar-graph/bar-graph.component.html

# Pie Graph Component
echo "
import { Component, OnInit } from '@angular/core';
import { Graph } from '../graph.abstract';
import { ChartType, ChartOptions } from 'chart.js';
import { SingleDataSet, Label } from 'ng2-charts';

/**
 * Represents a pie graph component.
 *
 * @remarks
 * This component uses the ng2-charts library to visualize data in a pie format.
 *
 * @example
 * <app-pie-graph></app-pie-graph>
 *
 * @public
 */
@Component({
  selector: 'app-pie-graph',
  templateUrl: './pie-graph.component.html',
  styleUrls: ['./pie-graph.component.css']
})
export class PieGraphComponent extends Graph implements OnInit {
  public pieChartOptions: ChartOptions = {
    responsive: true,
  };
  public pieChartLabels: Label[] = ['Label1', 'Label2', 'Label3'];
  public pieChartType: ChartType = 'pie';
  public pieChartData: SingleDataSet = [10, 20, 30];

  renderGraph() {}

  ngOnInit() {
    this.renderGraph();
  }
}
" > src/app/pie-graph/pie-graph.component.ts

echo "
<canvas baseChart [datasets]=\"pieChartData\" [labels]=\"pieChartLabels\" [options]=\"pieChartOptions\" [chartType]=\"pieChartType\"></canvas>
" > src/app/pie-graph/pie-graph.component.html

# App Component for the demonstration
echo "
<h1>{{ title }}</h1>

<h2>Horizontal Bar Graph</h2>
<app-bar-graph></app-bar-graph>

<h2>Pie Graph</h2>
<app-pie-graph></app-pie-graph>
" > src/app/app.component.html

# 6. Tests - You can use the templates provided earlier and add them respectively to the bar-graph.component.spec.ts and pie-graph.component.spec.ts files.

# Para terminar, lanzar la aplicación para verificar todo.
ng serve

# Es importante recordar que este script es una simplificación y podría no ser completamente idiomático para todas las configuraciones de desarrollo. También puedes necesitar ajustes dependiendo de tu ambiente específico.
