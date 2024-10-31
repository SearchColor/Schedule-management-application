DROP DATABASE IF EXISTS schedule_db;
CREATE DATABASE schedule DEFAULT CHARSET = utf8 COLLATE =utf8_bin;

USE schedule;
DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
                        `ID` int NOT NULL AUTO_INCREMENT,
                        `email` varchar(255) DEFAULT NULL,
                        `name` varchar(45) DEFAULT NULL,
                        `registration_date` date DEFAULT NULL,
                        `modification_date` date DEFAULT NULL,
                        PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS schedule;
CREATE TABLE `schedule` (
                            `ID` int NOT NULL AUTO_INCREMENT,
                            `password` varchar(255) DEFAULT NULL,
                            `user_ID` int DEFAULT NULL,
                            `user_name` varchar(45) DEFAULT NULL,
                            `registration_date` date DEFAULT NULL,
                            `modification_date` date DEFAULT NULL,
                            PRIMARY KEY (`ID`),
                            KEY `userID_idx` (`user_ID`),
                            CONSTRAINT `userID` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;