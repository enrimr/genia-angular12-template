import { Component } from '@angular/core';

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
}
