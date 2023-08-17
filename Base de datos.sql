Create DATABASE proyecto_abd;

CREATE TABLE DOMAIN (
  ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME varchar(50) not null unique 
);

CREATE TABLE PROCESS (
  ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME varchar(50) not null unique,
  DETAILS varchar(50) not null,
  DOMAIN int not null,
  FOREIGN KEY (DOMAIN) REFERENCES DOMAIN(ID) 
);

CREATE TABLE questionary (
  ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  QUESTION varchar(250) not null unique,
  PROCESS int not null,
  FOREIGN KEY (PROCESS) REFERENCES PROCESS(ID)
);




INSERT INTO DOMAIN (name) values("Planificar y Organizar");

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P01","Definir un Plan Estratégico de TI", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P08", "Administrar la calidad", 1);

INSERT INTO PROCESS (name, DETAILS, DOMAIN) values ("P09", "Evaluar y Administrar los Riesgos de TI", 1);




INSERT INTO questionary (QUESTION,PROCESS) values ("¿La planeación estratégica de TI se lleva a cabo para alinear y dirigir los recursos de TI con la estrategia y prioridades del negocio?", 1);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se educa a los ejecutivos sobre las capacidades tecnológicas actuales y futuras, así como las oportunidades que la TI ofrece, con el objetivo de capitalizar esas oportunidades y asegurar un entendimiento claro del rumbo tecnológico alineado con el negocio?", 1);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se evalúa el desempeño de los planes existentes y de los sistemas de información en términos de su contribución a los objetivos de negocio, funcionalidad, estabilidad, complejidad, costos, fortalezas y debilidades?", 1);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Existe un plan estratégico colaborativo con partes interesadas que vincula la TI a metas empresariales, considerando costos, riesgos, inversiones y servicios operativos?", 1);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se ha creado un portafolio de planes tácticos de TI, derivados del plan estratégico de TI, que describe iniciativas y recursos necesarios, y establece cómo se supervisará y gestionará el uso de los recursos y el logro de beneficios?", 1);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se gestiona en conjunto con el negocio el conjunto de programas de inversión de TI para lograr objetivos estratégicos, incluyendo su identificación, evaluación, priorización, inicio y control?", 1);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se garantiza que los objetivos de los programas respalden resultados de negocio, con claridad en el alcance y medidas de responsabilidad, recursos, financiamiento y comisión de proyectos al inicio del programa?", 1);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿La estrategia de negocio y las prioridades se reflejan en los portafolios y se ejecutan a través de planes estratégicos de TI que cuentan con objetivos claros, planes de acción y tareas aceptados tanto por el negocio como por TI?", 1);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Los procesos de TI garantizan una entrega efectiva y eficiente de los componentes TI de los programas, además de proporcionar advertencias tempranas sobre desviaciones en costo, cronograma o funcionalidad?", 1);

INSERT INTO questionary (QUESTION,PROCESS) values ("¿El sistema de administracion de calidad incluye procesos y estandares probados de desarrollo y de adquisición?", 2);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se establecen criterios de aceptación para la adopción de estándares en puntos clave, como el diseño de esquemas y el diccionario de datos, en el contexto de la administración de la calidad en bases de datos?", 2);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Los requerimientos de calidad se manifiestan y documentan con indicadores cuantificables y alcanzables?", 2);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿El QMS define la estructura organizacional para la administración de calidad, cubriendo roles, las tareas y responsabilidades?", 2);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿La medición, el monitoreo y el registro de la información son usados por el dueño del proceso para tomar las medidas correctivas y preventivas apropiadas?", 2);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se identifican y mantienen estándares, procedimientos y prácticas para los procesos clave con el propósito de cumplir con el QMS?", 2);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se utilizan buenas prácticas de la industria al mejorar y adaptar las prácticas de calidad de la organización?", 2);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se designan roles y responsabilidades específicos para la resolución de conflictos relacionados con la administración de bases de datos?", 2);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se establece y mantiene un Sistema de Administración de Calidad (QMS) que define políticas y métodos para prever, detectar, corregir y prevenir no conformidades?", 2);

INSERT INTO questionary (QUESTION,PROCESS) values ("¿El resultado de la evaluación se encuentra expresado en términos financieros?", 3);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se obtiene la aprobación de las acciones recomendadas y la aceptación de cualquier riesgo residual, garantizando que las acciones comprometidas estén a cargo del dueño o dueños de los procesos afectados?", 3);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se priorizan y planifican las actividades de control en todos los niveles para llevar a cabo las respuestas necesarias a los riesgos identificados?", 3);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿El proceso de respuesta a riesgos identifica estrategias tales como evitar, reducir, compartir, aceptar riesgos; determinar responsabilidades y considerar los niveles de tolerancia a riesgos? ", 3);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se determina de forma individual, por categoría y con base en el portafolio la probabilidad e impacto asociados a los riesgos inherentes?", 3);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se identifican eventos con un impacto potencial negativo sobre las metas o  las operaciones de la empresa, incluyendo aspectos de negocio, regulatorios, legales, tecnológicos, de sociedad comercial, de recursos humanos y operativos?", 3);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Existe un contexto establecido en el cual el marco de trabajo de evaluación de riesgos se aplica para garantizar resultados apropiados?", 3);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿El marco de tabajo de la administración de riesgos del departamento de TI  está alineado con el marco de trabajo de la administración de riesgos de la organización?", 3);
INSERT INTO questionary (QUESTION,PROCESS) values ("¿Se identifican,analizan y evaluan los impactos potenciales causados por un evento no planeado?", 3);


