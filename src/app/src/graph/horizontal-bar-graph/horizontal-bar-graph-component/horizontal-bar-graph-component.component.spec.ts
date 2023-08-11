import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HorizontalBarGraphComponentComponent } from './horizontal-bar-graph-component.component';

describe('HorizontalBarGraphComponentComponent', () => {
  let component: HorizontalBarGraphComponentComponent;
  let fixture: ComponentFixture<HorizontalBarGraphComponentComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ HorizontalBarGraphComponentComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(HorizontalBarGraphComponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
