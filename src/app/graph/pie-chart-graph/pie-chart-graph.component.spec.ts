import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PieChartGraphComponent } from './pie-chart-graph.component';

describe('PieChartGraphComponent', () => {
  let component: PieChartGraphComponent;
  let fixture: ComponentFixture<PieChartGraphComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PieChartGraphComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PieChartGraphComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
