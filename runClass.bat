@echo off
rem ---------------------------------------------------------------------------
rem runClassV3.0.bat
rem 双击本批处理即可安装
rem 安装须知：预先安装了jdk，并设置了环境变量%java_home%、%path%、%classpath%
rem 笃行天下制作 http://hi.baidu.com/duxing 2010年5月18日8:42:24
rem 如果您更新了本文件，能分享给我吗？softor@vip.qq.com
rem 讨论页面：http://t.cn/hbAKZY
rem 更新日期：2010年11月26日 14:32:44
rem ---------------------------------------------------------------------------

echo 【注意：运行前请确定您安装了jdk，并设置了环境变量%%java_home%%、%%path%%、%%classpath%%】
echo.
if not "%java_home%" == "" goto associate
echo 没有设置环境变量%java_home%,请设置后再安装!
echo.
goto over

:associate
echo.正在关联class文件打开方式 ...
reg add HKEY_CLASSES_ROOT\.class /f /ve /t REG_SZ /d "classfile"
reg add HKEY_CLASSES_ROOT\classfile\DefaultIcon /f /ve /t REG_EXPAND_SZ /d "%%java_home%%\bin\java.exe,0"
reg add HKEY_CLASSES_ROOT\classfile\shell\run\command /f /ve /t REG_EXPAND_SZ /d "cmd /c echo off & (for %%%%i in (\"%%1\") do ( title %%%%~ni运行结果 & cd /d \"%%%%~dpi\" & java \"%%%%~ni\" ) )& pause"
echo.
echo.关联class文件完毕!
echo.
goto end

:end
echo.安装完毕!
echo.

:over
pause 
