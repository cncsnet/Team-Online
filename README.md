安装说明： 
===
首先在你的mysql数据库中建立一个cncsnet库（也可以是别的），之后导入压缩包中的cncsnet.sql数据库文件。
进入到\WEB-INF\classes下找到db.properties文件，使用记事本打开，修改后面的值。
name=你的数据用户名
pass=你的数据库密码
url=你的数据库地址，如果上面建库的时候如果不是cncsnet，在这里把cncsnet替换成刚才建库的名称
就改这三个。
后台地址：http://你的ip或域名/admin.jsp
默认用户名：admin
默认密码：ningyang
之后把压缩包的所有代码都放到tomcat或者xmapp中的webapps中的ROOT目录，运行服务器，测试即可

注意：这次版本是第一个发布版，绝对免费，如果发现网站存在漏洞，可以联系QQ：747004510

