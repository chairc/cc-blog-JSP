# JSP-ManageSystem
CN：

管理后台基础代码(jsp+servlet)

测试网站：https://www.chairc.cn

数据库：mysql8.0

编程集成软件：eclipse/VSCode

部署服务器：apache-tomcat-8.0.39

数据库表名：

1)
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `home` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `servertime` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `safequestion` varchar(255) NOT NULL,
  `safeanswer` varchar(255) NOT NULL,
  `whichsystem` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `whichbrowsername` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
 
4)
CREATE TABLE `user_logintimelog` (
  `logid` int(255) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `logtime` varchar(255) DEFAULT NULL,
  `logip` varchar(255) DEFAULT NULL,
  `logsystem` varchar(255) DEFAULT NULL,
  `logbrowsername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

5)
 CREATE TABLE `user_article` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `articletitle` varchar(255) NOT NULL,
  `articlemain` varchar(15000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `articleauthor` varchar(50) DEFAULT NULL,
  `articletime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

6)
CREATE TABLE `garbage_class` (
  `garbageid` int(5) NOT NULL AUTO_INCREMENT,
  `garbagename` varchar(255) NOT NULL,
  `garbageclass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`garbageid`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

EN： 
 
Management basic code (jsp+servlet)

Test website: https://www.chairc.cn

Database: mysql8.0

IDE: eclipse/VSCode

Deployment server: apache-tomcat-8.0.39

Database table name:

1)
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `home` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `servertime` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `safequestion` varchar(255) NOT NULL,
  `safeanswer` varchar(255) NOT NULL,
  `whichsystem` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `whichbrowsername` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
 
4)
CREATE TABLE `user_logintimelog` (
  `logid` int(255) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `logtime` varchar(255) DEFAULT NULL,
  `logip` varchar(255) DEFAULT NULL,
  `logsystem` varchar(255) DEFAULT NULL,
  `logbrowsername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

5)
 CREATE TABLE `user_article` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `articletitle` varchar(255) NOT NULL,
  `articlemain` varchar(15000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `articleauthor` varchar(50) DEFAULT NULL,
  `articletime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

6)
CREATE TABLE `garbage_class` (
  `garbageid` int(5) NOT NULL AUTO_INCREMENT,
  `garbagename` varchar(255) NOT NULL,
  `garbageclass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`garbageid`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
