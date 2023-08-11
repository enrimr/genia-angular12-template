import { Component } from '@angular/core';
/**
 * ReportComponent is an abstract class that serves as the foundation for specific report templates.
 * 
 * @remarks
 * This class has an abstract method that should be implemented by derived classes to render the report.
 * 
 * @example
 * ```typescript
 * class CustomReportComponent extends ReportComponent {
 *   renderReport(): void {
 *     // Your custom report rendering logic here
 *   }
 * }
 * ```
 * 
 * @abstract
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
