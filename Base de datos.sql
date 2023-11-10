
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



INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Diseño de Bases de Datoso", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Instalación y Configuración", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Gestión de Datos", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Optimización de Rendimiento", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Seguridad de Datos", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Migración y Actualización", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Documentación", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Automatización y Programación", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Soporte y Resolución de Problemas", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Planificación y Estrategia", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Cumplimiento Regulatorio", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P?", "Monitorización y Alertas", 1);


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

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿La estructura de la base de datos está documentada?", 5, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se han definido restricciones de integridad en las tablas?", 5, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Existen modelos de datos, como diagramas ER, para representar la estructura de la base de datos?", 5, 1, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se han establecido relaciones entre las tablas?", 5, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se siguen estándares de nomenclatura de objetos de base de datos?", 5, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se utilizan vistas materializadas para mejorar el rendimiento de consultas complejas?", 5, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se documentan las tablas con descripciones detalladas de columnas y relaciones?", 5, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se implementa el particionamiento de tablas para mejorar la administración de datos históricos?", 5, 1, 1, 0, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿La base de datos Oracle (u otro SGBD) está correctamente instalada?", 6, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se han configurado parámetros de rendimiento específicos para la base de datos?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se han implementado medidas de seguridad durante la instalación?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se realiza una revisión de configuración de seguridad después de la instalación?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se siguen las mejores prácticas para configurar el área de intercambio (swap) del sistema operativo?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se utilizan herramientas de monitoreo de recursos del servidor (CPU, memoria, disco) para ajustar la configuración?", 6, 1, 2, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se realiza una prueba de rendimiento después de la instalación para verificar la configuración óptima?", 6, 1, 1, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se documenta y se mantiene actualizada la configuración de red utilizada por la base de datos?", 6, 1, 1, 0, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se realizan copias de seguridad regulares de la base de datos? ¿Qué tipos de copias importantes se realizan (full back o parcial)?", 7, 3, 0, 1, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se realiza un seguimiento de la fragmentación de tablas y se toman medidas para optimizar el almacenamiento?", 7, 1, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se implementa compresión de datos para reducir el consumo de espacio en disco?", 7, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se gestionan eficazmente los índices para evitar la sobrecarga en la base de datos?", 7, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se actualizan o eliminan registros obsoletos de manera periódica?", 7, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Existe un proceso de carga de datos externos a la base de datos?", 7, 1, 1, 0, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se implementa un sistema de registro y administración de Archive Logs para garantizar la integridad y la recuperación de datos?", 7, 2, 1, 2, "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("¿Se utiliza una herramienta competente como RMAN (Recovery Manager) para realizar copias de seguridad y restauración de la base de datos de manera eficiente?", 7, 1, 2, 1, "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 8, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 8, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 8, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 8, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 8, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 8, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 8, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 8, , , , "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 9, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 9, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 9, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 9, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 9, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 9, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 9, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 9, , , , "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 10, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 10, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 10, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 10, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 10, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 10, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 10, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 10, , , , "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 11, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 11, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 11, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 11, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 11, , , , "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 12, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 12, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 12, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 12, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 12, , , , "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 13, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 13, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 13, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 13, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 13, , , , "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 14, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 14, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 14, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 14, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 14, , , , "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 15, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 15, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 15, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 15, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 15, , , , "Proyecto Final");

INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 16, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 16, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 16, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 16, , , , "Proyecto Final");
INSERT INTO QUESTIONARY (QUESTION,PROCESS, INTEGRITY, AVAILABILITY, CONFIDENTIALITY, SOURCE) values ("", 16, , , , "Proyecto Final");






