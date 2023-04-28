CREATE DEFINER=`root`@`localhost` PROCEDURE `ChemicalCount`(IN envType VARCHAR(20), OUT quantity VARCHAR(50))
SELECT COUNT(*)
    INTO quantity
    FROM chemical
    Where type = envType

--
CREATE DEFINER=`root`@`localhost` PROCEDURE `EnvironmentCheck`(IN typeEnv VARCHAR(20), OUT locationRoad VARCHAR(50))
SELECT COUNT(*)
    INTO locationRoad
    FROM environment
    WHERE env_type = typeEnv
    
--
    CREATE DEFINER=`root`@`localhost` FUNCTION `IndustryType`(id INT) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE locationName VARCHAR(50);
    
    SELECT location
    INTO locationName
    FROM industry;
RETURN 1;
END

--
CREATE DEFINER=`root`@`localhost` FUNCTION `epaLocation`(e_type VARCHAR(20)) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE chemName VARCHAR(50);
    
    SELECT chemical_name
    INTO chemName
    FROM EPA;
RETURN 1;
END

--
