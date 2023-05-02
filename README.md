# chatgpt-for-qq-installer

为[lss233/chatgpt-mirai-qq-bot](https://github.com/lss233/chatgpt-mirai-qq-bot)准备的自动安装包

为windows用户编写，linux用户就别凑热闹了

使用OneBot

安装git后可以自动从github拉取文件，自动更新

网络不好的不要使用

# 使用方法：

进入[Releases](https://github.com/laboriouslyx/chatgpt-for-qq-installer/releases/latest)

下载![image](https://user-images.githubusercontent.com/116939188/235685396-4833c478-6eff-4f76-be65-41136088bfc6.png)

解压后运行install.bat，根据提示进行配置

最后一个config.cfg，可以参考[教程](https://chatgpt-qq.lss233.com/)来配置

配置完成之后，请双击启动OneBot.cmd，当显示"已生成设备信息并保存到 device.json 文件."后，关闭命令框

进入文件夹OneBot，编辑device.json

ctrl+f搜索"protocol":,将后面的数字改为2(手表登录)

不要尝试其他协议！

经测试，使用手表协议可用

再次运行"启动OneBot.cmd"，在出现二维码后，扫描登录

如果二维码太大或不清晰，请进入OneBot文件夹，打开qrcode.png，放大进行扫描

登录完成后，双击启动启动ChatGPT.cmd

如果出错请前往原仓库的issues提交错误，不要找我

后续运行直接打开启动ChatGPT.cmd和启动OneBot.cmd就可以了
