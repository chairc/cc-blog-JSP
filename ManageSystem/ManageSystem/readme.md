#帮助文档（CN）


	关于文件命名
		1.servlet命名（功能名称）
			
		2.jsp命名（jsp文件夹+所属功能+名称）
			例如：留言板功能
			/jsp/message/Message.jsp			//普通留言板
			/jsp/message/Message_Index.jsp			//主页留言板
			/jsp/message/AddMessage.jsp			//编写留言

	关于servlet的映射

		1.servlet版本：3.1
		2.servlet配置格式：	
			(1)web.xml配置		
			(2)servlet3.0配置
	
	
	关于数据库连接
	
		1.打开DBConn.java
			找到static String url = "jdbc:mysql://127.0.0.1:3306/数据库名?useUnicode = true&characterEncoding = utf-8&useSSL = false&serverTimezone = GMT&allowPublicKeyRetrieval=true";