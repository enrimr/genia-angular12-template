import { Component } from '@angular/core';

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

