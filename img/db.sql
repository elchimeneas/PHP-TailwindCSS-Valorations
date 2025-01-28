-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.6.18-MariaDB-0ubuntu0.22.04.1 - Ubuntu 22.04
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para glow_rp
CREATE DATABASE IF NOT EXISTS `glow_rp` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `glow_rp`;

-- Volcando estructura para tabla glow_rp.actores
CREATE TABLE IF NOT EXISTS `actores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(24) NOT NULL DEFAULT 'ninguno',
  `Skin` int(11) NOT NULL DEFAULT -1,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `PosR` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `Animacion` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.almacenes
CREATE TABLE IF NOT EXISTS `almacenes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Propietario` varchar(24) NOT NULL DEFAULT 'gobielno',
  `Venta` int(11) NOT NULL DEFAULT 0,
  `Precio` int(11) NOT NULL DEFAULT 0,
  `ExteriorX` float NOT NULL DEFAULT 0,
  `ExteriorY` float NOT NULL DEFAULT 0,
  `ExteriorZ` float NOT NULL DEFAULT 0,
  `ExteriorR` float NOT NULL DEFAULT 0,
  `ExteriorInt` int(11) NOT NULL DEFAULT 0,
  `ExteriorVW` int(11) NOT NULL DEFAULT 0,
  `InteriorX` float NOT NULL DEFAULT 0,
  `InteriorY` float NOT NULL DEFAULT 0,
  `InteriorZ` float NOT NULL DEFAULT 0,
  `InteriorR` float NOT NULL DEFAULT 0,
  `InteriorInt` int(11) NOT NULL DEFAULT 0,
  `InteriorVW` int(11) NOT NULL DEFAULT 0,
  `Dinero` int(11) NOT NULL DEFAULT 0,
  `Limite` int(11) NOT NULL DEFAULT 0,
  `Compartida1` varchar(24) NOT NULL DEFAULT 'none',
  `Compartida2` varchar(24) NOT NULL DEFAULT 'none',
  `Compartida3` varchar(24) NOT NULL DEFAULT 'none',
  `Seguro` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.antecedentes
CREATE TABLE IF NOT EXISTS `antecedentes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Documento` int(11) NOT NULL DEFAULT 0,
  `Faccion` varchar(10) NOT NULL DEFAULT 'none',
  `Responsable` varchar(24) NOT NULL DEFAULT 'none',
  `Detalles` varchar(512) NOT NULL DEFAULT 'none',
  `Fecha` varchar(256) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.bidones
CREATE TABLE IF NOT EXISTS `bidones` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PotX` float NOT NULL DEFAULT 0,
  `PotY` float NOT NULL DEFAULT 0,
  `PotZ` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.buscados
