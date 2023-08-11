import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PieGraphComponentComponent } from './pie-graph-component.component';

describe('PieGraphComponentComponent', () => {
  let component: PieGraphComponentComponent;
  let fixture: ComponentFixture<PieGraphComponentComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PieGraphComponentComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PieGraphComponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
