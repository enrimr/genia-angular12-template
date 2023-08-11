import { Component } from '@angular/core';

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