CREATE TABLE IF NOT EXISTS `buscados` (
  `sqlid` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(128) DEFAULT NULL,
  `sospechosos` varchar(128) DEFAULT NULL,
  `fecha` varchar(40) DEFAULT NULL,
  `responsable` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sqlid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.cajas
CREATE TABLE IF NOT EXISTS `cajas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Activo` int(11) NOT NULL DEFAULT 0,
  `Obj1` int(11) NOT NULL DEFAULT 0,
  `ObjCant1` int(11) NOT NULL DEFAULT 0,
  `Obj2` int(11) NOT NULL DEFAULT 0,
  `ObjCant2` int(11) NOT NULL DEFAULT 0,
  `Obj3` int(11) NOT NULL DEFAULT 0,
  `ObjCant3` int(11) NOT NULL DEFAULT 0,
  `Obj4` int(11) NOT NULL DEFAULT 0,
  `ObjCant4` int(11) NOT NULL DEFAULT 0,
  `Obj5` int(11) NOT NULL DEFAULT 0,
  `ObjCant5` int(11) NOT NULL DEFAULT 0,
  `Obj6` int(11) NOT NULL DEFAULT 0,
  `ObjCant6` int(11) NOT NULL DEFAULT 0,
  `Obj7` int(11) NOT NULL DEFAULT 0,
  `ObjCant7` int(11) NOT NULL DEFAULT 0,
  `Obj8` int(11) NOT NULL DEFAULT 0,
  `ObjCant8` int(11) NOT NULL DEFAULT 0,
  `Obj9` int(11) NOT NULL DEFAULT 0,
  `ObjCant9` int(11) NOT NULL DEFAULT 0,
  `Obj10` int(11) NOT NULL DEFAULT 0,
  `ObjCant10` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.cajeros
CREATE TABLE IF NOT EXISTS `cajeros` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Modelo` int(11) NOT NULL DEFAULT 19324,
  `BolosUwU` int(11) NOT NULL DEFAULT 5000000,
  `PotX` float NOT NULL DEFAULT 0,
  `PotY` float NOT NULL DEFAULT 0,
  `PotZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.casas
CREATE TABLE IF NOT EXISTS `casas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Propietario` varchar(24) NOT NULL DEFAULT 'none',
  `Tipo` int(11) NOT NULL DEFAULT 0,
  `Venta` int(11) NOT NULL DEFAULT 0,
  `Seguro` int(11) NOT NULL DEFAULT 1,
  `Exterior_X` float NOT NULL DEFAULT 0,
  `Exterior_Y` float NOT NULL DEFAULT 0,
  `Exterior_Z` float NOT NULL DEFAULT 0,
  `Exterior_R` float NOT NULL DEFAULT 0,
  `Exterior_Int` int(11) NOT NULL DEFAULT 0,
  `Exterior_VW` int(11) NOT NULL DEFAULT 0,
  `Interior_X` float NOT NULL DEFAULT 0,
  `Interior_Y` float NOT NULL DEFAULT 0,
  `Interior_Z` float NOT NULL DEFAULT 0,
  `Interior_R` float NOT NULL DEFAULT 0,
  `Interior_Int` int(11) NOT NULL DEFAULT 0,
  `Interior_VW` int(11) NOT NULL DEFAULT 0,
  `BolosUwU` int(11) NOT NULL DEFAULT 0,
  `Precio` int(11) NOT NULL DEFAULT 0,
  `Armario1` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant1` int(11) NOT NULL DEFAULT 0,
  `Armario2` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant2` int(11) NOT NULL DEFAULT 0,
  `Armario3` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant3` int(11) NOT NULL DEFAULT 0,
  `Armario4` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant4` int(11) NOT NULL DEFAULT 0,
  `Armario5` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant5` int(11) NOT NULL DEFAULT 0,
  `Armario6` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant6` int(11) NOT NULL DEFAULT 0,
  `Armario7` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant7` int(11) NOT NULL DEFAULT 0,
  `Armario8` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant8` int(11) NOT NULL DEFAULT 0,
  `Armario9` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant9` int(11) NOT NULL DEFAULT 0,
  `Armario10` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant10` int(11) NOT NULL DEFAULT 0,
  `Armario50` int(11) NOT NULL DEFAULT 0,
  `ArmarioCant50` int(11) NOT NULL DEFAULT 0,
  `Premium` int(11) NOT NULL DEFAULT 0,
  `TiempoDisponible` int(11) NOT NULL DEFAULT -1,
  `Compartida1` varchar(24) NOT NULL DEFAULT 'none',
  `Compartida2` varchar(24) NOT NULL DEFAULT 'none',
  `Compartida3` varchar(24) NOT NULL DEFAULT 'none',
  `Rento` varchar(24) NOT NULL DEFAULT 'none',
  `PrecioRenta` int(11) NOT NULL DEFAULT 0,
  `TiempoRenta` int(11) NOT NULL DEFAULT -1,
  `VerEmergencias` int(11) NOT NULL,
  `Sanciones` int(11) NOT NULL,
  `ValorMonedas` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.contenedores
CREATE TABLE IF NOT EXISTS `contenedores` (
  `sqlid` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` int(11) NOT NULL DEFAULT 0,
  `modelo` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `rotx` float NOT NULL DEFAULT 0,
  `roty` float NOT NULL DEFAULT 0,
  `rotz` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`sqlid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.cuentas
CREATE TABLE IF NOT EXISTS `cuentas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(24) NOT NULL DEFAULT 'none',
  `Clave` varchar(256) NOT NULL DEFAULT 'none',
  `Salt` varchar(11) NOT NULL DEFAULT 'none',
  `Email` varchar(256) NOT NULL DEFAULT '-',
  `IP` varchar(18) NOT NULL DEFAULT '127.0.0.1',
  `JotoOtaku` int(11) NOT NULL DEFAULT 0,
  `EncFac` int(11) NOT NULL DEFAULT 0,
  `EncMap` int(11) NOT NULL DEFAULT 0,
  `PreguntaSeguridad` varchar(256) NOT NULL DEFAULT 'ninguna',
  `RespuestaSeguridad` varchar(256) NOT NULL DEFAULT 'ninguna',
  `VIP` int(11) NOT NULL DEFAULT 0,
  `Expira` int(11) NOT NULL DEFAULT -1,
  `KawaiAwA` int(11) NOT NULL DEFAULT 0,
  `Multicuenta` int(11) NOT NULL DEFAULT 0,
  `OtakuN_N` int(11) NOT NULL DEFAULT 0,
  `TimeBanUwU` int(11) NOT NULL DEFAULT 0,
  `FueBan` varchar(24) NOT NULL DEFAULT '-',
  `ReasonBanUwU` varchar(256) NOT NULL DEFAULT '-',
  `MomentBan` varchar(256) NOT NULL DEFAULT '-',
  `Regalo` int(11) NOT NULL DEFAULT 0,
  `FechaRegistro` varchar(256) NOT NULL DEFAULT 'none',
  `UltimaConexion` varchar(256) NOT NULL DEFAULT 'none',
  `Ranuras` int(11) NOT NULL DEFAULT 3,
  `BloqueoMP` int(11) NOT NULL DEFAULT 0,
  `TogMP` int(11) NOT NULL DEFAULT 0,
  `VerMP` int(11) NOT NULL DEFAULT 0,
  `MaxCasas` int(11) NOT NULL DEFAULT 1,
  `MaxNegocios` int(11) NOT NULL DEFAULT 1,
  `MaxMuebles` int(11) NOT NULL DEFAULT 150,
  `TogPing` int(11) NOT NULL DEFAULT 0,
  `EstiloAnuncio` int(11) NOT NULL DEFAULT 0,
  `EstiloBolsillos` int(11) NOT NULL DEFAULT 0,
  `TogNames` int(11) NOT NULL DEFAULT 0,
  `BloqueoOOC` int(11) NOT NULL DEFAULT 0,
  `AdminOculto` int(11) NOT NULL DEFAULT 0,
  `UltimoReclamo` int(11) NOT NULL DEFAULT 0,
  `TeclaEntrar` int(11) NOT NULL DEFAULT 262144,
  `TeclaInventario` int(11) NOT NULL DEFAULT 65536,
  `TeclaMotor` int(11) NOT NULL DEFAULT 131072,
  `TeclaLuces` int(11) NOT NULL DEFAULT 0,
  `TeclaMaletero` int(11) NOT NULL DEFAULT 0,
  `Online` tinyint(4) DEFAULT 0,
  `Sanciones` int(11) DEFAULT 0,
  `VerEmergencias` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.entornos
CREATE TABLE IF NOT EXISTS `entornos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PosX` float NOT NULL DEFAULT -1,
  `PosY` float NOT NULL DEFAULT -1,
  `PosZ` float NOT NULL DEFAULT -1,
  `Interior` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Mensaje` varchar(101) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.estacionamientos
CREATE TABLE IF NOT EXISTS `estacionamientos` (
  `est_id` int(11) NOT NULL DEFAULT 0,
  `est_ext_x` float NOT NULL DEFAULT 0,
  `est_ext_y` float NOT NULL DEFAULT 0,
  `est_ext_z` float NOT NULL DEFAULT 0,
  `est_ext_r` float NOT NULL DEFAULT 0,
  `est_int_x` float NOT NULL DEFAULT 0,
  `est_int_y` float NOT NULL DEFAULT 0,
  `est_int_z` float NOT NULL DEFAULT 0,
  `est_int_r` float NOT NULL DEFAULT 0,
  `est_vw` int(11) NOT NULL DEFAULT 0,
  `est_int` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`est_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.estadisticas
CREATE TABLE IF NOT EXISTS `estadisticas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PagoEstado` int(11) NOT NULL DEFAULT 0,
  `ImpuestoCasa` int(11) NOT NULL DEFAULT 0,
  `ImpuestoNegocio` int(11) NOT NULL DEFAULT 0,
  `ImpuestoVehiculo` int(11) NOT NULL DEFAULT 0,
  `ImpuestoBarco` int(11) NOT NULL DEFAULT 0,
  `ImpuestoMoto` int(11) NOT NULL DEFAULT 0,
  `ImpuestoAero` int(11) NOT NULL DEFAULT 0,
  `PrecioGasolina` int(11) NOT NULL DEFAULT 1,
  `PagoViajeReparto` int(11) NOT NULL DEFAULT 1000,
  `PosMercadoX` float NOT NULL,
  `PosMercadoY` float NOT NULL,
  `PosMercadoZ` float NOT NULL,
  `PagoCaudales` int(11) NOT NULL DEFAULT 100,
  `SpawnPosX` float DEFAULT NULL,
  `SpawnPosY` float DEFAULT NULL,
  `SpawnPosZ` float DEFAULT NULL,
  `SpawnPosR` float DEFAULT NULL,
  `SpawnVW` int(11) DEFAULT NULL,
  `SpawnInterior` int(11) DEFAULT NULL,
  `WeaponDamage0` float DEFAULT 0,
  `WeaponDamage1` float NOT NULL,
  `WeaponDamage2` float NOT NULL,
  `WeaponDamage3` float NOT NULL,
  `WeaponDamage4` float NOT NULL,
  `WeaponDamage5` float NOT NULL,
  `WeaponDamage6` float NOT NULL,
  `WeaponDamage7` float NOT NULL,
  `WeaponDamage8` float NOT NULL,
  `WeaponDamage9` float NOT NULL,
  `WeaponDamage10` float NOT NULL,
  `WeaponDamage11` float NOT NULL,
  `WeaponDamage12` float NOT NULL,
  `WeaponDamage13` float NOT NULL,
  `WeaponDamage14` float NOT NULL,
  `WeaponDamage15` float NOT NULL,
  `WeaponDamage16` float NOT NULL,
  `WeaponDamage17` float NOT NULL,
  `WeaponDamage18` float NOT NULL,
  `WeaponDamage19` float NOT NULL,
  `WeaponDamage20` float NOT NULL,
  `WeaponDamage21` float NOT NULL,
  `WeaponDamage22` float NOT NULL,
  `WeaponDamage23` float NOT NULL,
  `WeaponDamage24` float NOT NULL,
  `WeaponDamage25` float NOT NULL,
  `WeaponDamage26` float NOT NULL,
  `WeaponDamage27` float NOT NULL,
  `WeaponDamage28` float NOT NULL,
  `WeaponDamage29` float NOT NULL,
  `WeaponDamage30` float NOT NULL,
  `WeaponDamage31` float NOT NULL,
  `WeaponDamage32` float NOT NULL,
  `WeaponDamage33` float NOT NULL,
  `WeaponDamage34` float NOT NULL,
  `WeaponDamage35` float NOT NULL,
  `WeaponDamage36` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.facciones
CREATE TABLE IF NOT EXISTS `facciones` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(128) NOT NULL DEFAULT 'none',
  `Logo` varchar(8) NOT NULL DEFAULT 'none',
  `Lider` varchar(24) NOT NULL DEFAULT 'none',
  `SubLider` varchar(24) NOT NULL DEFAULT 'none',
  `Mensaje` varchar(256) NOT NULL DEFAULT 'none',
  `Tipo` int(11) NOT NULL DEFAULT 0,
  `Miembros` int(11) NOT NULL DEFAULT 0,
  `BolosUwU` int(11) NOT NULL DEFAULT 0,
  `Salario` int(11) NOT NULL DEFAULT 0,
  `MaxRangos` int(11) NOT NULL DEFAULT 6,
  `Rango1` varchar(32) NOT NULL DEFAULT 'Rank1',
  `Rango2` varchar(32) NOT NULL DEFAULT 'Rank2',
  `Rango3` varchar(32) NOT NULL DEFAULT 'Rank3',
  `Rango4` varchar(32) NOT NULL DEFAULT 'Rank4',
  `Rango5` varchar(32) NOT NULL DEFAULT 'Rank5',
  `Rango6` varchar(32) NOT NULL DEFAULT 'Rank6',
  `Rango7` varchar(32) NOT NULL DEFAULT 'Rank7',
  `Rango8` varchar(32) NOT NULL DEFAULT 'Rank8',
  `Rango9` varchar(32) NOT NULL DEFAULT 'Rank9',
  `Rango10` varchar(32) NOT NULL DEFAULT 'Rank10',
  `Rango11` varchar(32) NOT NULL DEFAULT 'Rank11',
  `Rango12` varchar(32) NOT NULL DEFAULT 'Rank12',
  `Rango13` varchar(32) NOT NULL DEFAULT 'Rank13',
  `Rango14` varchar(32) NOT NULL DEFAULT 'Rank14',
  `Rango15` varchar(32) NOT NULL DEFAULT 'Rank15',
  `SpawnX` float NOT NULL DEFAULT 0,
  `SpawnY` float NOT NULL DEFAULT 0,
  `SpawnZ` float NOT NULL DEFAULT 0,
  `SpawnR` float NOT NULL DEFAULT 0,
  `SpawnInt` int(11) NOT NULL DEFAULT 0,
  `SpawnVW` int(11) NOT NULL DEFAULT 0,
  `ArmarioX` float NOT NULL DEFAULT 0,
  `ArmarioY` float NOT NULL DEFAULT 0,
  `ArmarioZ` float NOT NULL DEFAULT 0,
  `ArmarioInt` int(11) NOT NULL DEFAULT 0,
  `ArmarioVW` int(11) NOT NULL DEFAULT 0,
  `Materiales` int(11) NOT NULL DEFAULT 0,
  `Equipo1` int(11) NOT NULL DEFAULT 0,
  `Equipo2` int(11) NOT NULL DEFAULT 0,
  `Equipo3` int(11) NOT NULL DEFAULT 0,
  `Equipo4` int(11) NOT NULL DEFAULT 0,
  `Equipo5` int(11) NOT NULL DEFAULT 0,
  `Equipo6` int(11) NOT NULL DEFAULT 0,
  `Equipo7` int(11) NOT NULL DEFAULT 0,
  `Equipo8` int(11) NOT NULL DEFAULT 0,
  `Equipo9` int(11) NOT NULL DEFAULT 0,
  `Equipo10` int(11) NOT NULL DEFAULT 0,
  `Equipo11` int(11) NOT NULL DEFAULT 0,
  `Equipo12` int(11) NOT NULL DEFAULT 0,
  `Equipo13` int(11) NOT NULL DEFAULT 0,
  `Equipo14` int(11) NOT NULL DEFAULT 0,
  `Equipo15` int(11) NOT NULL DEFAULT 0,
  `Equipo16` int(11) NOT NULL DEFAULT 0,
  `Equipo17` int(11) NOT NULL DEFAULT 0,
  `Equipo18` int(11) NOT NULL DEFAULT 0,
  `Equipo19` int(11) NOT NULL DEFAULT 0,
  `Equipo20` int(11) NOT NULL DEFAULT 0,
  `Requiere1` int(11) NOT NULL DEFAULT 0,
  `Requiere2` int(11) NOT NULL DEFAULT 0,
  `Requiere3` int(11) NOT NULL DEFAULT 0,
  `Requiere4` int(11) NOT NULL DEFAULT 0,
  `Requiere5` int(11) NOT NULL DEFAULT 0,
  `Requiere6` int(11) NOT NULL DEFAULT 0,
  `Requiere7` int(11) NOT NULL DEFAULT 0,
  `Requiere8` int(11) NOT NULL DEFAULT 0,
  `Requiere9` int(11) NOT NULL DEFAULT 0,
  `Requiere10` int(11) NOT NULL DEFAULT 0,
  `Requiere11` int(11) NOT NULL DEFAULT 0,
  `Requiere12` int(11) NOT NULL DEFAULT 0,
  `Requiere13` int(11) NOT NULL DEFAULT 0,
  `Requiere14` int(11) NOT NULL DEFAULT 0,
  `Requiere15` int(11) NOT NULL DEFAULT 0,
  `Requiere16` int(11) NOT NULL DEFAULT 0,
  `Requiere17` int(11) NOT NULL DEFAULT 0,
  `Requiere18` int(11) NOT NULL DEFAULT 0,
  `Requiere19` int(11) NOT NULL DEFAULT 0,
  `Requiere20` int(11) NOT NULL DEFAULT 0,
  `Skin1` int(11) NOT NULL DEFAULT 0,
  `Skin2` int(11) NOT NULL DEFAULT 0,
  `Skin3` int(11) NOT NULL DEFAULT 0,
  `Skin4` int(11) NOT NULL DEFAULT 0,
  `Skin5` int(11) NOT NULL DEFAULT 0,
  `Skin6` int(11) NOT NULL DEFAULT 0,
  `Skin7` int(11) NOT NULL DEFAULT 0,
  `Skin8` int(11) NOT NULL DEFAULT 0,
  `Skin9` int(11) NOT NULL DEFAULT 0,
  `Skin10` int(11) NOT NULL DEFAULT 0,
  `Skin11` int(11) NOT NULL DEFAULT 0,
  `Skin12` int(11) NOT NULL DEFAULT 0,
  `Skin13` int(11) NOT NULL DEFAULT 0,
  `Skin14` int(11) NOT NULL DEFAULT 0,
  `Skin15` int(11) NOT NULL DEFAULT 0,
  `Skin16` int(11) NOT NULL DEFAULT 0,
  `Skin17` int(11) NOT NULL DEFAULT 0,
  `Skin18` int(11) NOT NULL DEFAULT 0,
  `Skin19` int(11) NOT NULL DEFAULT 0,
  `Skin20` int(11) NOT NULL DEFAULT 0,
  `ArmarioX2` float NOT NULL,
  `ArmarioX3` float NOT NULL,
  `ArmarioY2` float NOT NULL,
  `ArmarioY3` float NOT NULL,
  `ArmarioZ2` float NOT NULL,
  `ArmarioZ3` float NOT NULL,
  `ArmarioInt2` int(11) NOT NULL,
  `ArmarioInt3` int(11) NOT NULL,
  `ArmarioVW2` int(11) NOT NULL,
  `ArmarioVW3` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.garajes
CREATE TABLE IF NOT EXISTS `garajes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Espacio` int(11) NOT NULL DEFAULT 0,
  `Tipo` int(11) NOT NULL DEFAULT 0,
  `Propiedad` int(11) NOT NULL DEFAULT -1,
  `Seguro` int(11) NOT NULL DEFAULT 0,
  `EntradaX` float NOT NULL DEFAULT 0,
  `EntradaY` float NOT NULL DEFAULT 0,
  `EntradaZ` float NOT NULL DEFAULT 0,
  `EntradaR` float NOT NULL DEFAULT 0,
  `EntradaX_V` float NOT NULL DEFAULT 0,
  `EntradaY_V` float NOT NULL DEFAULT 0,
  `EntradaInt` int(11) NOT NULL DEFAULT 0,
  `EntradaVW` int(11) NOT NULL DEFAULT 0,
  `SalidaX` float NOT NULL DEFAULT 0,
  `SalidaY` float NOT NULL DEFAULT 0,
  `SalidaZ` float NOT NULL DEFAULT 0,
  `SalidaR` float NOT NULL DEFAULT 0,
  `SalidaVehX` float NOT NULL DEFAULT 0,
  `SalidaVehY` float NOT NULL DEFAULT 0,
  `SalidaVehZ` float NOT NULL DEFAULT 0,
  `SalidaVehR` float NOT NULL DEFAULT 0,
  `SalidaInt` int(11) NOT NULL DEFAULT 0,
  `SalidaVW` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.gps
CREATE TABLE IF NOT EXISTS `gps` (
  `gps_id` int(11) NOT NULL DEFAULT 0,
  `gps_ubicacion` varchar(128) NOT NULL DEFAULT '0',
  `gps_x` float NOT NULL DEFAULT 0,
  `gps_y` float NOT NULL DEFAULT 0,
  `gps_z` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`gps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.graffitis
CREATE TABLE IF NOT EXISTS `graffitis` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mensaje` varchar(256) NOT NULL DEFAULT 'ninguno',
  `Creador` varchar(24) NOT NULL DEFAULT 'ninguno',
  `Fecha` int(11) NOT NULL DEFAULT 0,
  `PotX` float NOT NULL DEFAULT 0,
  `PotY` float NOT NULL DEFAULT 0,
  `PotZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.incendios
CREATE TABLE IF NOT EXISTS `incendios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` int(11) NOT NULL DEFAULT -1,
  `Propiedad` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.inv_almacenes
CREATE TABLE IF NOT EXISTS `inv_almacenes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Objeto` int(11) NOT NULL DEFAULT 0,
  `Cantidad` int(11) NOT NULL DEFAULT 0,
  `Almacen` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.ips
CREATE TABLE IF NOT EXISTS `ips` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(18) NOT NULL DEFAULT 'none',
  `Admin` varchar(24) NOT NULL DEFAULT 'none',
  `Fecha` varchar(256) NOT NULL DEFAULT 'none',
  `Razon` varchar(256) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.laboratorios
CREATE TABLE IF NOT EXISTS `laboratorios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Activo` int(11) NOT NULL DEFAULT 0,
  `Venta` int(11) DEFAULT 0,
  `EX` float DEFAULT 0,
  `EY` float NOT NULL DEFAULT 0,
  `EZ` float NOT NULL DEFAULT 0,
  `SX` float NOT NULL DEFAULT 0,
  `SY` float NOT NULL DEFAULT 0,
  `SZ` float NOT NULL DEFAULT 0,
  `ENX` float NOT NULL DEFAULT 0,
  `ENY` float NOT NULL DEFAULT 0,
  `ENZ` float NOT NULL DEFAULT 0,
  `Ventilacion` int(11) NOT NULL DEFAULT 0,
  `Extractor` int(11) NOT NULL DEFAULT 0,
  `Provedor` int(11) NOT NULL DEFAULT 0,
  `Equipo` int(11) NOT NULL DEFAULT 0,
  `Quimico` int(11) NOT NULL DEFAULT 0,
  `Triptina` int(11) NOT NULL DEFAULT 0,
  `Ergolina` int(11) NOT NULL DEFAULT 0,
  `Tropano` int(11) NOT NULL DEFAULT 0,
  `Efedrina` int(11) NOT NULL DEFAULT 0,
  `Butano` int(11) NOT NULL DEFAULT 0,
  `Propietario` int(11) NOT NULL DEFAULT 0,
  `Llave1l` int(11) NOT NULL DEFAULT -1,
  `Llave2l` int(11) NOT NULL DEFAULT -1,
  `Llave3l` int(11) NOT NULL DEFAULT -1,
  `Seguro` int(11) NOT NULL DEFAULT 0,
  `EnUso` int(11) NOT NULL DEFAULT 0,
  `EA` float NOT NULL DEFAULT 0,
  `SA` float NOT NULL DEFAULT 0,
  `TiempoCreacion1` int(11) NOT NULL DEFAULT 0,
  `TiempoCreacion2` int(11) NOT NULL DEFAULT 0,
  `Porcentaje` int(11) NOT NULL DEFAULT 50,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.muebles
CREATE TABLE IF NOT EXISTS `muebles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` int(11) NOT NULL DEFAULT 0,
  `Propiedad` int(11) NOT NULL DEFAULT -1,
  `Modelo` int(11) NOT NULL DEFAULT 0,
  `Nombre` varchar(128) NOT NULL DEFAULT 'none',
  `PotX` float NOT NULL DEFAULT 0,
  `PotY` float NOT NULL DEFAULT 0,
  `PotZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `Precio` int(11) NOT NULL DEFAULT 0,
  `Puerta` int(11) NOT NULL DEFAULT 0,
  `TxtMaterial1` int(11) NOT NULL DEFAULT -1,
  `TxtModelo1` int(11) NOT NULL DEFAULT 0,
  `TxtNombre1` varchar(128) NOT NULL DEFAULT 'none',
  `TxtNombreTextura1` varchar(128) NOT NULL DEFAULT 'none',
  `TxtColor1` int(11) NOT NULL DEFAULT 0,
  `TxtMaterial2` int(11) NOT NULL DEFAULT -1,
  `TxtModelo2` int(11) NOT NULL DEFAULT 0,
  `TxtNombre2` varchar(128) NOT NULL DEFAULT 'none',
  `TxtNombreTextura2` varchar(128) NOT NULL DEFAULT 'none',
  `TxtColor2` int(11) NOT NULL DEFAULT 0,
  `TxtMaterial3` int(11) NOT NULL DEFAULT -1,
  `TxtModelo3` int(11) NOT NULL DEFAULT 0,
  `TxtNombre3` varchar(128) NOT NULL DEFAULT 'none',
  `TxtNombreTextura3` varchar(128) NOT NULL DEFAULT 'none',
  `TxtColor3` int(11) NOT NULL DEFAULT 0,
  `TxtMaterial4` int(11) NOT NULL DEFAULT -1,
  `TxtModelo4` int(11) NOT NULL DEFAULT 0,
  `TxtNombre4` varchar(128) NOT NULL DEFAULT 'none',
  `TxtNombreTextura4` varchar(128) NOT NULL DEFAULT 'none',
  `TxtColor4` int(11) NOT NULL DEFAULT 0,
  `TxtMaterial5` int(11) NOT NULL DEFAULT -1,
  `TxtModelo5` int(11) NOT NULL DEFAULT 0,
  `TxtNombre5` varchar(128) NOT NULL DEFAULT 'none',
  `TxtNombreTextura5` varchar(128) NOT NULL DEFAULT 'none',
  `TxtColor5` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.muebletexturas
CREATE TABLE IF NOT EXISTS `muebletexturas` (
  `ModeloID` int(11) NOT NULL,
  `NombreTXD` varchar(32) NOT NULL,
  `NombreTextura` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.negocios
CREATE TABLE IF NOT EXISTS `negocios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(32) NOT NULL DEFAULT 'none',
  `Propietario` varchar(24) NOT NULL DEFAULT 'gobielno',
  `Venta` int(11) NOT NULL DEFAULT 0,
  `Tipo` int(11) NOT NULL DEFAULT 0,
  `Precio` int(11) NOT NULL DEFAULT 0,
  `ExteriorX` float NOT NULL DEFAULT 0,
  `ExteriorY` float NOT NULL DEFAULT 0,
  `ExteriorZ` float NOT NULL DEFAULT 0,
  `ExteriorR` float NOT NULL DEFAULT 0,
  `ExteriorInt` int(11) NOT NULL DEFAULT 0,
  `ExteriorVW` int(11) NOT NULL DEFAULT 0,
  `InteriorX` float NOT NULL DEFAULT 0,
  `InteriorY` float NOT NULL DEFAULT 0,
  `InteriorZ` float NOT NULL DEFAULT 0,
  `InteriorR` float NOT NULL DEFAULT 0,
  `InteriorInt` int(11) NOT NULL DEFAULT 0,
  `InteriorVW` int(11) NOT NULL DEFAULT 0,
  `LugarCompraX` float NOT NULL DEFAULT 0,
  `LugarCompraY` float NOT NULL DEFAULT 0,
  `LugarCompraZ` float NOT NULL DEFAULT 0,
  `Seguro` int(11) NOT NULL DEFAULT 0,
  `BolosUwU` int(11) NOT NULL DEFAULT 0,
  `Productos` int(11) NOT NULL DEFAULT 0,
  `MapIcon` int(11) NOT NULL DEFAULT 0,
  `ActorX` float NOT NULL DEFAULT 0,
  `ActorY` float NOT NULL DEFAULT 0,
  `ActorZ` float NOT NULL DEFAULT 0,
  `ActorR` float NOT NULL DEFAULT 0,
  `ActorSkin` int(11) NOT NULL DEFAULT 0,
  `VehicleX` float NOT NULL DEFAULT 0,
  `VehicleY` float NOT NULL DEFAULT 0,
  `VehicleZ` float NOT NULL DEFAULT 0,
  `VehicleR` float NOT NULL DEFAULT 0,
  `Mecanico` varchar(512) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|',
  `TiempoDisponible` int(11) NOT NULL DEFAULT -1,
  `Compartida1` varchar(24) NOT NULL DEFAULT 'none',
  `Compartida2` varchar(24) NOT NULL DEFAULT 'none',
  `Compartida3` varchar(24) NOT NULL DEFAULT 'none',
  `Porcentaje` int(11) NOT NULL DEFAULT 20,
  `Musica` varchar(256) NOT NULL DEFAULT 'Notiene',
  `Clausurado` int(11) DEFAULT 0,
  `ValorMonedas` int(11) DEFAULT 0,
  `UniqueVisitorBonus` int(11) DEFAULT 0,
  `MaxUniqueVisitorBonus` int(11) DEFAULT 20000,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.negocios_objetos
CREATE TABLE IF NOT EXISTS `negocios_objetos` (
  `Negocio` int(11) NOT NULL,
  `Array` int(11) NOT NULL,
  `Objeto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.objetos_admin
CREATE TABLE IF NOT EXISTS `objetos_admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Modelo` int(11) NOT NULL DEFAULT 0,
  `PotX` float NOT NULL DEFAULT 0,
  `PotY` float NOT NULL DEFAULT 0,
  `PotZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.personajes
CREATE TABLE IF NOT EXISTS `personajes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Apellido` varchar(24) NOT NULL DEFAULT 'none',
  `CuentaID` int(11) NOT NULL DEFAULT -1,
  `PosicionX` float NOT NULL DEFAULT 0,
  `PosicionY` float NOT NULL DEFAULT 0,
  `PosicionZ` float NOT NULL DEFAULT 0,
  `PosicionR` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `Vida` float NOT NULL DEFAULT 100,
  `Chaleco` float NOT NULL DEFAULT 0,
  `Skin` int(11) NOT NULL DEFAULT 289,
  `FugaoVicio` int(11) NOT NULL DEFAULT 0,
  `Sexo` int(11) NOT NULL DEFAULT 1,
  `Edad` int(11) NOT NULL DEFAULT 16,
  `Ciudad` int(11) NOT NULL DEFAULT 1,
  `EstiloPelea` int(11) NOT NULL DEFAULT 4,
  `BolosUwU` int(11) NOT NULL DEFAULT 0,
  `BanescoOwO` int(11) NOT NULL DEFAULT 0,
  `LiderFaccion` int(11) NOT NULL DEFAULT 0,
  `MiembroFaccion` int(11) NOT NULL DEFAULT 0,
  `Rango` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_1` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_1` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_2` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_2` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_3` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_3` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_4` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_4` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_5` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_5` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_6` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_6` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_7` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_7` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_8` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_8` int(11) NOT NULL DEFAULT 0,
  `Bolsillo_9` int(11) NOT NULL DEFAULT 0,
  `Cantidad_bolsillo_9` int(11) NOT NULL DEFAULT 0,
  `Mano_derecha` int(11) NOT NULL DEFAULT 0,
  `Cantidad_mano_derecha` int(11) NOT NULL DEFAULT 0,
  `Mano_izquierda` int(11) NOT NULL DEFAULT 0,
  `Cantidad_mano_izquierda` int(11) NOT NULL DEFAULT 0,
  `Espalda` int(11) NOT NULL DEFAULT 0,
  `Cantidad_espalda` int(11) NOT NULL DEFAULT 0,
  `ChatVIP` int(11) NOT NULL DEFAULT 0,
  `Muerto` int(11) NOT NULL DEFAULT 0,
  `Jails` int(11) NOT NULL DEFAULT 0,
  `Arrestos` int(11) NOT NULL DEFAULT 0,
  `Sancionado` int(11) NOT NULL DEFAULT 0,
  `TiempoSancion` int(11) NOT NULL DEFAULT 0,
  `BySancion` varchar(24) NOT NULL DEFAULT 'none',
  `RazonSancion` varchar(128) NOT NULL DEFAULT 'none',
  `Ganzuas` int(11) NOT NULL DEFAULT 0,
  `Telefono` int(11) NOT NULL DEFAULT 0,
  `Velocimetro` int(11) NOT NULL DEFAULT 1,
  `Licencia1` int(11) NOT NULL DEFAULT 0,
  `Licencia2` int(11) NOT NULL DEFAULT 0,
  `Licencia3` int(11) NOT NULL DEFAULT 0,
  `Licencia4` int(11) NOT NULL DEFAULT 0,
  `Licencia5` int(11) NOT NULL DEFAULT 0,
  `Mascara` int(11) NOT NULL DEFAULT 0,
  `UsoMascara` int(11) NOT NULL DEFAULT 0,
  `OtakuN_N` int(11) NOT NULL DEFAULT 0,
  `TimeBanUwU` int(11) NOT NULL DEFAULT 0,
  `FueBan` varchar(24) NOT NULL DEFAULT 'server',
  `ReasonBanUwU` varchar(256) NOT NULL DEFAULT 'abuso',
  `MomentBan` varchar(256) NOT NULL DEFAULT '-',
  `BlockBug` int(11) NOT NULL DEFAULT 0,
  `BlockG` int(11) NOT NULL DEFAULT 0,
  `Documento` int(11) NOT NULL DEFAULT 0,
  `Habilidad1` int(11) NOT NULL DEFAULT 0,
  `Habilidad2` int(11) NOT NULL DEFAULT 0,
  `Habilidad3` int(11) NOT NULL DEFAULT 0,
  `Habilidad4` int(11) NOT NULL DEFAULT 0,
  `Habilidad5` int(11) NOT NULL DEFAULT 0,
  `Payday` int(11) NOT NULL DEFAULT 30,
  `Estrellas` int(11) NOT NULL DEFAULT 0,
  `LimiteRobos` int(11) NOT NULL DEFAULT 0,
  `Frecuencia_radio` int(11) NOT NULL DEFAULT 0,
  `TipoSpawn` int(11) NOT NULL DEFAULT 0,
  `EstadoYo` varchar(128) NOT NULL DEFAULT '',
  `NombreContacto1` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto1` int(11) NOT NULL DEFAULT 0,
  `NombreContacto2` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto2` int(11) NOT NULL DEFAULT 0,
  `NombreContacto3` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto3` int(11) NOT NULL DEFAULT 0,
  `NombreContacto4` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto4` int(11) NOT NULL DEFAULT 0,
  `NombreContacto5` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto5` int(11) NOT NULL DEFAULT 0,
  `NombreContacto6` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto6` int(11) NOT NULL DEFAULT 0,
  `NombreContacto7` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto7` int(11) NOT NULL DEFAULT 0,
  `NombreContacto8` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto8` int(11) NOT NULL DEFAULT 0,
  `NombreContacto9` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto9` int(11) NOT NULL DEFAULT 0,
  `NombreContacto10` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto10` int(11) NOT NULL DEFAULT 0,
  `NombreContacto11` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto11` int(11) NOT NULL DEFAULT 0,
  `NombreContacto12` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto12` int(11) NOT NULL DEFAULT 0,
  `NombreContacto13` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto13` int(11) NOT NULL DEFAULT 0,
  `NombreContacto14` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto14` int(11) NOT NULL DEFAULT 0,
  `NombreContacto15` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto15` int(11) NOT NULL DEFAULT 0,
  `NombreContacto16` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto16` int(11) NOT NULL DEFAULT 0,
  `NombreContacto17` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto17` int(11) NOT NULL DEFAULT 0,
  `NombreContacto18` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto18` int(11) NOT NULL DEFAULT 0,
  `NombreContacto19` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto19` int(11) NOT NULL DEFAULT 0,
  `NombreContacto20` varchar(24) NOT NULL DEFAULT 'none',
  `NumeroContacto20` int(11) NOT NULL DEFAULT 0,
  `JobSkin` int(11) NOT NULL DEFAULT 0,
  `RestriccionRobo` int(11) NOT NULL DEFAULT 0,
  `FalsoDocumento` int(11) NOT NULL DEFAULT 0,
  `FalsoNombre` varchar(24) NOT NULL DEFAULT 'none',
  `FechaRegistro` varchar(256) NOT NULL DEFAULT 'none',
  `UltimaConexion` varchar(256) NOT NULL DEFAULT 'none',
  `CamaraOculta` int(11) NOT NULL DEFAULT 0,
  `Toy1` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy2` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy3` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy4` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy5` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy6` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy7` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy8` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy9` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Toy10` varchar(512) NOT NULL DEFAULT '0|0|0.0|0.0|0.0|0.0|0.0|0.0|1|1|1|0|',
  `Cinturon_1` int(11) NOT NULL DEFAULT 0,
  `Cantidad_cinturon_1` int(11) NOT NULL DEFAULT 0,
  `Cinturon_2` int(11) NOT NULL DEFAULT 0,
  `Cantidad_cinturon_2` int(11) NOT NULL DEFAULT 0,
  `Cinturon_3` int(11) NOT NULL DEFAULT 0,
  `Cantidad_cinturon_3` int(11) NOT NULL DEFAULT 0,
  `Cinturon_4` int(11) NOT NULL DEFAULT 0,
  `Cantidad_cinturon_4` int(11) NOT NULL DEFAULT 0,
  `Cinturon_5` int(11) NOT NULL DEFAULT 0,
  `Cantidad_cinturon_5` int(11) NOT NULL DEFAULT 0,
  `Cinturon_6` int(11) NOT NULL DEFAULT 0,
  `Cantidad_cinturon_6` int(11) NOT NULL DEFAULT 0,
  `ColorToy1` int(11) NOT NULL DEFAULT -1,
  `ColorToy2` int(11) NOT NULL DEFAULT -1,
  `ColorToy3` int(11) NOT NULL DEFAULT -1,
  `ColorToy4` int(11) NOT NULL DEFAULT -1,
  `ColorToy5` int(11) NOT NULL DEFAULT -1,
  `ColorToy6` int(11) NOT NULL DEFAULT -1,
  `ColorToy7` int(11) NOT NULL DEFAULT -1,
  `ColorToy8` int(11) NOT NULL DEFAULT -1,
  `ColorToy9` int(11) NOT NULL DEFAULT -1,
  `ColorToy10` int(11) NOT NULL DEFAULT -1,
  `Trabajo1` int(11) NOT NULL DEFAULT -1,
  `Trabajo2` int(11) NOT NULL DEFAULT -1,
  `Trabajo3` int(11) NOT NULL DEFAULT -1,
  `Adiccion_1` int(11) NOT NULL DEFAULT 0,
  `Adiccion_2` int(11) NOT NULL DEFAULT 0,
  `Adiccion_3` int(11) NOT NULL DEFAULT 0,
  `Droga_tipo` int(11) NOT NULL DEFAULT 0,
  `Droga_tiempo` int(11) NOT NULL DEFAULT 0,
  `Droga_power` int(11) NOT NULL DEFAULT 0,
  `AbstinenceEffect` int(11) NOT NULL DEFAULT 0,
  `AbstinenceTime` int(11) NOT NULL DEFAULT 0,
  `TogManos` int(11) NOT NULL DEFAULT 1,
  `TogCajero` int(11) NOT NULL DEFAULT 0,
  `TogAnuncios` int(11) NOT NULL DEFAULT 0,
  `TogTelefono` int(11) NOT NULL DEFAULT 1,
  `TimerAnuncios` int(11) NOT NULL DEFAULT 0,
  `TogOOC` int(11) NOT NULL DEFAULT 1,
  `TogMusic` int(11) NOT NULL DEFAULT 1,
  `TogRadio` int(11) NOT NULL DEFAULT 1,
  `TogPortatil` int(11) NOT NULL DEFAULT 1,
  `TogFaccion` int(1) NOT NULL DEFAULT 1,
  `RepartoViajes` int(11) NOT NULL DEFAULT 0,
  `BasureroViajes` int(11) NOT NULL DEFAULT 0,
  `CosechasListas` int(11) NOT NULL DEFAULT 0,
  `EstiloManos` int(11) NOT NULL DEFAULT 1,
  `TiempoMolotov` int(11) NOT NULL DEFAULT 0,
  `AccesoGraffiti` int(11) NOT NULL DEFAULT 0,
  `ComprarNegocio` int(11) NOT NULL DEFAULT 0,
  `trailerAsignado` int(11) NOT NULL DEFAULT -1,
  `PtrailerAsignado` int(11) NOT NULL DEFAULT -1,
  `trailerDistancia` int(11) NOT NULL DEFAULT -1,
  `TipoCarga` int(11) NOT NULL DEFAULT 0,
  `Habilidad6` int(11) NOT NULL DEFAULT 0,
  `trailerIlegal` int(11) NOT NULL DEFAULT 0,
  `trailerTipo` int(11) NOT NULL DEFAULT 0,
  `NivelSobredosis` int(11) NOT NULL DEFAULT 0,
  `AdiccionAnfetamina` int(11) NOT NULL DEFAULT 0,
  `AdiccionCocaina` int(11) NOT NULL DEFAULT 0,
  `AdiccionOpioides` int(11) NOT NULL DEFAULT 0,
  `EfectoMetanfetamina` int(11) NOT NULL DEFAULT 0,
  `EfectoCocaina` int(11) NOT NULL DEFAULT 0,
  `EfectoMarihuana` int(11) NOT NULL DEFAULT 0,
  `EfectoLSD` int(11) NOT NULL DEFAULT 0,
  `EfectoMDMA` int(11) NOT NULL DEFAULT 0,
  `EfectoHongo` int(11) NOT NULL DEFAULT 0,
  `EfectoEspecialUWU` int(11) NOT NULL DEFAULT 0,
  `TiempoMetanfetamina` int(11) NOT NULL DEFAULT 0,
  `TiempoCocaina` int(11) NOT NULL DEFAULT 0,
  `TiempoMarihuana` int(11) NOT NULL DEFAULT 0,
  `TiempoHeroina` int(11) NOT NULL DEFAULT 0,
  `TiempoKetamina` int(11) NOT NULL DEFAULT 0,
  `EfectoCrack` int(11) NOT NULL DEFAULT 0,
  `TiempoCrack` int(11) NOT NULL DEFAULT 0,
  `EfectoAnfetamina` int(11) NOT NULL DEFAULT 0,
  `TiempoAnfetamina` int(11) NOT NULL DEFAULT 0,
  `LabID` int(11) NOT NULL DEFAULT -1,
  `LlaveLab` int(11) NOT NULL DEFAULT -1,
  `Sobredosis` int(11) NOT NULL DEFAULT 0,
  `Etnia` int(11) NOT NULL DEFAULT 0,
  `Peso` int(11) NOT NULL DEFAULT 0,
  `Pelo` int(11) NOT NULL DEFAULT 0,
  `Altura` int(11) NOT NULL DEFAULT 0,
  `trailerActivo` int(11) NOT NULL DEFAULT 0,
  `Contrato` int(11) NOT NULL DEFAULT 0,
  `IsWeapon` int(11) NOT NULL DEFAULT 0,
  `Ojos` int(11) NOT NULL DEFAULT 0,
  `Sangre` int(11) NOT NULL DEFAULT 0,
  `Casado` varchar(24) NOT NULL DEFAULT '',
  `AtmTiempo` int(11) NOT NULL DEFAULT 0,
  `AtmVeh` int(11) NOT NULL DEFAULT 0,
  `AtmPaso` int(11) NOT NULL DEFAULT 0,
  `AtmDestino` int(11) NOT NULL DEFAULT -1,
  `UltimaSalida` int(11) NOT NULL DEFAULT 0,
  `PuntosRol` int(11) NOT NULL DEFAULT 0,
  `TiempoCodeina` int(11) NOT NULL DEFAULT 0,
  `RoboRecienteNeg` int(11) DEFAULT 0,
  `RoboRecienteATM` int(11) DEFAULT 0,
  `TimerRobar` int(11) DEFAULT 0,
  `Habilidad7` int(11) DEFAULT 0,
  `TimerDesguazar` int(11) NOT NULL DEFAULT 0,
  `TimerForzar` int(11) NOT NULL DEFAULT 0,
  `Tatuajes` int(11) NOT NULL,
  `TatuajesDesc` varchar(100) NOT NULL,
  `NivelLicenciaArmas` int(11) NOT NULL DEFAULT 0,
  `RobadoCd` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.plantas
CREATE TABLE IF NOT EXISTS `plantas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` int(11) DEFAULT 0,
  `Plantador` int(11) NOT NULL DEFAULT 0,
  `TiempoRestante` int(11) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `I` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Cosechas` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.portones
CREATE TABLE IF NOT EXISTS `portones` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Modelo` int(11) NOT NULL DEFAULT 0,
  `Tipo` int(11) NOT NULL DEFAULT 0,
  `DL` int(11) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `MoveX` float NOT NULL DEFAULT 0,
  `MoveY` float NOT NULL DEFAULT 0,
  `MoveZ` float NOT NULL DEFAULT 0,
  `Distancia` float NOT NULL DEFAULT 1,
  `Tiempo` int(11) NOT NULL DEFAULT 5000,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.puertas
CREATE TABLE IF NOT EXISTS `puertas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(128) NOT NULL DEFAULT 'none',
  `ExteriorX` float NOT NULL DEFAULT 0,
  `ExteriorY` float NOT NULL DEFAULT 0,
  `ExteriorZ` float NOT NULL DEFAULT 0,
  `ExteriorR` float NOT NULL DEFAULT 0,
  `ExteriorInt` int(11) NOT NULL DEFAULT 0,
  `ExteriorVW` int(11) NOT NULL DEFAULT 0,
  `InteriorX` float NOT NULL DEFAULT 0,
  `InteriorY` float NOT NULL DEFAULT 0,
  `InteriorZ` float NOT NULL DEFAULT 0,
  `InteriorR` float NOT NULL DEFAULT 0,
  `InteriorInt` int(11) NOT NULL DEFAULT 0,
  `InteriorVW` int(11) NOT NULL DEFAULT 0,
  `Modelo` int(11) NOT NULL DEFAULT 0,
  `MapIcon` int(11) NOT NULL DEFAULT 0,
  `Faccion` int(11) NOT NULL DEFAULT 0,
  `Admin` int(11) NOT NULL DEFAULT 0,
  `VIP` int(11) NOT NULL DEFAULT 0,
  `Estrellas` int(11) NOT NULL DEFAULT 0,
  `StatusVehiculo` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.puntosrol
CREATE TABLE IF NOT EXISTS `puntosrol` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Razon` varchar(128) NOT NULL,
  `Administrador` varchar(25) NOT NULL,
  `Usuario` varchar(25) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Fecha` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.repartos
CREATE TABLE IF NOT EXISTS `repartos` (
  `Fecha` varchar(40) NOT NULL,
  `Empleado` varchar(24) NOT NULL,
  `Negocio` int(11) NOT NULL,
  `Hora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.tragaperras
CREATE TABLE IF NOT EXISTS `tragaperras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `vw` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `ownerId` int(11) NOT NULL DEFAULT 0,
  `ownerEntity` text NOT NULL DEFAULT '',
  `cash` int(11) NOT NULL DEFAULT 0,
  `maxBet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.vehicles_info
CREATE TABLE IF NOT EXISTS `vehicles_info` (
  `Modelo` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL DEFAULT '',
  `Precio` int(11) NOT NULL DEFAULT 0,
  `MaxMaletero` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Modelo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla glow_rp.vehiculos
CREATE TABLE IF NOT EXISTS `vehiculos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(128) NOT NULL DEFAULT 'none',
  `Propietario` varchar(24) NOT NULL DEFAULT 'none',
  `Tipo` int(11) NOT NULL DEFAULT 0,
  `Negocio` int(11) NOT NULL DEFAULT 0,
  `Trabajo` int(11) NOT NULL DEFAULT 0,
  `Modelo` int(11) NOT NULL DEFAULT 0,
  `Posicion_X` float NOT NULL DEFAULT 0,
  `Posicion_Y` float NOT NULL DEFAULT 0,
  `Posicion_Z` float NOT NULL DEFAULT 0,
  `Posicion_R` float NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `End_Posicion_X` float NOT NULL DEFAULT 0,
  `End_Posicion_Y` float NOT NULL DEFAULT 0,
  `End_Posicion_Z` float NOT NULL DEFAULT 0,
  `End_Posicion_R` float NOT NULL DEFAULT 0,
  `End_Interior` int(11) NOT NULL DEFAULT 0,
  `End_VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `Vida` float NOT NULL DEFAULT 1000,
  `DanioSuperficie` int(11) NOT NULL DEFAULT 0,
  `DanioPuertas` int(11) NOT NULL DEFAULT 0,
  `DanioLuces` int(11) NOT NULL DEFAULT 0,
  `DanioRuedas` int(11) NOT NULL DEFAULT 0,
  `Gasolina` int(11) NOT NULL DEFAULT 200,
  `Color_1` int(11) NOT NULL DEFAULT 1,
  `Color_2` int(11) NOT NULL DEFAULT 1,
  `PaintJob` int(11) NOT NULL DEFAULT -1,
  `ConSeguro` int(11) NOT NULL DEFAULT 0,
  `Precio` int(11) NOT NULL DEFAULT 0,
  `Embargo` int(11) NOT NULL DEFAULT 0,
  `Multa` int(11) NOT NULL DEFAULT 0,
  `Maletero1` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant1` int(11) NOT NULL DEFAULT 0,
  `Maletero2` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant2` int(11) NOT NULL DEFAULT 0,
  `Maletero3` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant3` int(11) NOT NULL DEFAULT 0,
  `Maletero4` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant4` int(11) NOT NULL DEFAULT 0,
  `Maletero5` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant5` int(11) NOT NULL DEFAULT 0,
  `Maletero6` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant6` int(11) NOT NULL DEFAULT 0,
  `Maletero7` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant7` int(11) NOT NULL DEFAULT 0,
  `Maletero8` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant8` int(11) NOT NULL DEFAULT 0,
  `Maletero9` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant9` int(11) NOT NULL DEFAULT 0,
  `Maletero10` int(11) NOT NULL DEFAULT 0,
  `MaleteroCant10` int(11) NOT NULL DEFAULT 0,
  `MaxMaletero` int(11) NOT NULL DEFAULT 5,
  `Modificacion1` int(11) NOT NULL DEFAULT 0,
  `Modificacion2` int(11) NOT NULL DEFAULT 0,
  `Modificacion3` int(11) NOT NULL DEFAULT 0,
  `Modificacion4` int(11) NOT NULL DEFAULT 0,
  `Modificacion5` int(11) NOT NULL DEFAULT 0,
  `Modificacion6` int(11) NOT NULL DEFAULT 0,
  `Modificacion7` int(11) NOT NULL DEFAULT 0,
  `Modificacion8` int(11) NOT NULL DEFAULT 0,
  `Modificacion9` int(11) NOT NULL DEFAULT 0,
  `Modificacion10` int(11) NOT NULL DEFAULT 0,
  `Modificacion11` int(11) NOT NULL DEFAULT 0,
  `Modificacion12` int(11) NOT NULL DEFAULT 0,
  `Modificacion13` int(11) NOT NULL DEFAULT 0,
  `Modificacion14` int(11) NOT NULL DEFAULT 0,
  `Modificacion15` int(11) NOT NULL DEFAULT 0,
  `CallSign` varchar(40) NOT NULL DEFAULT '',
  `ObjModelo_1` int(11) NOT NULL DEFAULT 0,
  `ObjPosX_1` float NOT NULL DEFAULT 0,
  `ObjPosY_1` float NOT NULL DEFAULT 0,
  `ObjPosZ_1` float NOT NULL DEFAULT 0,
  `ObjRotX_1` float NOT NULL DEFAULT 0,
  `ObjRotY_1` float NOT NULL DEFAULT 0,
  `ObjRotZ_1` float NOT NULL DEFAULT 0,
  `ObjModelo_2` int(11) NOT NULL DEFAULT 0,
  `ObjPosX_2` float NOT NULL DEFAULT 0,
  `ObjPosY_2` float NOT NULL DEFAULT 0,
  `ObjPosZ_2` float NOT NULL DEFAULT 0,
  `ObjRotX_2` float NOT NULL DEFAULT 0,
  `ObjRotY_2` float NOT NULL DEFAULT 0,
  `ObjRotZ_2` float NOT NULL DEFAULT 0,
  `ObjModelo_3` int(11) NOT NULL DEFAULT 0,
  `ObjPosX_3` float NOT NULL DEFAULT 0,
  `ObjPosY_3` float NOT NULL DEFAULT 0,
  `ObjPosZ_3` float NOT NULL DEFAULT 0,
  `ObjRotX_3` float NOT NULL DEFAULT 0,
  `ObjRotY_3` float NOT NULL DEFAULT 0,
  `ObjRotZ_3` float NOT NULL DEFAULT 0,
  `ObjModelo_4` int(11) NOT NULL DEFAULT 0,
  `ObjPosX_4` float NOT NULL DEFAULT 0,
  `ObjPosY_4` float NOT NULL DEFAULT 0,
  `ObjPosZ_4` float NOT NULL DEFAULT 0,
  `ObjRotX_4` float NOT NULL DEFAULT 0,
  `ObjRotY_4` float NOT NULL DEFAULT 0,
  `ObjRotZ_4` float NOT NULL DEFAULT 0,
  `ObjModelo_5` int(11) NOT NULL DEFAULT 0,
  `ObjPosX_5` float NOT NULL DEFAULT 0,
  `ObjPosY_5` float NOT NULL DEFAULT 0,
  `ObjPosZ_5` float NOT NULL DEFAULT 0,
  `ObjRotX_5` float NOT NULL DEFAULT 0,
  `ObjRotY_5` float NOT NULL DEFAULT 0,
  `ObjRotZ_5` float NOT NULL DEFAULT 0,
  `Sirena` int(11) NOT NULL DEFAULT 0,
  `Premium` int(11) NOT NULL DEFAULT 0,
  `Compartida1` varchar(24) NOT NULL DEFAULT 'none',
  `Compartida2` varchar(24) NOT NULL DEFAULT 'none',
  `Compartida3` varchar(24) NOT NULL DEFAULT 'none',
  `Stereo` int(11) NOT NULL DEFAULT 0,
  `Papeles` int(11) NOT NULL DEFAULT 1632844045,
  `Neumatico1` int(11) NOT NULL DEFAULT 144000,
  `Neumatico2` int(11) NOT NULL DEFAULT 144000,
  `Neumatico3` int(11) NOT NULL DEFAULT 144000,
  `Neumatico4` int(11) NOT NULL DEFAULT 144000,
  `VidaNeumatico1` int(11) NOT NULL DEFAULT 0,
  `VidaNeumatico2` int(11) NOT NULL DEFAULT 0,
  `VidaNeumatico3` int(11) NOT NULL DEFAULT 0,
  `VidaNeumatico4` int(11) NOT NULL DEFAULT 0,
  `Taxi` int(11) NOT NULL,
  `TaxiObj1` float NOT NULL DEFAULT 0,
  `TaxiObj2` float NOT NULL DEFAULT 0,
  `TaxiObj3` float NOT NULL DEFAULT 0,
  `TaxiObj4` float NOT NULL DEFAULT 0,
  `TaxiObj5` float NOT NULL DEFAULT 0,
  `TaxiObj6` float NOT NULL DEFAULT 0,
  `Gunrack1` int(11) NOT NULL DEFAULT 0,
  `Gunrack2` int(11) NOT NULL DEFAULT 0,
  `Cantidad_gunrack1` int(11) NOT NULL DEFAULT 0,
  `Cantidad_gunrack2` int(11) NOT NULL DEFAULT 0,
  `Guantera` int(11) NOT NULL DEFAULT 0,
  `Cantidad_guantera` int(11) NOT NULL DEFAULT 0,
  `EstadoGuantera` int(11) NOT NULL DEFAULT 0,
  `TiempoDesguazar` int(11) NOT NULL,
  `Maletero11` int(11) DEFAULT 0,
  `MaleteroCant11` int(11) DEFAULT 0,
  `Maletero12` int(11) DEFAULT 0,
  `MaleteroCant12` int(11) DEFAULT 0,
  `Maletero13` int(11) DEFAULT 0,
  `MaleteroCant13` int(11) DEFAULT 0,
  `Maletero14` int(11) DEFAULT 0,
  `MaleteroCant14` int(11) DEFAULT 0,
  `Maletero15` int(11) DEFAULT 0,
  `MaleteroCant15` int(11) DEFAULT 0,
  `Maletero16` int(11) DEFAULT 0,
  `MaleteroCant16` int(11) DEFAULT 0,
  `Maletero17` int(11) DEFAULT 0,
  `MaleteroCant17` int(11) DEFAULT 0,
  `Maletero18` int(11) DEFAULT 0,
  `MaleteroCant18` int(11) DEFAULT 0,
  `Maletero19` int(11) DEFAULT 0,
  `MaleteroCant19` int(11) DEFAULT 0,
  `Maletero20` int(11) DEFAULT 0,
  `MaleteroCant20` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
