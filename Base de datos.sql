CREATE DATABASE proyecto_abd;
CREATE TABLE DOMAIN (
  ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY(ID)
);

CREATE TABLE PROCESS (
  ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(50) NOT NULL UNIQUE,
  DETAILS VARCHAR(50) NOT NULL,
  DOMAIN INT NOT NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY (DOMAIN) REFERENCES DOMAIN(ID) 
);

CREATE TABLE QUESTIONARY (
  ID INT NOT NULL AUTO_INCREMENT,
  QUESTION VARCHAR(250) NOT NULL UNIQUE,
  PROCESS INT NOT NULL,
  INTEGRITY INT NOT NULL,
  AVAILABILITY INT NOT NULL,
  CONFIDENTIALITY INT NOT NULL,
  SOURCE VARCHAR(250) NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY (PROCESS) REFERENCES PROCESS(ID)
);


INSERT INTO DOMAIN (name) values("Planificar y Organizar");

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P01","Definir un Plan Estratégico de TI", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P08", "Administrar la calidad", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P09", "Evaluar y Administrar los Riesgos de TI", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Sin Proceso asignado", 1);



INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-01", "Diseño de Bases de Datoso", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-02", "Instalación y Configuración", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-03", "Gestión de Datos", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-04", "Optimización de Rendimiento", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-05", "Seguridad de Datos", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-06", "Migración y Actualización", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-07", "Documentación", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-08", "Automatización y Programación", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-09", "Soporte y Resolución de Problemas", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-010", "Planificación y Estrategia", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-011", "Cumplimiento Regulatorio", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("N/A-012", "Monitorización y Alertas", 1);


INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿La planeación estratégica de TI se lleva a cabo para alinear y dirigir los recursos de TI con la estrategia y prioridades del negocio?", 1, 0, 0, 0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se educa a los ejecutivos sobre las capacidades tecnológicas actuales y futuras, así como las oportunidades que la TI ofrece?", 1, 0, 0, 0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se evalúa el desempeño de los planes existentes y de los sistemas de información en términos de su contribución a los objetivos de negocio, funcionalidad, estabilidad, complejidad, costos, fortalezas y debilidades?", 1, 0, 0, 0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Existe un plan estratégico colaborativo con partes INTeresadas que vincula la TI a metas empresariales, considerando costos, riesgos, inversiones y servicios operativos?", 1, 0, 0, 0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se ha creado un portafolio de planes tácticos de TI, derivados del plan estratégico de TI, que describe iniciativas y recursos necesarios, y establece cómo se supervisará y gestionará el uso de los recursos y el logro de beneficios?", 1, 0, 0, 0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se gestiona en conjunto con el negocio el conjunto de programas de inversión de TI para lograr objetivos estratégicos, incluyendo su identificación, evaluación, priorización, inicio y control?", 1, 0, 0, 0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se garantiza que los objetivos de los programas respalden resultados de negocio, con claridad en el alcance y medidas de responsabilidad, recursos, financiamiento y comisión de proyectos al inicio del programa?", 1, 0, 0, 0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿La estrategia de negocio y las prioridades se reflejan en los portafolios y se ejecutan a través de planes estratégicos de TI que cuentan con objetivos claros, planes de acción y tareas aceptados tanto por el negocio como por TI?", 1, 0, 0, 0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Los procesos de TI garantizan una entrega efectiva y eficiente de los componentes TI de los programas, además de proporcionar advertencias tempranas sobre desviaciones en costo, cronograma o funcionalidad?", 1, 0, 0, 0,"COBIT 4.1");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿El sistema de administracion de calidad incluye procesos y estandares probados de desarrollo y de adquisición?", 2,1,0,0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se establecen criterios de aceptación para la adopción de estándares en puntos clave, como el diseño de esquemas y el diccionario de datos, en el contexto de la administración de la calidad en bases de datos?", 2,1,0,0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Los requerimientos de calidad se manifiestan y documentan con indicadores cuantificables y alcanzables?", 2,1,0,0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿El QMS define la estructura organizacional para la administración de calidad, cubriendo roles, las tareas y responsabilidades?", 2,1,0,0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿La medición, el monitoreo y el registro de la información son usados por el dueño del proceso para tomar las medidas correctivas y preventivas apropiadas?", 2,1,0,0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se identifican y mantienen estándares, procedimientos y prácticas para los procesos clave con el propósito de cumplir con el QMS?", 2,1,0,0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se utilizan buenas prácticas de la industria al mejorar y adaptar las prácticas de calidad de la organización?", 2,1,0,0,"COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se designan roles y responsabilidades específicos para la resolución de conflictos relacionados con la administración de bases de datos?", 2, 1, 0, 0, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se establece y mantiene un Sistema de Administración de Calidad (QMS) que define políticas y métodos para prever, detectar, corregir y prevenir no conformidades?", 2,1,0,0,"COBIT 4.1");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿El resultado de la evaluación se encuentra expresado en términos financieros?", 3, 2, 2, 2, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se obtiene la aprobación de las acciones recomendadas y la aceptación de cualquier riesgo residual, garantizando que las acciones comprometidas estén a cargo del dueño o dueños de los procesos afectados?", 3, 2, 2, 2, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se priorizan y planifican las actividades de control en todos los niveles para llevar a cabo las respuestas necesarias a los riesgos identificados?", 3, 2, 2, 2, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿El proceso de respuesta a riesgos identifica estrategias tales como evitar, reducir, compartir, aceptar riesgos; determinar responsabilidades y considerar los niveles de tolerancia a riesgos? ", 3, 2, 2, 2, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se determina de forma individual, por categoría y con base en el portafolio la probabilidad e impacto asociados a los riesgos inherentes?", 3, 2, 2, 2, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se identifican eventos con un impacto potencial negativo sobre las metas o  las operaciones de la empresa, incluyendo aspectos de negocio, regulatorios, legales, tecnológicos, de sociedad comercial, de recursos humanos y operativos?", 3, 2, 2, 2, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Existe un contexto establecido en el cual el marco de trabajo de evaluación de riesgos se aplica para garantizar resultados apropiados?", 3, 2, 2, 2, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿El marco de tabajo de la administración de riesgos del departamento de TI  está alineado con el marco de trabajo de la administración de riesgos de la organización?", 3, 2, 2, 2, "COBIT 4.1");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se identifican,analizan y evaluan los impactos potenciales causados por un evento no planeado?", 3, 2, 2, 2, "COBIT 4.1");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se hace el análisis de la estructuras de datos?", 4, 0, 1, 0, "Clase 28 Agosto: Estructuras de almacenamiento");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se hace una análisis sobre la distribución estructural?", 4, 0, 1, 0, "Clase 28 Agosto: Estructuras de almacenamiento");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Realiza correcciones a la estructura de la base de datos?", 4, 0, 1, 0, "Clase 28 Agosto: Estructuras de almacenamiento");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se realiza un monitoreo constante del uso de los tablespace?", 4, 0, 1, 0, "Clase 28 Agosto: Estructuras de almacenamiento");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿La estructura de la base de datos está documentada?", 5, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se han definido restricciones de integridad en las tablas?", 5, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Existen modelos de datos, como diagramas ER, para representar la estructura de la base de datos?", 5, 1, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se han establecido relaciones entre las tablas?", 5, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se siguen estándares de nomenclatura de objetos de base de datos?", 5, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utilizan vistas materializadas para mejorar el rendimiento de consultas complejas?", 5, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se documentan las tablas con descripciones detalladas de columnas y relaciones?", 5, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se implementa el particionamiento de tablas para mejorar la administración de datos históricos?", 5, 1, 1, 0, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿La base de datos Oracle (u otro SGBD) está correctamente instalada?", 6, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se han configurado parámetros de rendimiento específicos para la base de datos?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se han implementado medidas de seguridad durante la instalación?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realiza una revisión de configuración de seguridad después de la instalación?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se siguen las mejores prácticas para configurar el área de intercambio (swap) del sistema operativo?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utilizan herramientas de monitoreo de recursos del servidor (CPU, memoria, disco) para ajustar la configuración?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realiza una prueba de rendimiento después de la instalación para verificar la configuración óptima?", 6, 1, 1, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se documenta y se mantiene actualizada la configuración de red utilizada por la base de datos?", 6, 1, 1, 0, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan copias de seguridad regulares de la base de datos? ¿Qué tipos de copias importantes se realizan (full back o parcial)?", 7, 3, 0, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realiza un seguimiento de la fragmentación de tablas y se toman medidas para optimizar el almacenamiento?", 7, 1, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se implementa compresión de datos para reducir el consumo de espacio en disco?", 7, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se gestionan eficazmente los índices para evitar la sobrecarga en la base de datos?", 7, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se actualizan o eliminan registros obsoletos de manera periódica?", 7, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Existe un proceso de carga de datos externos a la base de datos?", 7, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se implementa un sistema de registro y administración de Archive Logs para garantizar la integridad y la recuperación de datos?", 7, 2, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utiliza una herramienta competente como RMAN (Recovery Manager) para realizar copias de seguridad y restauración de la base de datos de manera eficiente?", 7, 1, 2, 1, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan análisis de rendimiento para identificar consultas lentas?", 8, 1, 0, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se ha implementado la indexación adecuada en las tablas?", 8, 1, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se monitoriza y ajusta el consumo del SGA de manera regular?", 8, 1, 2, 3, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utilizan técnicas de particionamiento de tablas para mejorar el rendimiento?", 8, 1, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se ajusta el tamaño del buffer cache de la base de datos para optimizar el rendimiento?", 8, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan análisis de carga en la base de datos para identificar picos de actividad?", 8, 2, 0, 3, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utilizan estadísticas para mejorar la eficiencia del optimizador de consultas?", 8, 1, 0, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se lleva a cabo un análisis de afinidad de memoria para mejorar el rendimiento?", 8, 1, 0, 2, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se aplican políticas de seguridad y control de acceso en la base de datos?", 9, 0, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se audita y supervisa la actividad de la base de datos para detectar intentos no autorizados?", 9, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utiliza cifrado para proteger datos sensibles?", 9, 0, 3, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se han implementado cortafuegos para proteger la base de datos?", 9, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utiliza autenticación multifactor (MFA) para acceder a la base de datos?", 9, 0, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se establecen políticas de contraseñas sólidas y de rotación regular?", 9, 0, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se auditan los accesos y actividades de usuarios con privilegios de administración?", 9, 0, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utiliza cifrado de datos en reposo y en tránsito?", 9, 0, 2, 2, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se han migrado datos de versiones anteriores de la base de datos a la versión actual?", 10, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se aplican regularmente parches y actualizaciones de seguridad?", 10, 1, 3, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan pruebas exhaustivas de migración de datos antes de llevar a cabo una actualización importante de la base de datos?", 10, 1, 1, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se documenta y sigue un procedimiento estándar para realizar actualizaciones de software en la base de datos?", 10, 0, 2, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se mantiene un entorno de desarrollo o pruebas separado para validar actualizaciones antes de implementarlas en producción?", 10, 0, 1, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se cuenta con un equipo o responsable encargado de evaluar y planificar las actualizaciones de seguridad críticas de la base de datos?", 10, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan copias de seguridad completas de la base de datos antes de aplicar actualizaciones o parches críticos?", 10, 2, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se lleva un registro detallado de las actualizaciones y parches aplicados, incluyendo fechas y descripciones de cambios?", 10, 0, 1, 1, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se mantiene documentación técnica actualizada de la base de datos?", 11, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se documentan los procedimientos de recuperación de desastres?", 11, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se planifican y documentan las migraciones de datos con antelación?", 11, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se prueban las actualizaciones en un entorno de desarrollo antes de aplicarlas en producción?", 11, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se mantienen registros de cambios y actualizaciones en la base de datos?", 11, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se mantiene una documentación detallada sobre la estructura de la base de datos, incluyendo diagramas de relaciones y modelos de datos actualizados?", 11, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se documentan los procedimientos de copias de seguridad y restauración de manera que sean fácilmente comprensibles y accesibles para el equipo de administración de la base de datos?", 11, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se mantiene un registro histórico de las versiones anteriores de la base de datos y de los cambios realizados en cada actualización importante?", 11, 1, 1, 0, "Proyecto Final");


INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utilizan scripts para automatizar tareas de administración de bases de datos?", 12, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se programan tareas de mantenimiento, como copias de seguridad y optimización?", 12, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se programan tareas de optimización y recolección de estadísticas de manera automática?", 12, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utilizan scripts para realizar copias de seguridad en horarios específicos?", 12, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se automatizan las tareas de mantenimiento de índices y fragmentación?", 12, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utilizan scripts con estrategias avanzadas para copias de seguridad, como copias incrementales, copias diferenciales o copias en cascada, para optimizar el rendimiento y el espacio de almacenamiento de los backups?", 12, 1, 1, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se emplean jobs programados para automatizar tareas de mantenimiento críticas, como la reorganización de tablas, actualizaciones de estadísticas y purga de datos antiguos en la base de datos?", 12, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se programan tareas de purga de datos obsoletos de manera automática para mantener el rendimiento y la eficiencia de la base de datos?", 12, 1, 1, 0, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se brinda soporte a desarrolladores y usuarios finales en caso de problemas?", 13, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se registran y resuelven de manera oportuna los problemas reportados?", 13, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se establece un sistema de tickets o registro para el seguimiento de problemas?", 13, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan análisis de causa raíz para identificar problemas recurrentes?", 13, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se brinda soporte de nivel avanzado en horarios críticos?", 13, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se documentan y categorizan los problemas reportados para analizar tendencias y áreas de mejora en el soporte y la resolución de problemas?", 13, 1, 1, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan revisiones periódicas de los niveles de servicio acordados en el soporte de la base de datos y se toman medidas correctivas cuando no se cumplen?", 13, 0, 0, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se lleva a cabo una gestión proactiva de problemas, identificando y abordando posibles problemas antes de que impacten en el rendimiento o la disponibilidad de la base de datos?", 13, 1, 2, 1, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Participa en la planificación de estrategias a largo plazo para la base de datos?", 14, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se evalúan nuevas tecnologías y tendencias en bases de datos?", 14, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realiza una planificación de capacidad para prever futuros requerimientos de almacenamiento?", 14, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se evalúan las implicaciones de rendimiento antes de implementar cambios significativos en la base de datos?", 14, 2, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se establecen objetivos de rendimiento medibles?", 14, 1, 0, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se han establecido estrategias de backup que incluyen backups completos, diferenciales e incrementales, y se realizan pruebas regulares de restauración para garantizar la integridad de los datos y la capacidad de recuperación?", 14, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se mantiene un plan de continuidad del negocio que incluye estrategias de recuperación de desastres para la base de datos en caso de interrupciones graves?", 14, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se implementan prácticas de gestión de cambios para garantizar que las actualizaciones y modificaciones en la base de datos se realicen de manera controlada y documentada?", 14, 2, 0, 1, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿La base de datos cumple con regulaciones de privacidad y seguridad de datos?", 15, 1, 2, 3, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se lleva un registro de auditorías para demostrar el cumplimiento?", 15, 0, 2, 3, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se mantienen registros de auditoría durante el tiempo requerido por regulaciones específicas?", 15, 0, 2, 3, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se revisan periódicamente las políticas de cumplimiento para asegurarse de su eficacia?", 15, 1, 2, 3, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realiza capacitación sobre regulaciones de privacidad y seguridad de datos para el personal de la base de datos?", 15, 0, 0, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan auditorías internas periódicas para evaluar el cumplimiento de las regulaciones de privacidad y seguridad de datos?", 15, 0, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se mantienen actualizados los registros de auditoría en caso de cambios en las regulaciones específicas?", 15, 0, 0, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se cuenta con un equipo o departamento dedicado a la gestión del cumplimiento regulatorio de la base de datos?", 15, 0, 0, 2, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se utilizan herramientas de monitorización para supervisar la base de datos?", 16, 0, 2, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se han establecido alertas para eventos críticos de la base de datos?", 16, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realiza un monitoreo constante del uso del System Global Area (SGA) y se establece un valor alto de agua (HWM) para prevenir posibles colapsos? ", 16, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se supervisa el uso y consumo transaccional diario de las tablespaces, incluyendo su consumo progresivo, para garantizar una gestión eficiente del espacio?", 16, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se monitorean las sentencias SQL que consumen recursos de manera excesiva por parte de los usuarios y se toman medidas para optimizar su rendimiento?", 16, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se establecen alertas y notificaciones para supervisar el rendimiento de la base de datos y detectar problemas potenciales de manera proactiva?", 16, 0, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se monitorea la integridad de la base de datos para identificar y resolver posibles problemas de corrupción de datos?", 16, 0, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, AVAILABILITY, CONFIDENTIALITY, INTEGRITY, SOURCE) values ("¿Se realizan pruebas de recuperación de desastres y se configuran alertas para asegurar que los procedimientos de recuperación estén listos en caso de un incidente grave?", 16, 0, 2, 2, "Proyecto Final");
