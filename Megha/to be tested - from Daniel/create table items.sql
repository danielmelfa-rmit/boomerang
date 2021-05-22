CREATE TABLE `items` (
  `itemId` int NOT NULL AUTO_INCREMENT,
  `itemName` varchar(100) NOT NULL,
  `itemDescription` varchar(255) NOT NULL,
  `itemPrice` decimal(8,2) NOT NULL,
  `itemStatus` varchar(45) NOT NULL,
  `itemDateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `itemImagePath` varchar(60) DEFAULT NULL,
  `ownerUserId` int NOT NULL,
  PRIMARY KEY (`itemId`),
  KEY `itemId_IX` (`itemId`) /*!80000 INVISIBLE */,
  KEY `ownerUserId_IX` (`ownerUserId`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_ownerUserId` FOREIGN KEY (`ownerUserId`) REFERENCES `users` (`userId`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;