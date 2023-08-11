import { Component, Input } from '@angular/core';
/**
 * GraphComponent is an abstract class designed to serve as a base for specific graph implementations.
 * 
 * @remarks
 * This class provides properties for data and configuration options, and an abstract method for rendering the graph.
 * 
 * @example
 * ```typescript
 * class CustomGraphComponent extends GraphComponent {
 *   renderGraph(): void {
 *     // Your custom rendering logic here
 *   }
 * }
 * ```
 * 
 * @abstract
 * @property data - Represents the data to be used by the graph.
 * @property options - Represents configuration options for the graph.
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
}
