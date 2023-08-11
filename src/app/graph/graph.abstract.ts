import { Input } from '@angular/core';

abstract class AbstractGraphComponent {
  @Input() data: number[];
  @Input() labels: string[];
  abstract renderGraph(): void;
}
