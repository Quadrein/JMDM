@echo off 
chcp 65001 >nul 
echo JMDM 실시간 데미지 미터 
echo ==================== 
echo. 
:: 관리자 권한 확인 
net session >nul 2>&1 
if %errorlevel% neq 0 ( 
    echo [ERROR] 관리자 권한이 필요합니다. 
    echo 이 파일을 마우스 우클릭하여 "관리자 권한으로 실행"을 선택하세요. 
    echo. 
    pause 
    exit /b 1 
) 
 
echo ✓ 관리자 권한 확인됨 
echo ✓ JMDM 시작 중... 
echo. 
"%~dp0JMDM.exe" %* 
if %errorlevel% neq 0 ( 
    echo. 
    echo [ERROR] 프로그램 실행 실패 
    echo Npcap이 설치되어 있는지 확인하세요: https://npcap.com/ 
    pause 
) 
