1.

Corregir la dependencia dentro de horizontal-bar-graph y pie-chart-graph con el componente abstracto graph.
En lugar de usar la ruta ../graph.abstract usaban ./graph.abstract asumiendo que se encontraban en el mismo directorio.

2.

No añade las propiedades charType correctamente.
Hay que poner public pieChartType: ChartType = 'pie'; en lugar de   public pieChartType: string = 'pie';