@echo off
rem ---------------------------------------------------------------------------
rem runClassV3.0.bat
rem ˫�����������ɰ�װ
rem ��װ��֪��Ԥ�Ȱ�װ��jdk���������˻�������%java_home%��%path%��%classpath%
rem ������������ http://hi.baidu.com/duxing 2010��5��18��8:42:24
rem ����������˱��ļ����ܷ��������softor@vip.qq.com
rem ����ҳ�棺http://t.cn/hbAKZY
rem �������ڣ�2010��11��26�� 14:32:44
rem ---------------------------------------------------------------------------

echo ��ע�⣺����ǰ��ȷ������װ��jdk���������˻�������%%java_home%%��%%path%%��%%classpath%%��
echo.
if not "%java_home%" == "" goto associate
echo û�����û�������%java_home%,�����ú��ٰ�װ!
echo.
goto over

:associate
echo.���ڹ���class�ļ��򿪷�ʽ ...
reg add HKEY_CLASSES_ROOT\.class /f /ve /t REG_SZ /d "classfile"
reg add HKEY_CLASSES_ROOT\classfile\DefaultIcon /f /ve /t REG_EXPAND_SZ /d "%%java_home%%\bin\java.exe,0"
reg add HKEY_CLASSES_ROOT\classfile\shell\run\command /f /ve /t REG_EXPAND_SZ /d "cmd /c echo off & (for %%%%i in (\"%%1\") do ( title %%%%~ni���н�� & cd /d \"%%%%~dpi\" & java \"%%%%~ni\" ) )& pause"
echo.
echo.����class�ļ����!
echo.
goto end

:end
echo.��װ���!
echo.

:over
pause 
