@echo off
title Chatgpt for QQ by lss233 installer by lyx
cd /d %~dp0
git -v >nul 2>nul || (echo gitδ��װ�����Ȱ�װgit & echo git-scm.com & pause & exit)
mkdir OneBot
copy .\files\OneBot\*.* .\OneBot\
cd OneBot
echo ����������� config.yml�����޸������QQ�˺ţ��������ա�(ǧ��Ҫ�����)
notepad config.yml
echo ����һ�Ρ�����OneBot.cmd�����device.json����"protocol":6��Ϊ"protocol":2
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
ECHO ����������� config.cfg�����޸��������Ϣ��
notepad config.cfg
cd ..


cls


copy .\files\scripts\*.* . >nul 2>nul
ECHO "����������ִ�� ������ChatGPT.cmd������������"
ECHO "Ȼ��ִ�� ������OneBot.cmd�� ����¼������ QQ��Ȼ��Ϳ��Կ�ʼʹ���ˣ�"
pause
exit
