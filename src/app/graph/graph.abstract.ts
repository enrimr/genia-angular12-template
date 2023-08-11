import { Component, Input } from '@angular/core';

/**
 * @abstract
 * Represents an abstract graph component.
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
