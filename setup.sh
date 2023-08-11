#!/bin/bash

# 1. Crear el proyecto Angular
#ng new my-report-app --style=css --routing=false

# Cambiamos al directorio del proyecto
#cd my-report-app

# 2. Agregar las dependencias
#ng add @angular/cli@~12.2.0
ng add ng2-charts@^4.1.1
ng add chart.js@^3.9.1
#ng add typescript@~4.3.5
#npm install karma@~6.3.0
#npm install karma-jasmine@~4.0.0

# 3. Generar componentes abstractos y específicos
ng generate component src/graph/abstract/GraphComponent
ng generate component src/report/abstract/ReportComponent
ng generate component src/graph/horizontal-bar-graph/HorizontalBarGraphComponent
ng generate component src/graph/pie-graph/PieGraphComponent

# 4. Poblar archivos con contenido detallado
echo "import { Component } from '@angular/core';

/**
 * Abstract class for Graph Components.
 * @abstract
 */
@Component({
  template: ''
})
export abstract class GraphComponent {
  /**
   * The main method to render the graph.
   * This needs to be implemented in child components.
   */
  abstract renderGraph(): void;
}
" > src/app/src/graph/abstract/graph-component/graph-component.component.ts

echo "import { Component } from '@angular/core';

/**
 * Abstract class for Report Components.
 * @abstract
 */
@Component({
  template: ''
})
export abstract class ReportComponent {
  /**
   * The main method to render the report.
   * This needs to be implemented in child components.
   */
  abstract renderReport(): void;
}
" > src/app/src/report/abstract/report-component/report-component.component.ts

echo "import { Component, OnInit } from '@angular/core';
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
" > src/app/src/graph/horizontal-bar-graph/horizontal-bar-graph.component.ts

echo "import { Component, OnInit } from '@angular/core';
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
" > src/app/src/graph/pie-graph/pie-graph.component.ts

# 5. Poblar archivos .html con los templates definidos

echo "<!-- Template for Horizontal Bar Graph Component -->
<div class='horizontal-bar-graph'>
  <!-- Placeholder for graph rendering -->
</div>
" > src/app/src/graph/horizontal-bar-graph/horizontal-bar-graph.component.html

echo "<!-- Template for Pie Graph Component -->
<div class='pie-graph'>
  <!-- Placeholder for graph rendering -->
</div>
" > src/app/src/graph/pie-graph/pie-graph.component.html

# 6. Poblar archivos spec.ts con pruebas Jasmine

echo "import { ComponentFixture, TestBed } from '@angular/core/testing';
import { HorizontalBarGraphComponent } from './horizontal-bar-graph.component';

describe('HorizontalBarGraphComponent', () => {
  let component: HorizontalBarGraphComponent;
  let fixture: ComponentFixture<HorizontalBarGraphComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ HorizontalBarGraphComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(HorizontalBarGraphComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
" > src/app/src/graph/horizontal-bar-graph/horizontal-bar-graph.component.spec.ts

echo "import { ComponentFixture, TestBed } from '@angular/core/testing';
import { PieGraphComponent } from './pie-graph.component';

describe('PieGraphComponent', () => {
  let component: PieGraphComponent;
  let fixture: ComponentFixture<PieGraphComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PieGraphComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PieGraphComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
" > src/app/src/graph/pie-graph/pie-graph.component.spec.ts

# Finalizar
echo "Setup completed!"
