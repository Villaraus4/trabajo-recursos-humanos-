-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2020 a las 02:48:24
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `modelo_entidad_relacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `idAnuncio` int(11) NOT NULL,
  `Titulo_Del_Puesto` varchar(45) NOT NULL,
  `Fecha_de_cierre` date NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idMedio_Publicidad` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `Nombre_de_empresa` varchar(150) NOT NULL,
  `id_contacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `Area_Descripcion` varchar(150) NOT NULL,
  `Area_Nombre` varchar(90) NOT NULL,
  `Solicitud_de_Puesto_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `Curp` varchar(18) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Domicilio` varchar(100) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Sexo` char(2) NOT NULL,
  `Edad` tinyint(2) NOT NULL,
  `NSS` varchar(11) NOT NULL,
  `Fotografia` blob NOT NULL,
  `idEstado_Civil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_habilidad`
--

CREATE TABLE `candidato_has_habilidad` (
  `Curp` varchar(18) NOT NULL,
  `id_Habilidad` int(11) NOT NULL,
  `Nivel` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_idioma`
--

CREATE TABLE `candidato_has_idioma` (
  `Curp` varchar(18) NOT NULL,
  `idIdioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idContecto` int(11) NOT NULL,
  `Nombre` varchar(90) NOT NULL,
  `Email_de_Contacto` varchar(50) NOT NULL,
  `Numero_Telefonico` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_de_empresa`
--

CREATE TABLE `datos_de_empresa` (
  `Nombre_de_empresa` varchar(100) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Estructura_Juridica` varchar(50) NOT NULL,
  `Razon_Social` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Domicilo` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Encargado` varchar(50) NOT NULL,
  `CIF_de_empresa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `idEstado_Civil` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_solicitud`
--

CREATE TABLE `estatus_solicitud` (
  `idEstatus_Solicitud` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `idExperiencia` int(11) NOT NULL,
  `Nombre_de_empresa` varchar(150) NOT NULL,
  `Descripcion_del_pueto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_has_candidato`
--

CREATE TABLE `experiencia_has_candidato` (
  `Curp` varchar(18) NOT NULL,
  `id_Experiencia` int(11) NOT NULL,
  `Nombre_de_empressa` varchar(150) NOT NULL,
  `años` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `idHbilidad` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Nivel` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad_has_perfil`
--

CREATE TABLE `habilidad_has_perfil` (
  `idHabilidad` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `Descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `idIdioma` int(11) NOT NULL,
  `lenguaje` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma_has_perfil`
--

CREATE TABLE `idioma_has_perfil` (
  `idIdioma` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_publicidad`
--

CREATE TABLE `medio_publicidad` (
  `idMedio_Publicidad` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_academico`
--

CREATE TABLE `nivel_academico` (
  `idNivel_Academico` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_academico_has_candidato`
--

CREATE TABLE `nivel_academico_has_candidato` (
  `Curp` varchar(18) NOT NULL,
  `idNivel_Academico` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `institucion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_idioma`
--

CREATE TABLE `nivel_idioma` (
  `idNivel_idioma` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `idIdioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `idPerfil` int(11) NOT NULL,
  `Descrpcion` varchar(250) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idNivel_Academico` int(11) NOT NULL,
  `Carrera_idCarrera` int(11) NOT NULL,
  `idNivel_Idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_has_registrousuario1`
--

CREATE TABLE `perfil_has_registrousuario1` (
  `idPerfil` int(11) NOT NULL,
  `idUsuarioR` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Tipo_de_movimiento` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idPuesto` int(11) NOT NULL,
  `Descripcion` varchar(90) NOT NULL,
  `Salario_Anual` decimal(7,0) NOT NULL,
  `Beneficios` varchar(100) NOT NULL,
  `Bonos` decimal(7,0) NOT NULL,
  `N_Vacantes` int(11) NOT NULL,
  `N_solicitantes` int(11) NOT NULL,
  `Plazas` int(11) NOT NULL,
  `Localizacion` varchar(50) NOT NULL,
  `Autorizacion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrousuario`
--

CREATE TABLE `registrousuario` (
  `idUsuarioR` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `Puesto` varchar(45) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `Descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_candidato`
--

CREATE TABLE `resultado_candidato` (
  `Estatus_Proceso` varchar(15) NOT NULL,
  `Comentarios` varchar(250) NOT NULL,
  `comentarios_ofertas_salario` varchar(250) NOT NULL,
  `comentarios_area_sleccion` varchar(250) NOT NULL,
  `Examen_Psicometico` varchar(250) NOT NULL,
  `Examen_Psicologico` varchar(250) NOT NULL,
  `Examen_Conocimiento` varchar(250) NOT NULL,
  `Examen_Salud` varchar(250) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `id_Solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_candidato`
--

CREATE TABLE `solicitud_candidato` (
  `idSolicituf` int(11) NOT NULL,
  `Fecha_de_solicitud` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `idArea` int(11) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_candidato_has_anuncio`
--

CREATE TABLE `solicitud_candidato_has_anuncio` (
  `idSolicitud_Candidato` int(11) NOT NULL,
  `idAnuncio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_de_puesto`
--

CREATE TABLE `solicitud_de_puesto` (
  `id` int(11) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `vacantes` int(11) NOT NULL,
  `solicitantes` int(11) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `fecha_estatus` date NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `idEstatus_Solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`idAnuncio`,`id_contacto`,`Nombre_de_empresa`,`idPerfil`,`idMedio_Publicidad`,`idPuesto`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`,`Solicitud_de_Puesto_Id`);

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`Curp`,`idEstado_Civil`);

--
-- Indices de la tabla `candidato_has_habilidad`
--
ALTER TABLE `candidato_has_habilidad`
  ADD PRIMARY KEY (`Curp`,`id_Habilidad`);

--
-- Indices de la tabla `candidato_has_idioma`
--
ALTER TABLE `candidato_has_idioma`
  ADD PRIMARY KEY (`Curp`,`idIdioma`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idCarrera`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idContecto`);

--
-- Indices de la tabla `datos_de_empresa`
--
ALTER TABLE `datos_de_empresa`
  ADD PRIMARY KEY (`Nombre_de_empresa`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`idEstado_Civil`);

--
-- Indices de la tabla `estatus_solicitud`
--
ALTER TABLE `estatus_solicitud`
  ADD PRIMARY KEY (`idEstatus_Solicitud`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`idExperiencia`);

--
-- Indices de la tabla `experiencia_has_candidato`
--
ALTER TABLE `experiencia_has_candidato`
  ADD PRIMARY KEY (`Curp`,`id_Experiencia`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`idHbilidad`);

--
-- Indices de la tabla `habilidad_has_perfil`
--
ALTER TABLE `habilidad_has_perfil`
  ADD PRIMARY KEY (`idHabilidad`,`idPerfil`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`idIdioma`);

--
-- Indices de la tabla `idioma_has_perfil`
--
ALTER TABLE `idioma_has_perfil`
  ADD PRIMARY KEY (`idIdioma`,`idPerfil`);

--
-- Indices de la tabla `medio_publicidad`
--
ALTER TABLE `medio_publicidad`
  ADD PRIMARY KEY (`idMedio_Publicidad`);

--
-- Indices de la tabla `nivel_academico`
--
ALTER TABLE `nivel_academico`
  ADD PRIMARY KEY (`idNivel_Academico`);

--
-- Indices de la tabla `nivel_academico_has_candidato`
--
ALTER TABLE `nivel_academico_has_candidato`
  ADD PRIMARY KEY (`Curp`,`idNivel_Academico`,`idCarrera`),
  ADD KEY `idNivel_Academico` (`idNivel_Academico`),
  ADD KEY `idCarrera` (`idCarrera`);

--
-- Indices de la tabla `nivel_idioma`
--
ALTER TABLE `nivel_idioma`
  ADD PRIMARY KEY (`idNivel_idioma`,`idIdioma`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`idPerfil`,`idPuesto`,`idNivel_Academico`,`Carrera_idCarrera`,`idNivel_Idioma`);

--
-- Indices de la tabla `perfil_has_registrousuario1`
--
ALTER TABLE `perfil_has_registrousuario1`
  ADD PRIMARY KEY (`idPerfil`,`idUsuarioR`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idPuesto`);

--
-- Indices de la tabla `registrousuario`
--
ALTER TABLE `registrousuario`
  ADD PRIMARY KEY (`idUsuarioR`);

--
-- Indices de la tabla `resultado_candidato`
--
ALTER TABLE `resultado_candidato`
  ADD PRIMARY KEY (`curp`,`id_Solicitud`);

--
-- Indices de la tabla `solicitud_candidato`
--
ALTER TABLE `solicitud_candidato`
  ADD PRIMARY KEY (`idArea`,`idPuesto`,`idPerfil`,`idSolicituf`);

--
-- Indices de la tabla `solicitud_candidato_has_anuncio`
--
ALTER TABLE `solicitud_candidato_has_anuncio`
  ADD PRIMARY KEY (`idSolicitud_Candidato`,`idAnuncio`);

--
-- Indices de la tabla `solicitud_de_puesto`
--
ALTER TABLE `solicitud_de_puesto`
  ADD PRIMARY KEY (`id`,`idPuesto`,`idPerfil`,`idEstatus_Solicitud`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `idCarrera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel_academico`
--
ALTER TABLE `nivel_academico`
  MODIFY `idNivel_Academico` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nivel_academico_has_candidato`
--
ALTER TABLE `nivel_academico_has_candidato`
  ADD CONSTRAINT `nivel_academico_has_candidato_ibfk_1` FOREIGN KEY (`idNivel_Academico`) REFERENCES `nivel_academico` (`idNivel_Academico`),
  ADD CONSTRAINT `nivel_academico_has_candidato_ibfk_2` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
