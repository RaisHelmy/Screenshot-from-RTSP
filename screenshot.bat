@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
rEM set "fullstamp=%dt:~0,4%-%dt:~4,2%-%dt:~6,2%_%dt:~8,2%-%dt:~10,2%-%dt:~12,2%"
Rem fullstamp: "%fullstamp%"
Rem this is test rtsp rtsp://admin:hik12345@113.210.18.142/Streaming/Channels/101 
Rem ffmpeg -i rtsp://admin:hik12345@113.210.18.142/Streaming/Channels/101 -f image2 camera01/%fullstamp%.jpg
ffmpeg -y -i rtsp://admin:hik12345@113.210.18.142/Streaming/Channels/101 -vframes 1 camera01/%fullstamp%.jpg