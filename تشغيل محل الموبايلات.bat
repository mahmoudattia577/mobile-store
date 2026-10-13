@echo off
chcp 65001 > nul
title تشغيل محل الموبايلات

:: البحث عن متصفح Google Chrome أولاً
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%~dp0index.html" --start-maximized
    exit
)
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" --app="%~dp0index.html" --start-maximized
    exit
)
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" (
    start "" "%LocalAppData%\Google\Chrome\Application\chrome.exe" --app="%~dp0index.html" --start-maximized
    exit
)

:: في حال عدم وجود Chrome، تشغيل Microsoft Edge بوضع التطبيق المستقل
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%~dp0index.html" --start-maximized
    exit
)

:: فتح المتصفح الافتراضي في أسوأ الأحوال
start "" "%~dp0index.html"
exit
