CREATE TABLE `transactions` (
  `transactionID` int NOT NULL AUTO_INCREMENT,
  `lessorId` int NOT NULL,
  `renterId` int NOT NULL,
  `fromDate` datetime DEFAULT NULL,
  `toDate` datetime DEFAULT NULL,
  `dailyPrice` decimal(8,2) NOT NULL,
  `transactionItemId` int NOT NULL,
  `transactionStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`transactionID`),
  UNIQUE KEY `transactionID_UNIQUE` (`transactionID`) /*!80000 INVISIBLE */,
  KEY `lessorId_IX` (`lessorId`),
  KEY `renterId_IX` (`renterId`),
  KEY `transactionItemId_IX` (`transactionItemId`),
  CONSTRAINT `fk_lessorID` FOREIGN KEY (`lessorId`) REFERENCES `users` (`userId`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_renterId` FOREIGN KEY (`renterId`) REFERENCES `users` (`userId`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_transItemID` FOREIGN KEY (`transactionItemId`) REFERENCES `items` (`itemId`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
