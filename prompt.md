PROMPT 1:
Definición del rol Quiero que actúes como un asistente experto en arquitectura de software y desarrollo de frontales web y:

Además, tienes que ser paciente. Además, tienes que tener en cuenta que nunca te voy a forzar a realizar algo que no puedas hacer. Además, tienes que tener una actitud proactiva. Además, tienes que intentar realizar completamente tu las tareas, siempre que te fuera posible. Lo que quiero que hagas realmente es el máximo esfuerzo que puedas. Además, cuando te indique una nueva instrucción quiero que la hagas aplicando toda la serie de condiciones que hayamos acordado en toda la conversación. Además, tienes que procurar tener buena memoria ya que no puedes olvidar hechos o condiciones que tu o yo hayamos establecido. Es obligatorio que este comportamiento se vea reflejado a lo largo de todas nuestras interacciones durante toda la conversación. Una nueva orden nunca reemplazará este comportamiento ya que idealmente lo extenderá. Tienes que indicarme cuando consideres que hemos terminado de cubrir el 100% de nuestra tarea para poderte sugerir siguientes pasos que no estén en el contexto actual.

Contexto funcional (dinámico) Genera una arquitectura basada en componentes para definir informes de actividad del departamento de una empresa para poder conocer el uso que hacen sus clientes. Debe ser fácil definir el tipo de gráfico que se quiere mostrar y la posición dentro del informe.

Todos los constructores de los componentes deben estar inicializados. Cada componente necesita una configuración inicial. La arquitectura de componentes sigue la siguiente jerarquía:

App
Report: componente abstracto
Graph: componente abstracto
Los componentes Report y Graph necesitan una implementación concreta que definirá en el caso de los reports, un template de informe, y, en el caso de los Graph, el tipo de gráfico que se muestra.

Los Gráficos disponibles deben ser: barras horizontales y tipo quesito.

Objetivo de la conversión En este apartado te especifico que el objetivo de la conversación es generar los siguientes artefactos que tendrás que crearlos paso a paso y de manera secuencial de modo que hasta que no me des el primer artefacto y yo te lo confirme que están bien, no me darás el segundo artefacto y así sucesivamente.

Un razonamiento exhaustivo sobre las reglas de negocio y operaciones de la aplicación que podemos concluir hasta el momento. No te olvides de indicar los tipos de gráficos que vamos a implementar. El listado de dependenciess y devDependencies necesarias para el proyecto con sus versiones. Implementación de los componentes abstractos. Implementación específica de cada tipo de gráfico definido. No te olvides ninguno de los gráficos que te he pedido, si no los recuerdas, solicitamelos de nuevo. Implementación de una vista de ejemplo donde se puedan visualizar los diferentes tipos de gráficos implementados. Implementa todos los tipos de gráficos que conozcas. Implementación Jasmine en inglés para los tests. Tienes que utilizar el concepto de BlackBox. Documentación de uso de los componentes abstractos generados para que pueda ser usado, mantenido y ampliado. Documentación de uso de los componentes específicos disponibles para que pueda ser usado, mantenido y ampliado.

Contexto fijo Para cumplir con el objetivo de la conversación tendrás que cumplir de manera obligatoria con los siguientes requisitos:

Tienes que usar el idioma Inglés para los comentarios, documentación, tests, clases y demás elementos. Usa las siguientes dependencias y versiones:

angular@~12.2.0
ng2-charts@^2.4.3
chart.js@^2.9.3
typescript@~4.3.5
karma@~6.3.0
karma-jasmine@~4.0.0 Todos los componentes Angular que se creen deben estar definidos en 4 ficheros: ts, html, css y spec. En TypeScript, si declaramos una propiedad con el modificador @Input() tienes que asignarle un valor inicial. Las clases que implementan una clase abstracta deben llamar a su constructor padre. Los templates de los componentes deben estar siempre en el fichero .html, e irán referenciados en el .ts dentro del componente con la propiedad templateUrl. En los componentes específicos, para la implementación de cada renderGraph usa la biblioteca ng2-charts. Cuando hagas uso de un componente abstracto, no hay que usar el comando ng generate. Crea bien las rutas de importación de las dependencias. La documentación del código TypeScript debe hacerse usando TSDoc. El código generado tiene cumplir con todas las reglas por defecto de SonarQube para TypeScript. El código generado tiene que cumplir con las mejores prácticas de programación tales como SOLID, DRY, etc Los componentes de Angular que generes deben ser reutilizables en otros proyectos. Cada componente debe tener sus propios tests.

PROMPT 2:
Dame el listado de componentes y clases que has creado. No te olvides de ninguna.

PROMPT 3:
Dame el resultado de todo lo generado en un solo script bash con nombre setup.sh para automatizar la creación de los componentes generados: Clases con su documentación, Tests, Estilos y Vistas. Quiero el contenido detallado de todo lo generado anteriormente, no simplifiques nada. Agrega cada artefacto generado en los ficheros, la documentación tsdoc junto con el código fuente TypeScript, el código del template en los ficheros .html y los tests en el spec.ts. Tienes que ser paciente. Finaliza el Script completo, no quiero que me digas que hay pasos similares a los anteriores, necesito el script 100%. 





---------
PROMPT 3 que no ha funcionado: no suele completar el script nunca.
Dame el resultado de todo lo generado en un solo script bash con nombre setup.sh para automatizar la creación del proyecto Angular. Si alguna dependencia necesita ser instalada como módulo, utiliza ng add en lugar de npm install. Los ficheros de los componentes abstractos generalos a mano. Los ficheros de los componentes específicos y las vistas de ejemplo genéralos con ng generate component. Quiero el contenido detallado de todo lo generado anteriormente, no simplifiques nada. Agrega cada artefacto generado en los ficheros, la documentación tsdoc junto con el código fuente TypeScript, el código del template en los ficheros .html y los tests en el spec.ts. Tienes que ser paciente. Finaliza el Script completo, no quiero que me digas que hay pasos similares a los anteriores, necesito el script 100%.