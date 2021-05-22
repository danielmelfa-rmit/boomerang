CREATE TABLE `notifications` (
  `notificationId` int NOT NULL AUTO_INCREMENT,
  `messageBody` longtext NOT NULL,
  `fromUserId` int NOT NULL,
  `toUserId` int NOT NULL,
  `dateSent` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notificationId`),
  KEY `fromUserId_IX` (`fromUserId`) /*!80000 INVISIBLE */,
  KEY `toUserId_IX` (`toUserId`),
  CONSTRAINT `fk_fromUserId` FOREIGN KEY (`fromUserId`) REFERENCES `users` (`userId`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_toUserId` FOREIGN KEY (`toUserId`) REFERENCES `users` (`userId`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
