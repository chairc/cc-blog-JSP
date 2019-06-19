# JSP
ManageSystem(jsp+servlet)

数据库：mysql8.0
IDE：eclipse/VSCode

数据库表名：

1)
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `home` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

2)
CREATE TABLE `user_message` (
  `addmessageid` int(11) NOT NULL AUTO_INCREMENT,
  `addmessagename` varchar(255) DEFAULT NULL,
  `addmessageinfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addmessageid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

3)
CREATE TABLE `user_message_info` (
  `m_id` int(100) NOT NULL,
  `m_main_title` varchar(255) DEFAULT NULL,
  `m_title` varchar(255) DEFAULT NULL,
  `m_info` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
