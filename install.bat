@echo off
title Chatgpt for QQ by lss233 installer by lyx
cd /d %~dp0
git -v >nul 2>nul || (echo git未安装！请先安装git & echo git-scm.com & pause & exit)
mkdir OneBot
copy .\files\OneBot\*.* .\OneBot\
cd OneBot
echo 接下来将会打开 config.yml，请修改里面的QQ账号，密码留空。(千万不要填！！！)
notepad config.yml
echo 运行一次【启动OneBot.cmd】后打开device.json，将"protocol":6改为"protocol":2
pause
cd ..


git clone https://ghproxy.com/https://github.com/lss233/chatgpt-mirai-qq-bot -output chatgpt
xcopy .\files\chatgpt .\chatgpt\ /e
cd chatgpt
cd python3.11
set python="%cd%\python.exe"
%python% get-pip.py --no-warn-script-location
cd ..
%python% -m pip install -i https://mirrors.aliyun.com/pypi/simple/ --extra-index-url https://pypi.org/simple/ -r requirements.txt --no-warn-script-location
ECHO 接下来将会打开 config.cfg，请修改里面的信息。
notepad config.cfg
cd ..


cls


copy .\files\scripts\*.* . >nul 2>nul
ECHO "接下来请先执行 【启动ChatGPT.cmd】，启动程序。"
ECHO "然后执行 【启动OneBot.cmd】 并登录机器人 QQ，然后就可以开始使用了！"
pause
exit
