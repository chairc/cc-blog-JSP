#帮助文档（CN）
	此项目为经典的MVC设计项目，采用传统的多层架构编写，视图层，控制器，模型层

	[1]关于文件命名
		1.servlet命名（功能名称）			
		2.jsp命名（jsp文件夹+所属功能+名称）
			例如：留言板功能
			/jsp/message/Message.jsp			//普通留言板
			/jsp/message/Message_Index.jsp			//主页留言板
			/jsp/message/AddMessage.jsp			//编写留言
	[2]关于servlet的映射
		1.servlet版本：3.1
		2.servlet配置格式：	
			(1)web.xml配置		
			(2)servlet3.0配置
	[3]关于download文件夹
		此文件夹可以放置你所需要下载的东西
		注：主页ChairC_Index.jsp下方下载工具的选项中源文件未添加，这里使用了多个一样命名的zip文件
	[4]关于数据库连接
			1.打开DBConn.java
			找到static String url = "jdbc:mysql://127.0.0.1:3306/数据库名?useUnicode = true&characterEncoding = utf-8&useSSL = false&serverTimezone = GMT&allowPublicKeyRetrieval=true";
			
			
			
			
			