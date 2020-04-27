-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2020 a las 01:51:34
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `id_padre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `id_padre`) VALUES
(1, 'Computadoras', 0),
(2, 'Smartphones', 0),
(3, 'Camaras', 0),
(4, 'Accesorios', 0),
(5, 'Notebook', 1),
(6, 'Desktop', 1),
(7, 'Gama Baja', 2),
(8, 'Gama Media', 2),
(9, 'Gama Alta', 2),
(10, 'Profesionales', 3),
(11, 'Semi-Profesionales', 3),
(12, 'Perifericos', 4),
(13, 'Audio', 4),
(14, 'Otros', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `habilitada` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`, `habilitada`) VALUES
(1, 'Acer', 1),
(2, 'MSI', 1),
(3, 'Samsung', 1),
(4, 'Apple', 1),
(5, 'Kodak', 1),
(6, 'Nikon', 1),
(7, 'Genius', 1),
(8, 'Logitech', 1),
(9, 'EXO', 1),
(11, 'Noga', 1),
(12, 'Sandisk', 1),
(13, 'HP', 1),
(14, 'Lenovo', 1),
(15, 'Motorola', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` longtext NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `img` varchar(45) NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `modelo`, `habilitado`, `img`, `img2`, `img3`, `id_marca`, `id_categoria`) VALUES
(1, 'Notebook Acer', 'TRABAJAR EN CUALQUIER LUGAR\n\nCon el TravelMate P2, trabajar en cualquier parte nunca ha sido tan fácil. Más productividad es el resultado de mezclar potencia,\nportabilidad y durabilidad con funciones empresariales y de conectividad avanzadas. La mejor opción para los profesionales que van de un lado a otro.\n\nEL RENDIMIENTO QUE NECESITÁS\n\nBasados en los procesadores Intel Core de 7a generación y equipados con 4 GB (expandible hasta 16GB) de memoria DDR4, \nlos portátiles TravelMate P2 pueden hacer frente, sin esfuerzos, a las tareas escolares más comunes.\n\nFÁCILES DE ADMINISTRAR Y SEGUROS\n\nLos portátiles TravelMate P2 incluyen una serie de herramientas de administración y seguridad muy útiles para poder \nemplear y manejar los dispositivos fácilmente, sin necesidad de expertos.\n\nUN COMPAÑERO DE ESTUDIO DE CONFIANZA\n\nCon el equilibrio perfecto entre rendimiento y eficiencia, los portátiles de la serie TravelMate son fiables compañeros \nde estudio lo suficientemente potentes para hacer frente a la mayoría de las cargas de trabajo.', 'Travelmate P2 15.6p I3 4 GB 500', 1, 'computadoras/notebooks/nbacer-p2-1.jpg', 'computadoras/notebooks/nbacer-p2-2.jpg', 'computadoras/notebooks/nbacer-p2-3.jpg', 1, 5),
(2, 'Notebook MSI ', 'LA NOTEBOOK GAMER QUE NECESITABAS\n\nDisfrutá de una notebook gamer pensada y diseñada para ser superior. Con una estructura de aluminio ultra liviana y \ndelgada y un ventilador con forma de X en la parte inferior.\n\nMSI + NVIDIA\n\nAl fin una laptop para juego que sí vas a poder ponerte en el regazo, gracias a NVIDIA se consiguió un gran avance \nen el camino de construcción de la laptop más fina, rápida y silenciosa de categoría gaming.', 'GF63 Core I5 9na Gen 8GB GTX1050TI', 1, 'computadoras/notebooks/nbmsi-GF63-1.jpg', 'computadoras/notebooks/nbmsi-GF63-2.jpg', 'computadoras/notebooks/nbmsi-GF63-3.jpg', 2, 5),
(3, 'Notebook Dell ', 'DISEÑO\n\nLa notebook Dell Inspiron 3581 cuenta con un diseño compacto y moderno. Su liviano peso, \njunto con sus medidas la vuelven completamente liviana, práctica y funcional, \npara que puedas transportarla de manera sencilla.\n\nTRABAJAR EN CUALQUIER LUGAR\n\nCon las notebooks Dell, trabajar en cualquier parte nunca ha sido tan fácil. \nMás productividad es el resultado de mezclar potencia, portabilidad y durabilidad con \nfunciones empresariales y de conectividad avanzadas. La mejor opción para los profesionales que van de un lado a otro.\n\nLAS IMÁGENES SE VEN TAN REALES COMO EL MUNDO QUE LO RODEA\n\nExperimente un color más rico y más vibrante y detalles posibilitados por los perfiles de color de Dell. \nEl sistema CinemaStream SmartByte Wireless canaliza el ancho de banda máximo para los videos o la música a fin de ofrecer una experiencia excelente sin interferencias.\n\nTRANSPORTATE A UN MUNDO NUEVO\n\nEl sonido se ajusta automáticamente para entregarte la mejor configuración para una experiencia óptima. \nCuando estés usando auriculares vas a obtener sonido 3d envolvente para que puedas tener una experiencia de juego o cine inmersiva sin importar dónde estés.', 'Inspiron 14p I3 4 GB 1 TB Ubuntu', 1, 'computadoras/notebooks/nbdell-insp-1.jpg', 'computadoras/notebooks/nbdell-insp-2.jpg', 'computadoras/notebooks/nbdell-insp-3.jpg', 4, 5),
(4, 'Notebook HP', 'No tiene sistema operativo. Procesador Intel i3 de 7ma generación. Memoria DDR4 4 GB. Almacenamiento 1 TB. \nTiene Pad Numérico. Teclado en español Conectate de forma rápida y sencilla a tu red y periféricos, tanto en la oficina como en tu hogar, \nmediante el puerto RJ45 (LAN) y HDMI. También podés hacer una copia de seguridad fácil gracias a la práctica ranura de tarjetas de memoria SD. \nPodés navegar velozmente con una conexión WiFi 802.11ac o por Bluetooth versión 4.2. Es una notebook preparada para satisfacer las \nnecesidades de un usuario de oficina u hogareño.', '250 G7 15.6p I3 4 GB 1 TB 6KZ55LT', 1, 'computadoras/notebooks/nbhp-250-1.jpg', 'computadoras/notebooks/nbhp-250-2.jpg', 'computadoras/notebooks/nbhp-250-3.jpg', 13, 5),
(5, 'Notebook HP', 'DESPERTÁ. LUCHÁ. JUGÁ. CONQUISTÁ.\n\nEs un nuevo mundo para los juegos, donde la competencia es incesante pero la gloria está al alcance. \nLas notebooks Omen están equipadas con un poderoso hardware y un imponente diseño, están preparadas para el campo de batalla, en todo momento y lugar. \nCuenta con la octava generación del procesador Intel Core i7.\n\nSUMERGITE EN LA BATALLA\n\nSentí cada momento de tensión para tener una experiencia totalmente inmersiva. \nUna pantalla Full HD IPS y el audio de Bang & Olufsen llevan los juegos a otro nivel. \nPasá fácilmente de derrotar enemigos en tu casa a dominar el campo de batalla mientras viajas, \ncon un diseño mucho más delgado y teclado retroiluminado en rojo.', '15p DC0045NR I7-8750H 32Gb/512Gb SSD M.2', 1, 'computadoras/notebooks/nbhp-gamer-1.jpg', 'computadoras/notebooks/nbhp-gamer-2.jpg', 'computadoras/notebooks/nbhp-gamer-3.jpg', 13, 5),
(6, 'Notebook Lenovo ', 'NO INCLUYE SISTEMA OPERATIVO La Lenovo V145 de 15.6 pulgadas te hará trabajar de manera productiva y eficiente. Con su procesadores AMD y \nsus increíbles gráficos facilitan la multitarea; mientras que el cifrado de datos y las características ergonómicas harán que tus \nempleados se sientan súper cómodos. Disfrutá de una experiencia de trabajo más cómoda con un teclado ergonómico de tamaño completo \nque también es resistente a derrames. El panel táctil de una pieza es grande y fácil de usar.', 'V145 15.6p AMD A9 8 GB 1 TB', 1, 'computadoras/notebooks/nblenovo-v145-1.jpg', 'computadoras/notebooks/nblenovo-v145-2.jpg', 'computadoras/notebooks/nblenovo-v145-3.jpg', 14, 5),
(7, 'Notebook Lenovo', 'RENDIMIENTO QUE IMPRESIONA\n\nCon una gran relación calidad-precio sin sacrificar el rendimiento, el elegante y fiable portátil V330 de 15.6 \npulgadas te ayudará a concentrarte en tu negocio. Gracias a su potente tecnología Intel, podrás trabajar productivamente. \nOptimizado para la seguridad, la flexibilidad y la fiabilidad, reducirá la carga de trabajo de tu equipo de IT. \nCon este portátil para profesionales de los negocios, tu trabajo seguro que impresionará.', 'V330 15.6p I7 4 GB 1 TB 81AX000DAR', 1, 'computadoras/notebooks/nblenovo-v330-1.jpg', 'computadoras/notebooks/nblenovo-v330-2.jpg', 'computadoras/notebooks/nblenovo-v330-3.jpg', 14, 5),
(8, 'Celular Samsung', 'LA CÁMARA PARA CAPTURAR EL MOMENTO\n\nTomá fotos como quieras con la cámara trasera de 13MP y la cámara frontal de 5MP. Tus recuerdos permanecen vivos, brillantes y claros con solo tocar un botón. \nEl procesador Octa Core hace que todo funcione sin problemas para mantenerse al día con la forma en que vivís la vida.\n\nDISFRUTÁ TUS FOTOS AL MÁXIMO\n\nUna foto no es solo una foto con el Galaxy A10. Decorá tus recuerdos con stickers, \nsellos y filtros de RA para continuar la diversión incluso después de que hayas tomado la captura.\n\nENERGÍA PARA TU VIDA DIARIA\n\nLa batería Galaxy A10, de 3,400 mAh (típica) es suficiente para tu día a día. Ya sea que seas del tipo que tiene maratones de mensajes de texto con sus amigos, \nveas transmisiones en vivo o hagas lo que le gusta en un teléfono que dura.\n\nCONCENTRATE EN LO IMPORTANTE\n\nOne UI te ayuda a centrarte en lo que importa. El hardware y el software funcionan en armonía para ofrecer contenido y funciones de forma intuitiva a tu alcance. \nEl Modo Nocturno te ayuda a relajarte al pasar el día, ya que se convierte a un modo oscuro para ayudarte a un mejor descanso nocturno.', 'Galaxy A10s Azul SM-A107M', 1, 'smartphones/gama_alta/galaxy-s10-1.jpg', 'smartphones/gama_alta/galaxy-s10-2.jpg', 'smartphones/gama_alta/galaxy-s10-3.jpg', 3, 9),
(9, 'Celular Samsung', 'Sensor de huella en la pantalla. Cámara dual 12 MP + 16 MP. Batería para todo el día. Parlantes estéreo Dolby Atmos. Resistente al agua y al polvo. \n Reconocimiento facial. Samsung SmartThings. Almacenamiento de 128 GB / Memoria de 6 GB. Sistema operativo Android 9 Pie LECTOR DE HUELLAS MEJORADO \nEl lector de huellas dactilares ultrasónico hace que la seguridad tipo bóveda sea totalmente invisible. \nSamsung movió el escáner de huellas dactilares desde la parte posterior hacia el frente, creando un revolucionario sensor en pantalla. Usando pulsos ultrasónicos, \ndetecta las crestas y los valles 3D de tu huella digital, para que puedas acceder a tu teléfono. Es seguro y conveniente, incluso te permite desbloquear, \narrastrar y mantener para abrir la aplicación que deseas. INFINITY DISPLAY PERFECCIONADO La pantalla Dynamic AMOLED de próxima generación cuenta con la \ncertificación HDR10+, que ofrece un mapeo de tonos dinámicos para lograr un color y contraste increíblemente real en cada escena, incluso en las oscuras. \nLa pantalla más brillante te ayuda a verla claramente incluso a la luz del día. En combinación con altavoces estéreo y Dolby Atmos, \nla experiencia es realmente envolvente. MULTICÁMARA Multicámara con cámara ultra gran angular revoluciona la forma de capturar. \nUn kit completo de lentes en tu bolsillo con una cámara de telefoto para increíbles posibilidades de zoom, una cámara de ángulo amplio para los momentos \ncotidianos y una cámara Ultra Wide para paisajes panorámicos. LA EXTRAORDINARIA CÁMARA DE APERTURA DUAL Apertura dual y composición de fotogramas múltiples \nsaca la luz en la oscuridad. Preparate para realizar fotos diurnas o nocturnas con apertura dual que brinda control de luz de día a noche al ajustar y \noptimizar la luz antes de tocar el obturador. Además, el potente procesador combina automáticamente múltiples cuadros del mismo momento de poca luz \nen una hermosa toma. EL TELÉFONO QUE ESTÁ SIEMPRE LISTO Batería inteligente que dura 24 horas para brindarte energía durante todo el día. \nEl Galaxy S10e aprende tu rutina diaria, patrones de uso y desactiva las aplicaciones que no necesitás. El modo de ahorro de energía adaptable \nadministra la vida útil de la batería según la predicción de tu día. EL TELÉFONO QUE APRENDE TUS HÁBITOS El rendimiento inteligente hace que tu \nteléfono sea más eficiente. No es necesario medir el uso del teléfono. La función Intelligent Performance Enhancer reconoce tus hábitos y \noptimiza la forma en la que interactúas con tu teléfono, incluso anticipa tus necesidades y carga tus aplicaciones de uso frecuente con \nanticipación para que se inicien al instante.', 'Galaxy S10e Negro SM-G970F', 1, 'smartphones/gama_alta/galaxy-s10e-1.jpg', 'smartphones/gama_alta/galaxy-s10e-2.jpg', 'smartphones/gama_alta/galaxy-s10e-3.jpg', 3, 9),
(10, 'Celular Samsung', 'LA CÁMARA PARA CAPTURAR EL MOMENTO\n\nTomá fotos como quieras con la cámara trasera de 13MP y la cámara frontal de 5MP. Tus recuerdos permanecen vivos, brillantes y claros con solo tocar un botón. \nEl procesador Octa Core hace que todo funcione sin problemas para mantenerse al día con la forma en que vivís la vida.\n\nDISFRUTÁ TUS FOTOS AL MÁXIMO\n\nUna foto no es solo una foto con el Galaxy A10. Decorá tus recuerdos con stickers, \nsellos y filtros de RA para continuar la diversión incluso después de que hayas tomado la captura.\n\nENERGÍA PARA TU VIDA DIARIA\n\nLa batería Galaxy A10, de 3,400 mAh (típica) es suficiente para tu día a día. Ya sea que seas del tipo que tiene maratones de mensajes de texto con sus amigos, \nveas transmisiones en vivo o hagas lo que le gusta en un teléfono que dura.\n\nCONCENTRATE EN LO IMPORTANTE\n\nOne UI te ayuda a centrarte en lo que importa. El hardware y el software funcionan en armonía para ofrecer contenido y funciones de forma intuitiva a tu alcance. \nEl Modo Nocturno te ayuda a relajarte al pasar el día, ya que se convierte a un modo oscuro para ayudarte a un mejor descanso nocturno.', 'Galaxy A10s Azul SM-A107M', 1, 'smartphones/gama_baja/galaxy-a10s-1.jpg', 'smartphones/gama_baja/galaxy-a10s-2.jpg', 'smartphones/gama_baja/galaxy-a10s-3.jpg', 3, 7),
(11, 'Celular Samsung', 'CÁMARA TRIPLE\n\nPreparate para capturar los mejores momentos de tu vida con la cámara triple del Galaxy A30s. \nRetratá hasta los detalles más pequeños con la cámara principal de 25MP, increíbles paisajes con el lente Ultra Gran Angular 123° de 8MP. \nAdemás, podés difuminar el fondo para destacar tus primeros planos con el lente de Profundidad de 5MP. Capturá el mundo con el campo de \nvisión más amplio de la cámara Ultra Wide. La cámara principal Galaxy A30s 25MP hace que tu historia sea brillante y clara, día y noche. \nLa cámara de profundidad de 5MP te permite controlar el fondo antes y después de hacer la captura. Concentrate en las cosas que deseás \ndestacar y difuminá las que no para que tus fotos se vean más profesionales.\n\nIMPRESIONANTES SELFIES\n\nQuerés que tus selfies se vean bien. Por lo tanto, para una apariencia diurna impresionante, la cámara frontal de 16MP del Galaxy A30s te \nbrinda fotos claras y de alta resolución. Y con el enfoque Selfie para desenfocar suavemente el fondo, tu rostro se convierte en la estrella.\n\nENCENDÉ TU DÍA MÁS RÁPIDO\n\nCon una batería de 4.000 mAh (típica) que dura, podés aprovechar al máximo cada momento. \nY no tenés que preocuparte por la carga: el Galaxy A30s tiene una carga rápida de 15 W para que puedas volver a hacer lo que hacías y no perderte de nada.\n\nGAME BOOSTER\n\nMaximizá el rendimiento con Game Booster. Eliminá las distracciones y mejorá tu juego con una interfaz dedicada y un menú de fácil acceso. \nFrame Booster te proporciona gráficos suaves, movimiento realista. Jugá lo mejor posible mientras Game Booster aprende tus patrones de \nuso para optimizar la batería, la temperatura y la memoria.', 'Galaxy A30s Negro SM-A307G', 1, 'smartphones/gama_media/galaxy-a30s-1.jpg', 'smartphones/gama_media/galaxy-a30s-2.jpg', 'smartphones/gama_media/galaxy-sa30s-3.jpg', 3, 8),
(12, 'Celular Motorola', 'TRIPLE CÁMARA CON INTELIGENCIA ARTIFICIAL\n\nSacá fotos de alta resolución con cualquier luz utilizando la cámara principal de 16MP. También, \npodés usar el modo retatro para agregar un efecto de desenfoque en el fondo para que tus fotos sean como las de los profesionales.\n\n4 VECES MÁS ÁREA DE VISIÓN\n\nCon la cámara ultra gran angular obtené 4 veces más área de visión. Capturá paisajes panorámicos de forma increíble.\n\nMÁS RÁPIDO DESDE EL INICIO\n\nEl procesador octa-core Qualcomm Snapdragon 665 mejora el rendimiento, proporcionándote juegos en línea más potentes, \nfunciones de cámaras de avanzada y seguridad mejorada. Los 4GB de RAM te permiten ejecutar múltiples aplicaciones al mismo tiempo y cambiar fácilmente entre ellas.\n\nDESCUBRÍ LOS DETALLES\n\nLa exclusiva cámara Macro te permite acercarte hasta 5 veces más que una cámara normal, para capturar hasta el detalle más pequeño. \nAl mismo tiempo, podés agregar efectos de desenfoque, belleza y profundidad a tus fotos. Todo esto con una cámara que entra perfectamente en tu bolsillo. \nAdemás vas a poder capturar detalles incluso desde lejos, con el zoom óptico de 2x de alta resolución y sin afectar la calidad de la imagen.', 'Moto G8 Azul Luminoso', 1, 'smartphones/gama_media/moto-g8-1.jpg', 'smartphones/gama_media/moto-g8-2.jpg', 'smartphones/gama_media/moto-g8-3.jpg', 0, 8),
(13, 'Celular Motorola', 'SISTEMA DE CÁMARA DUAL DE 13 MP\n\nLas cámaras principal y de profundidad funcionan conjuntamente, desenfocando el primer plano o el fondo para agregar un hermoso efecto bokeh a tus fotos.\n\nPANTALLA MAXIMA VISIÓN DE 6.1P\n\nMirá más y desplazá menos en una pantalla ultra-amplia lo suficientemente compacta para usarse con una mano.\n\nDESBLOQUEO RÁPIDO Y FÁCIL\n\nDesbloqueá al instante tu smartphone con tu huella dactilar o con sólo un vistazo.\n\nSELFIES PERFECTAS DE 8MP\n\ncon modo embellecimiento Lucí siempre increíble gracias a una cámara para selfies que permite fotos más iluminadas.\n\nALMACENAMIENTO EXPANDIDO\n\nNo vuelvas a preocuparte por el almacenamiento. El moto e6 plus te proporciona mucho más espacio para tu música, videos y fotos, \ny podés agregar fácilmente hasta 512 GB más mediante una tarjeta microSD.', 'Moto E6 Plus Grafito', 1, 'smartphones/gama_baja/moto-e6-1.jpg', 'smartphones/gama_baja/moto-e6-2.jpg', 'smartphones/gama_baja/moto-e6-3.jpg', 15, 7),
(14, 'Pen Drive Sandisk', 'DISEÑO COMPACTO PARA MÁXIMA PORTABILIDAD La unidad flash USB Cruzer Blade presenta un diseño compacto que cabe fácilmente en un bolsillo \no un bolso para la computadora. Esta unidad USB tiene un diseño elegante en rojo y negro que combina con muchos dispositivos electrónicos. \nLA UNIDAD DE ALTA CAPACIDAD ALMACENA TUS ARCHIVOS DE MEDIOS FAVORITOS La unidad flash USB Cruzer Blade, diseñada por SanDisk, \nuna empresa líder en innovación en memoria flash, incluye amplia capacidad en un formato compacto. CON EL MODO ARRASTRAR Y COLOCAR, \nES FÁCIL REALIZAR COPIAS DE SEGURIDAD Transferir datos a la unidad flash USB Cruzer Blade es muy fácil: simplemente conecta la unidad \nal puerto USB de tu computadora y arrastra los archivos a la carpeta de la unidad. Después de descargar un controlador rápidamente y por única vez, \nesta unidad USB está lista para almacenar, transportar y compartir tus datos de inmediato.', 'Cruzer Z50 32 GB Rojo', 1, 'accesorios/otros/sandisk-cruzer-1.jpg', 'accesorios/otros/sandisk-cruzer-2.jpg', 'accesorios/otros/sandisk-cruzer-3.jpg', 12, 14),
(15, 'Auriculares Noga', 'Aris es una línea de auriculares Bluetooth que te brindan comodidad y elegancia. Posee sistema de manos libres con micrófono incorporado para \natender tus llamadas de tu celular. Con un alto nivel de diseño, el NG-A80BT está construido en material flexible que lo hace totalmente ergonómico, \nademás de ser plegable y ajustable. También posee \"Conexión Dual\": pueden conectarse a un celular o tablet por tecnología BT o con cable \nminiplug 3.5 stereo desmontable.', 'Aris Inalámbrico Dorado NG-A80BT', 1, 'accesorios/audio/noga-aris-1.jpg', 'accesorios/audio/noga-aris-2.jpg', 'accesorios/audio/noga-aris-3.jpg', 11, 13),
(16, 'Parlante Noga', 'El parlante AR5500 de NOGA tiene un sistema de 2 Columnas Inalámbricas BT de moderno diseño construido en madera y con una extraordinaria potencia de 240W. \nUn Sistema de Sonido de Alta Fidelidad que te permite disfrutar de la música de tu Smartphone por Conexión Inalámbrica BT, \ntambién a través de Lectores SD/USB, por Entrada Auxiliar RCA y sintoniza Radio FM. Además podés cantar y divertirte con su \nSistema de Karaoke para lo cual incluye 1 micrófono inalámbrico, y la comodidad de comandar todo a través de sus Controles Frontales o a \ndistancia con un Control Remoto.', 'Black Tower Pro Series Inalámbrico AR5500', 1, 'accesorios/audio/noga-ar5500-1.jpg', 'accesorios/audio/noga-ar5500-2.jpg', 'accesorios/audio/noga-ar5500-3.jpg', 11, 13),
(17, 'Auriculares Samsung', 'SONIDO MÁS NÍTIDO\n\nLos especialistas en sonidos de AKG mejoraron la calidad de estos auriculares, ofreciéndote un sonido más enriquecido y con la máxima calidad. \nVas a sentir que estás escuchando la música en vivo y en directo, aunque no estés ahí.\n\nDISEÑO EN TU BOLSILLO\n\nGuardalos en tu bolsillo y preparate para la aventura. Su diseño renovado los hace más compactos para que puedas llevarlos todo el tiempo. \nAdemás, están disponibles en diferentes colores, por lo que encajan perfectamente con todos tus estilos.\n\nTODO LO QUE DIGAS SIN INTERRUPCIONES\n\nNuestra tecnología de micrófono dual adaptativa de nueva generación hace que el ruido sea algo del pasado. Los Galaxy Buds reconocen tu entorno, \npermitiéndote cambiar del micrófono interior al exterior para eliminar cualquier ruido innecesario fuera de tu conversación.\n\nMÁS DIVERSIÓN, MÁS LIBERTAD\n\nDisfrutá de la libertad de ver o escuchar lo que querés en la pantalla que vos decidas. Los Galaxy Buds te permiten \nemparejar y cambiar de un dispositivo a otro fácilmente, para que no te pierdas nada de lo que pasa a tu alrededor.\n\nCARGALOS Y SUMERGITE EN TU MÚSICA\n\nTenés hasta 6 horas de batería para sumergirte en tu música favorita, todo ello con una sola carga. Y cuando se acabe la batería, \nconectá tus Galaxy Buds con dispositivos compatibles con PowerShare y volée a cargarlos. Tus Galaxy Buds siempre estarán listos para la acción.', 'Galaxy Buds Inalámbricos Negros SM-R170N', 1, 'accesorios/audio/samsung-budsan-1.jpg', 'accesorios/audio/samsung-budsan-2.jpg', 'accesorios/audio/samsung-budsan-3.jpg', 3, 13),
(18, 'Auriculares Samsung', 'SONIDO MÁS NÍTIDO\n\nLos especialistas en sonidos de AKG mejoraron la calidad de estos auriculares, ofreciéndote un sonido más enriquecido y con la máxima calidad. \nVas a sentir que estás escuchando la música en vivo y en directo, aunque no estés ahí.\n\nDISEÑO EN TU BOLSILLO\n\nGuardalos en tu bolsillo y preparate para la aventura. Su diseño renovado los hace más compactos para que puedas llevarlos todo el tiempo. \nAdemás, están disponibles en diferentes colores, por lo que encajan perfectamente con todos tus estilos.\n\nTODO LO QUE DIGAS SIN INTERRUPCIONES\n\nNuestra tecnología de micrófono dual adaptativa de nueva generación hace que el ruido sea algo del pasado. Los Galaxy Buds reconocen tu entorno, \npermitiéndote cambiar del micrófono interior al exterior para eliminar cualquier ruido innecesario fuera de tu conversación.\n\nMÁS DIVERSIÓN, MÁS LIBERTAD\n\nDisfrutá de la libertad de ver o escuchar lo que querés en la pantalla que vos decidas. Los Galaxy Buds te permiten \nemparejar y cambiar de un dispositivo a otro fácilmente, para que no te pierdas nada de lo que pasa a tu alrededor.\n\nCARGALOS Y SUMERGITE EN TU MÚSICA\n\nTenés hasta 6 horas de batería para sumergirte en tu música favorita, todo ello con una sola carga. Y cuando se acabe la batería, \nconectá tus Galaxy Buds con dispositivos compatibles con PowerShare y volée a cargarlos. Tus Galaxy Buds siempre estarán listos para la acción.', 'Galaxy Buds Inalámbricos Amarillos SM-R170N', 1, 'accesorios/audio/samsung-budsaam-1.jpg', 'accesorios/audio/samsung-budsaam-2.jpg', 'accesorios/audio/samsung-budsaam-3.jpg', 3, 13),
(19, 'Hub Multipuerto HP', 'TODO EN UN SÓLO LUGAR\n\nConvierte su dispositivo ultra elegante en un motor de productividad con un concentrador de conectividad multiuso. \nConectá de todo, desde una pantalla HDMI más grande hasta un disco duro externo mediante un mismo puerto USB-C, \npara disfrutar de una experiencia completa que permita aceptar grandes cargas de trabajo, en cualquier lugar.', 'USB-C A HDMI / USB 3.0 1bg94aa', 1, 'accesorios/perifericos/hp-usbc-1.jpg', 'accesorios/perifericos/hp-usbc-2.jpg', 'accesorios/perifericos/hp-usbc-3.jpg', 13, 12),
(20, 'Kit Noga', 'Este combo cuenta con un teclado multimedia de alta durabilidad y un mouse de excelente precisión, ambos con conexión USB. \nAhorrá tiempo y agilizá el uso de Internet y de las funciones multimedia de la PC disponiendo de una selección de las \nfunciones más empleadas en el ámbito hogareño y profesional.', 'Mouse Noga NKB-101', 1, 'accesorios/perifericos/noga-nkb101-1.jpg', 'accesorios/perifericos/noga-nkb101-2.jpg', 'accesorios/perifericos/noga-nkb101-3.jpg', 11, 12),
(21, 'Camara Nikon', 'Capture magníficas tomas donde quiera que vaya con la COOLPIX A300 de diseño delgado y elegante. Es lo suficientemente pequeña y ligera para llevar en un bolsillo o bolso, por lo que siempre estará listo para capturar primeros planos de amigos y familiares con el Zoom Óptico de 8x y el Zoom Preciso Dinámico de 16x. Con Nikon SnapBridge podrá capturar fotos de alta resolución que valga la pena compartir con familiares y amigos. El sensor de imagen CCD de 20.1 megapíxeles garantiza imágenes de alta resolución y la Reducción de la Vibración (VR) de alto rendimiento reduce las sacudidas de la cámara, lo que asegura que solo capturará tomas definidas o videos en HD más fluidos. Use el Sistema Inteligente de Detección de Rostros mientras dispara para obtener retratos perfectos y el Selector Automático de Escena para optimizar automáticamente la configuración de la cámara.', 'Coolpix A300', 1, 'camaras/semi-profesionales/nikon-a300-1.jpg', 'camaras/semi-profesionales/nikon-a300-2.jpg', 'camaras/semi-profesionales/nikon-a300-3.jpg', 6, 11),
(22, 'Camara Nikon', 'ACÉRQUESE A LOS MOMENTOS ESPECIALES.\nHaga lo que los teléfonos inteligentes no pueden hacer. Compacta y liviana, la COOLPIX B600 tiene un increíble poder de zoom—con un zoom óptico de 60x y Reducción de la vibración (VR) por desplazamiento del lente para mantener las imágenes nítidas y estables. Y para cuando necesita más alcance, el Zoom Dinámico Preciso duplica con eficacia ese alcance a 120x. El manejo cómodo de los menús simples y el dial de control facilitan la configuración adecuada de foto o video para su situación y la aplicación de filtros y efectos creativos. Grabe videos Full HD estables con VR Híbrida de 4 ejes, cree rastros de estrellas, imágenes macro y montajes de video con facilidad. Luego comparta sus creaciones o controle la cámara con un teléfono inteligente o tableta compatibles.', 'Coolpix B600', 1, 'camaras/semi-profesionales/nikon-b600-1.jpg', 'camaras/semi-profesionales/nikon-b600-2.jpg', 'camaras/semi-profesionales/nikon-b600-3.jpg', 6, 11),
(23, 'Camara Nikon', 'UNA PEQUEÑA CÁMARA CON UN GRAN POTENCIAL.\nDentro de este elegante diseño de alta gama encontrará un lente supertelefoto NIKKOR con un importante poder para tomar fotos y grabar videos: versátiles capacidades con poca luz, increíble estabilización de imágenes y videos, grabaciones en 4K Ultra HD, modos de disparo P/S/A/M, tomas en formato RAW, modos y filtros creativos, una pantalla táctil inclinable y hasta un visor electrónico supernítido para editar sus imágenes y videos como un profesional. Se conecta a la aplicación SnapBridge 2.5 para compartir imágenes y obtener control remoto de forma instantánea. Utilizarla parece un sueño. Para aquellos que quieren una cámara todo-en-uno que pueda hacerlo todo, tenemos la COOLPIX A1000.', 'Coolpix A1000', 1, 'camaras/semi-profesionales/nikon-a1000-1.jpg', 'camaras/semi-profesionales/nikon-a1000-2.jpg', 'camaras/semi-profesionales/nikon-a1000-3.jpg', 6, 11),
(24, 'Camara Nikon', 'PODER DE UNA FLAGSHIP, AGILIDAD DX\nLa nueva Flagship DX, la Nikon D500. A primera vista puede aparentar común y corriente, pero contenido dentro de un cuerpo de camera estilizado hay una verdadera fuente de poder de procesamiento y avances tecnológicos. La D500 está preparada para ir a donde la pasión la lleve, capturando todo con claridad, velocidad y resolución asombrosa. Desde paisajes urbanos de poca luz a emocionantes escenas de vida silvestre y tomas de acción de alta velocidad, la D500 es la compañera ideal para viajes apasionantes. Maravíllosos videos cinemáticos 4K UHD. Asombrosa robustez y versatilidad. Una pantalla táctil inclinable. Y poder compartirlas gracias a  la capacidad integrada de Snapbridge . Sin importar lo que sea fotografiado, es seguro de que la D500 estará lista para la tarea una y otra vez.', 'D500 Poder Evolucionado', 1, 'camaras/profesionales/nikon-d500-1.jpg', 'camaras/profesionales/nikon-d500-1.jpg', 'camaras/profesionales/nikon-d500-1.jpg', 6, 10),
(25, 'Camara Nikon', 'SIGA SU PASIÓN A DONDE SEA QUE LO LLEVE.\nCreada a partir del deseo de contar con el rendimiento y la innovación de primera calidad en una cámara con conectividad, compacta y sencilla, la D7500 ofrece las mismas características de resolución, rango de sensibilidad ISO, procesamiento y eficiencia energética que la galardonada D500, pero en una DSLR para etusiastas. En resumen, la D7500 está diseñada para superar a cualquier cámara de su clase gracias a su calidad de imagen excelente, su velocidad increíble, su enfoque automático preciso, los videos en 4K Ultra HD y las herramientas creativas de nivel profesional; todo en un diseño cómodo y resistente. Esta es la cámara para la nueva generación de creativos.', 'D7500 Poder Evolucionado', 1, 'camaras/profesionales/nikon-d7500-1.jpg', 'camaras/profesionales/nikon-d7500-2.jpg', 'camaras/profesionales/nikon-d7500-3.jpg', 6, 10),
(26, 'Camara Nikon', 'EL MUNDO ES SU ESTUDIO.\nLos mejores fotógrafos del mundo dependen del mejor equipo para producir tomas sorprendentes y extraordinariamente detalladas de forma consistente, y la D3X, con su sensor CMOS de formato FX de 24.5 megapíxeles, promete justamente eso. Capture cada variante de color y sutileza, y hágala realidad con sus manos. Personalice la configuración de la D3X para que se adapte a su estilo o se ajuste a cualquier situación, ya sea en el estudio o en el campo. Podrá esperar siempre una impresionante fidelidad de imagen y una riqueza increíble en todas las aplicaciones comerciales exigentes. Cada imagen que captura la D3X está llena de vida, nitidez y brillo.', 'D3x Obra Maestra Digital', 1, 'camaras/profesionales/nikon-d3x-1.jpg', 'camaras/profesionales/nikon-d3x-2.jpg', 'camaras/profesionales/nikon-d3x-3.jpg', 6, 10),
(27, 'EXO desktop', 'prueba de categoria desktop', 'EXO DESK GAMER', 1, 'computadoras/desktops/exodesk.jpg', '', '', 9, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranking`
--

CREATE TABLE `ranking` (
  `id_ranking` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ranking`
--

INSERT INTO `ranking` (`id_ranking`, `id_producto`, `valoracion`, `comentario`, `usuario`, `date`) VALUES
(1, 1, 3, 'mediocre', 'Carrio', '2020-04-21 21:42:19'),
(2, 1, 5, 'excelente1', 'Macri', '2020-04-21 21:42:19'),
(3, 2, 2, 'no queria comprarlo', 'Cristina', '2020-04-21 21:42:19'),
(4, 2, 4, 'que paso aca ameeo?', 'Del Cano', '2020-04-21 21:42:19'),
(5, 1, 5, 'excelente2', 'Peña', '2020-04-21 21:42:19'),
(6, 1, 5, 'excelente3', 'sillaruedas', '2020-04-21 21:42:19'),
(7, 1, 5, 'excelente4', 'larreta', '2020-04-21 21:42:19'),
(8, 2, 2, 'no queria comprarlo2', 'alberto', '2020-04-21 21:42:19'),
(9, 2, 2, 'no queria comprarlo3', 'kiciloff', '2020-04-21 21:42:19'),
(10, 2, 4, 'que paso aca ameeo?', 'Del Cano', '2020-04-21 21:42:19'),
(11, 2, 2, 'no queria comprarlo 4', 'Principe', '2020-04-21 21:42:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `id_categoria` (`id_categoria`),
  ADD UNIQUE KEY `id_categoria_2` (`id_categoria`,`nombre`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `FK_categoria_categoria` (`id_categoria`);

--
-- Indices de la tabla `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_ranking`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id_ranking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
