CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) NOT NULL,
  `password` varchar(45) GENERATED ALWAYS AS (concat(`lastName`,_utf8mb4'-',`firstName`)) VIRTUAL,
  `street` varchar(60) NOT NULL,
  `suburb` varchar(60) NOT NULL,
  `state` varchar(60) NOT NULL,
  `country` varchar(45) NOT NULL DEFAULT 'Australia',
  `postCode` smallint NOT NULL,
  `dateJoined` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` varchar(20) NOT NULL,
  `userType` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userid_UNIQUE` (`userId`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
