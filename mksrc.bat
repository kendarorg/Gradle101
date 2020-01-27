@echo off
set DEST_DIR=%1
set PRJ_TYPE=%2
set PRJ_GROUP=%3
set PRJ_VERSION=%4

mkdir %DEST_DIR%

echo plugins {>%DEST_DIR%\build.gradle
echo    id '%PRJ_TYPE%'>>%DEST_DIR%\build.gradle
echo }>>%DEST_DIR%\build.gradle
echo group '%PRJ_GROUP%'>>%DEST_DIR%\build.gradle
echo version '%PRJ_VERSION%'>>%DEST_DIR%\build.gradle


mkdir %DEST_DIR%\src\main\java
echo empty>%DEST_DIR%\src\main\java\.gitkeep
mkdir %DEST_DIR%\src\main\resources
echo empty>%DEST_DIR%\src\main\resources\.gitkeep

mkdir %DEST_DIR%\src\test\java
echo empty>%DEST_DIR%\src\test\java\.gitkeep
mkdir %DEST_DIR%\src\test\resources
echo empty>%DEST_DIR%\src\test\resources\.gitkeep