::[Marcin Doga Aplication HUB]
@echo off
@chcp 852 >>nul

mkdir "%cd%\data\"

goto changelog



:changelog


cls
color 8
echo (najnowsze zmiany)
echo 22.08.2022
echo.
echo Musze zaczac programowac od nowa, wiele
echo bibliotek sie nie zgadza po przejsciu na 
echo visual studio 2022 z visuala w wersji 2019.
echo Ale juz teraz mozecie pobrac sobie najowsza moja
echo prace. Mam nadzieje ze was zainteresuje. :)
echo.
echo Pojawila sie nowa zakladka do pobrania wersji C#
echo.
echo.
echo (ostatnie zmiany)
echo 20.08.2022
echo.
echo Rozpoczalem dalsze prace nad aplikacja C#
echo.
echo Menu aplikacji zmieni sie bardzo mocno.
echo.
echo Bedzie stabilna i latwa w obsludze.
pause >>nul
goto systemver




:changelog2





cls
color 8
echo (najnowsze zmiany)
echo 22.08.2022
echo.
echo Musze zaczac programowac od nowa, wiele
echo bibliotek sie nie zgadza po przejsciu na 
echo visual studio 2022 z visuala w wersji 2019.
echo Ale juz teraz mozecie pobrac sobie najowsza moja
echo prace. Mam nadzieje ze was zainteresuje. :)
echo.
echo Pojawila sie nowa zakladka do pobrania wersji C#
echo.
echo.
echo (ostatnie zmiany)
echo 20.08.2022
echo.
echo Rozpoczalem dalsze prace nad aplikacja C#
echo.
echo Menu aplikacji zmieni sie bardzo mocno.
echo.
echo Bedzie stabilna i latwa w obsludze.
echo.
echo.
pause >>nul
goto inf






:changelog3







cls
color 8
echo (latest changes)
echo 22.08.2022
echo.
echo I have to start programming again, a lot
echo libraries do not agree after switching to 
echo visual studio 2022 from visual version 2019.
echo But now you can download my latest
echo work. I hope you will be interested. :)
echo.
echo There is a new tab to download the C# version
echo.
echo.
echo (recent changes)
echo 20.08.2022
echo.
echo I started further work on the C# application
echo.
echo The application menu will change very much.
echo.
echo It will be stable and easy to operate.
pause >>nul
goto noweinf
:aktualizacja





::Tutaj wymysle system aktualizowania







cls 
color 8



echo Szukanie najnowszej wersji
timeout /t 1 >>nul
echo.
echo Znaleziono
echo.
echo Dostepna jest nowsza wersja aplikacji w C# (Windows Form)
echo chcesz zainstalowac?
echo 0 - Tak
echo.
echo Chcesz by podmienic plik aplikacji na nowy?
echo ----------------------------------------------
echo 1 - Tak
echo 2 - Nie (Nie usuwaj starej wersji, nowa zostanie umieszczona w "data")
echo 3 - Cofnij
echo ----------------------------------------------
set /p podmiento=Wybierz:
if %podmiento%==0 goto newapp
if %podmiento%==1 goto podmien
if %podmiento%==2 goto niepodmien
if %podmiento%==3 goto ust

:newapp
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.exe -OutFile data\ApplicationHUB.exe
cls
echo Zainstalowano do folderu data, by uruchomic kliknij byle jaki przycisk
pause >>nul
start data\ApplicationHUB.exe
exit

:podmien
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.bat -OutFile ApplicationHUB.bat
cls 
echo Zaaktualizowano, potrzebny jest restart.
echo by zaktualizowac musisz kliknac byle jaki przycisk
pause >>nul
start ApplicationHUB.bat
exit



:niepodmien
mkdir "%cd%\data\"
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.bat -OutFile data\ApplicationHUB.bat
cls 
echo Zaaktualizowano, najnowsza wersja jest w folderze data.
goto ust
:aktualizacja2
::Here it will erase the updating system.
cls 
color 8






echo Find the latest version
timeout /t 1 >>nul
echo.
echo Found
echo.
echo A newer version of the application in C# (Windows Form) is available
echo want to install?
echo 0 - Yes
echo.
echo Do you want to replace the application file with a new one?
echo ----------------------------------------------
echo 1 - Yes
echo 2 - No (Do not delete the old version, the new one will be placed in the "data")
echo 3 - Back
echo ----------------------------------------------
set /p podmiento2=Wybierz:
if %podmiento2%==0 goto newapp2
if %podmiento2%==1 goto podmien2
if %podmiento2%==2 goto niepodmien2
if %podmiento2%==3 goto noweust


:newapp2
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.exe -OutFile data\ApplicationHUB.exe
cls
echo Installed to the data folder to run click any button.
pause >>nul
start data\ApplicationHUB.exe
exit

:podmien2
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.bat -OutFile ApplicationHUB.bat
cls 
echo Updated, a restart is needed.
echo to update you need to click any button
pause >>nul
start ApplicationHUB.bat
exit



:niepodmien2
mkdir "%cd%\data\"
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.bat -OutFile data\ApplicationHUB.bat
cls 
echo Updated, the latest version is in the data folder.
goto noweust








:aktualizacja2
::Here it will erase the updating system.
cls
color 8
echo Find the latest version
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.bat -OutFile data\ApplicationHUB.bat
cls 
echo Updated, the latest version is in the data folder
timeout /t 3 >>Nul
cls
goto noweust





::Sprawdzanie wersji systemu windows





:systemver
color 7
cls
echo System Version Finder by Marcin_Doga..
timeout /t 1 >>nul
cls
echo System Version Finder by Marcin_Doga...
timeout /t 1 >>nul
cls
:win1
VER | findstr /i "5\.0\." > nul

IF %ERRORLEVEL% EQU 0 color 0C |ECHO Running 2000 
if not %ERRORLEVEL%==0 goto win2 
timeout /t 1 >>nul
echo (Not Compatible)
color 0C
pause >nul

:win2
VER | findstr /i "5\.1\." > nul

IF %ERRORLEVEL% EQU 0 color 0C |ECHO Running XP
if not %ERRORLEVEL%==0 goto win3 
timeout /t 1 >>nul
echo (Not Compatible)
color 0C
pause >nul

:win3
VER | findstr /i "5\.2\." > nul

IF %ERRORLEVEL% EQU 0 color 0C |ECHO Running Win 2003 
if not %ERRORLEVEL%==0 goto win4 
timeout /t 1 >>nul
echo (Not Compatible)
color 0C
pause >nul

:win4
VER | findstr /i "6\.0\." > nul

IF %ERRORLEVEL% EQU 0 color 0C |ECHO Running Vista 
if not %ERRORLEVEL%==0 goto win5 
timeout /t 1 >>nul
echo (Not Compatible)
color 0C
pause >nul

:win5
VER | findstr /i "6\.1\." > nul

IF %ERRORLEVEL% EQU 0 color 0C | ECHO Running Windows 7/8 
if not %ERRORLEVEL%==0 goto win6 
timeout /t 1 >>nul
echo (Not Compatible)
color 0C
pause >nul


:win6
VER | findstr /i "10\.0\." > nul

if %ERRORLEVEL% EQU 0 color 0A | ECHO Running Win 10/11 
if not %ERRORLEVEL%==0 goto logowanie3 
timeout /t 1 >>nul
echo (Compatible)
color 0A
pause >nul
::Glowne menu i logowanie







:logowanie3
cls
title Aplication HUB by Marcin_Doga (Logining)
color 3
echo.
echo --------------------------------
echo System Windows Version:
:win26
if %ERRORLEVEL%==0 echo Win 10/11 (Compatible) 
if not %ERRORLEVEL%==0 echo Win 2000 - 8.1 (Not Compatible) Do you want to continue?
if not %ERRORLEVEL%==0 echo 0 - Exit
if not %ERRORLEVEL%==0 color 4
if not %ERRORLEVEL%==0 timeout /t 1 >nul
if not %ERRORLEVEL%==0 color 3
if not %ERRORLEVEL%==0 timeout /t 1 >nul
if not %ERRORLEVEL%==0 color 4
if not %ERRORLEVEL%==0 timeout /t 1 >nul
if not %ERRORLEVEL%==0 color 3
echo.
echo Main Menu
echo.
echo.
echo Select options
echo.
echo Jesli chcesz zaktualizowac aplikacje, musisz sie zalogowac i przejsc do ustawien!
echo If you want to update the apps, you need to log in and go to the settings!
echo ===========================================================================
echo 1 - Polski
echo ---------------------------------------------------------------------------
echo 2 - English
echo ---------------------------------------------------------------------------
echo 3 - Generate Version.txt
echo ---------------------------------------------------------------------------
echo 4 - Generate application files
echo ---------------------------------------------------------------------------
echo 5 - Exit the App
echo ---------------------------------------------------------------------------
echo.
echo 6 - Clock
echo ---------------------------------------------------------------------------
echo 7 - Install the latest powershell and libraries
echo ===========================================================================
echo.
set /p language=Select:
if %language%==0 goto wyjdz1
if %language%==1 goto wybierzurzytkownikapl
if %language%==2 goto wybierzurzytkownikaen
if %language%==6 goto clock
if %language%==3 goto versions
if %language%==4 goto explorer
if %language%==5 goto wyjdz1
if %language%==7 (
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://netcologne.dl.sourceforge.net/project/powershell.mirror/v7.2.5/PowerShell-7.2.5-win-x86.msi -OutFile data\PowerShell-7.2.5-win-x86.msi
	timeout /t 3 >>nul 

	start data\PowerShell-7.2.5-win-x86.msi
		cls
		echo Installed
		timeout /t 2 >>nul
goto logowanie3
)
::Wyjscie
:wyjdz1
cls
echo.
echo.
color 7C
echo =====================================
echo Are you sure you want to go out?
echo 1 - Yes
echo 2 - No
echo =====================================
set /p wyjdz2=Select:
if %wyjdz2%==1 goto wyjdz3
if %wyjdz2%==2 goto logowanie3
:wyjdz3
cls
echo See you!
echo Turning off.
timeout /t 1 >>nul
cls
echo See you!
echo Turning off..
timeout /t 1 >>nul
cls
echo See you!
echo Turning off...
timeout /t 1 >>nul
cls
echo See you!
echo Turning off.
timeout /t 1 >>nul
cls
echo See you!
echo Turning off..
timeout /t 1 >>nul
cls
echo See you!
echo Turning off...
timeout /t 1 >>nul
cls
exit
goto logowanie3
pause >nul
goto logowanie3
::Tworzenie pliku aplikacji
:versions
color 8
cls
echo Trwa tworzenie.
timeout /t 1 >>nul
cls
echo Trwa tworzenie..
timeout /t 1 >>nul
cls
echo Trwa tworzenie...
timeout /t 1 >>nul
if not exist version.txt 1 
echo|set /p="1.4.0">Version.txt
goto logowanie3
::Logowanie po Polsku
:wybierzurzytkownikapl
color 6
cls
echo.
echo Haslo jest zaszyfrowane
echo.
echo.
echo 0 - Incognito
echo 1 - Stworz Konto
echo 2 - Zaloguj sie
echo 3 - Lista Kont
echo 4 - Usun Urzytkownika 
echo.
echo.
echo 5 - Cofnij
echo.
set /p urzytkownikpl=Wybierz:
if %urzytkownikpl%==0 goto NOVIP
if %urzytkownikpl%==1 goto createuser
if %urzytkownikpl%==2 goto login
if %urzytkownikpl%==3 goto lista
if %urzytkownikpl%==4 goto delete
if %urzytkownikpl%==5 goto logowanie3
::Tworzenie Urzytkownika
:createuser
cls
echo.
echo Wpisz login:
set /p username= 
rem checks if account already exist
if exist "%username%.bat" (
echo The Account %username% Already Exist.
pause>nul
goto wybierzurzytkownikapl
)

echo.
cls
echo.
echo Wpisz haslo:
set /p password= 
rem creats file with user info
(
echo set username=%username%
echo set password=%password%
)>"%username%.bat"
mkdir "%cd%\data\%username%"
attrib +H +S "%username%.bat"
goto wybierzurzytkownikapl
::Wpisz login po polsku
:login
color 6
cls
set /p name=Login: 
if exist %name%.bat (
call %name%.bat
) else (
echo Zly login!
pause>nul
goto wybierzurzytkownikapl
)
if not %name% EQU %username% (
echo Zly login!
pause>nul
goto wybierzurzytkownikapl
)
set /p pass=Chaslo: 
if not %pass% EQU %password% (
echo Zle haslo!
pause>nul
goto wybierzurzytkownikapl
)
goto calareszta3
::Usun konto po polsku
:delete
cls
echo.
set /p name=Username: 
if not exist "%name%.bat" (
echo To jest niepoprawny login!
pause>nul
goto wybierzurzytkownikapl
)
del /AS "%name%.bat"
del /F/Q/S "%cd%\data\%username%\*.*" > nul
rmdir /Q/S "%cd%\data\%username%" >nul
rem Stworz folder data
if not exist "%cd%\data" mkdir "%cd%\data"
goto wybierzurzytkownikapl
::Lista wszystkich kont
:lista
cls
echo Wszyscy Urzytkownicy
echo.
for /f "delims= eol=" %%A IN ('dir /AS /B') do echo %%~nA
echo.
echo Nacisnij byle jaki przycisk by kontynuowac.
pause >nul
goto wybierzurzytkownikapl

::Edycja aplikacji dla zalogowanych

:VIP

:calareszta5
title Aplication HUB by Marcin_Doga (VIP)
color 3
cls
echo.
echo Urzytkownik %username% zostal zalogowany , Super!
goto calareszta2
:calareszta3
title Aplication HUB by Marcin_Doga (VIP)
color 3
cls
echo.
echo Urzytkownik %username%, zostal zalogowany z ostatniej sesji
:calareszta2
title Aplication HUB by Marcin_Doga (VIP)
color 3
echo.
echo.
echo Application HUB by Marcin_Doga
echo.
echo Edycja Pelna (VIP)
echo.
echo Czy wiesz ze: Wszystkie najciekawsze opcje 
echo kryja sie w Ustawieniach i informacjach.
echo.
echo ================================
echo 0 - Zainstaluj Aplikacje
echo 1 - Otworz zainstalowane Aplikacje
echo --------------------------------
echo 2 - Minecraft.Net
echo 3 - Minecraft Mapy
echo 4 - FaceBook
echo 5 - YouTube
echo 6 - Discord
echo 7 - Poczta Interia
echo 8 - Dysk Google
echo 9 - HBO MAX Filmy i Muzyka
echo --------------------------------
echo 10 - Informacje o Aplikacji
echo 11 - Ustawienia
echo 12 - Pomoc
echo 13 - Wyloguj sie
echo 14 - Wyjdz z Aplikacji
echo ================================
set /p s=Wybierz:
if %s%==0 goto instalator
if %s%==1 goto main
if %s%==2 start https://minecraft.net
if %s%==3 start https://minecraftmapy.pl
if %s%==4 start https://facebook.com
if %s%==5 start https://youtube.com
if %s%==6 start https://discord.com/channels/831780442533396490/868940340739076177
if %s%==7 start https://poczta.interia.pl/next/?uid=e01593d92f6c5ab9#/folder
if %s%==8 start https://drive.google.com/drive/my-drive
if %s%==9 start https://hbogo.pl
if %s%==10 goto inf
if %s%==11 goto ust
if %s%==12 goto pomoc
if %s%==13 goto logowanie3
if %s%==14 goto napewno
goto calareszta3
:napewnotak
cls
echo Do zobaczenia %username%!
echo Trwa wylaczanie.
timeout /t 1 >>nul
cls
echo Do zobaczenia %username%!
echo Trwa wylaczanie..
timeout /t 1 >>nul
cls
echo Do zobaczenia %username%!
echo Trwa wylaczanie...
timeout /t 1 >>nul
cls
echo Do zobaczenia %username%!
echo Trwa wylaczanie.
timeout /t 1 >>nul
cls
echo Do zobaczenia %username%!
echo Trwa wylaczanie..
timeout /t 1 >>nul
cls
echo Do zobaczenia %username%!
echo Trwa wylaczanie...
timeout /t 1 >>nul
cls
exit
goto calareszta3
::Informacje o aplikacji po polsku
:inf
cls
color 4
echo.
echo Informacje o Aplikacji
echo.
echo.
echo.
echo.
echo.
echo ================================
echo 1 - version 1.3.0
echo --------------------------------
echo 2 - Language: Polski
echo --------------------------------
echo 3 - Creator: Marcin Doga
echo --------------------------------
echo 4 - Youtube channel: Marcin Dg
echo --------------------------------
echo 5 - Zobacz Changelog
echo --------------------------------
echo 6 - Cofnij
echo ================================
set /p g=Wybierz:
if %g%==1 echo Przejdz do ustawien zeby edytowac.
if %g%==2 echo Przejdz do ustawien zeby edytowac.
if %g%==3 echo Przejdz do ustawien zeby edytowac.
if %g%==4 start https://www.youtube.com/channel/UCso8VUBKlMjAzw47U1vVKZA
if %g%==5 goto changelog2
if %g%==6 goto calareszta3
timeout /t 2 >>nul
goto inf
::Ustawienia po polsku
:ust
cls
color 4
echo.
echo Ustawienia
echo.
echo.
echo.
echo ====================================================
echo 0 - Zainstaluj najnowszy pakiet PowerShell i biblioteki.
echo ----------------------------------------------------
echo 1 - Wersja 1.3.0
echo ----------------------------------------------------
echo 2 - Language: Polski
echo ----------------------------------------------------
echo 3 - Testy
echo ----------------------------------------------------
echo 4 - generuj plik z informacjami o koncie
echo ----------------------------------------------------
echo 5 - Usun wszystkie pliki uzytkownika (OSTROZNIE!!!)
echo ----------------------------------------------------
echo 6 - Wymagania Systemowe
echo ----------------------------------------------------
echo 7 - Szukaj najnowszej aktualizacji dla aplikacji
echo ----------------------------------------------------
echo 8 - Cofnij
echo ====================================================
set /p f=Wybierz:

if %f%==0 (
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://netcologne.dl.sourceforge.net/project/powershell.mirror/v7.2.5/PowerShell-7.2.5-win-x86.msi -OutFile data\PowerShell-7.2.5-win-x86.msi
	powershell -Command Invoke-WebRequest -Uri https://www.coretechnologies.com/products/http-ping/http-ping.exe -OutFile data\Ping.exe
	timeout /t 3 >>nul 

	start data\PowerShell-7.2.5-win-x86.msi
	start data\Ping.exe
		cls
		echo Zainstalowano
		timeout /t 2 >>nul

)
if %f%==1 goto wersja
if %f%==2 goto noweust
if %f%==3 goto testy
if %f%==4 mkdir "%cd%\data\"
(echo set username=%username%
echo set password=%password%
)>"%cd%\data\User Information.txt"
if %f%==5 goto usunpliki
if %f%==7 goto aktualizacja

if %f%==8 goto calareszta3

if %f%==6 goto Wymagania
goto ust
::Wymagania komputera po polsku
:Wymagania
cls
color F3
echo.
echo.
echo ============================================================================
echo Wymagania Minimalne:
echo ----------------------------------------------------------------------------
echo System: Windows 10
echo Aplikacje: PowerShell
echo Pamiec magazynowa: 10 MB (Pliki Aplikacji)
echo Pamiec RAM: 2GB (Dzialanie systemu oraz aplikacji)
echo Procesor 2 Rdzeniowy, najlepiej: Procesor Intel Core 2 Duo T5250 2x1.50 GHz
echo Dostep do internetu
echo ----------------------------------------------------------------------------
echo Wymagania Zalecane:
echo ----------------------------------------------------------------------------
echo System: Windows 10/11
echo Aplikacje: PowerShell, Minecraft, Forza Horizon 4/5
echo Pamiec magazynowa: 30 MB (Pliki Aplikacji)
echo Pamiec RAM: 4 GB (Dobre dzialanie systemu i aplikacji)
echo Procesor 4 Rdzeniowy, najlepiej: Procesor Intel Core i3-8350K
echo Dostep do internetu i bluetooth
echo ============================================================================
echo 1 - Cofnij 
echo.
echo.
set /p Plwymagania=Wybierz:
IF '%Plwymagania%' == '%Plwymagania%' GOTO Wymaganiapl_%Plwymagania%
:Wymaganiapl_1
goto ust

goto Wymagania
::Usuwanie plikow Urzytkownika po polsku
:usunpliki
cls
color 3
echo.
echo.
echo ====================================================
echo Na pewno chcesz usunac wszystkie pliki urzytkownika?
echo ----------------------------------------------------
echo 1 - Tak
echo ----------------------------------------------------
echo 2 - Nie
echo ====================================================
set /p usun=Wybierz:
if %usun%==1 goto usun 
goto ust
:usun
(del /AS "%name%.bat"
	del /F/Q/S "%cd%\data\%username%\*.*" > nul
	del /Q/S "%cd%\data\"
	cls 
	echo Pliki usuniete pomyslnie!
	pause >>nul
)
if %usun%==2 goto ust
goto ust




::Wybieranie Urzytkownika po angielsku

:wybierzurzytkownikaen
cls
color 6
echo.
echo Password is encrypted
echo.
echo.
echo 0 - Incognito
echo 1 - create an account
echo 2 - log in
echo 3 - account list
echo 4 - remove user
echo.
echo.
echo 5 - Back
echo.
set /p urzytkownikpl2=Select:
if %urzytkownikpl2%==0 echo only in Polisch!
if %urzytkownikpl2%==0 timeout /t 2 >Nul
if %urzytkownikpl2%==0 goto wybierzurzytkownikaen
if %urzytkownikpl2%==1 goto createuser2
if %urzytkownikpl2%==2 goto login2
if %urzytkownikpl2%==3 goto lista2
if %urzytkownikpl2%==4 goto delete2
if %urzytkownikpl2%==5 goto logowanie3
::Tworzenie urzytkownika po angielsku
:createuser2
cls
echo.
echo enter login:
set /p username= 
if exist "%username%.bat" (
echo The Account %username% Already Exist.
pause>nul
goto wybierzurzytkownikaen
)

echo.
cls
echo.
echo enter password:
set /p password= 
(
echo set username=%username%
echo set password=%password%
)>"%username%.bat"
mkdir "%cd%\data\%username%"
attrib +H +S "%username%.bat"
goto wybierzurzytkownikaen
::Logowanie urzytkownika po angielsku
:login2
cls
set /p name=Username: 
if exist %name%.bat (
call %name%.bat
) else (
echo wrong login!
pause>nul
goto wybierzurzytkownikaen
)
if not %name% EQU %username% (
echo wrong login!
pause>nul
goto wybierzurzytkownikaen
)
set /p pass=Password: 
if not %pass% EQU %password% (
echo wrong password!
pause>nul
goto wybierzurzytkownikaen
)
goto nowecalareszta5
::Usuwanie urzytkownika po angielsku
:delete2
cls
echo. 
set /p name=Username: 
if not exist "%name%.bat" (
echo This is an incorrect login!
pause>nul
goto wybierzurzytkownikaen
)
del /AS "%name%.bat"
del /F/Q/S "%cd%\data\%username%\*.*" > nul
rmdir /Q/S "%cd%\data\%username%" >nul
rem Stworz folder data
if not exist "%cd%\data" mkdir "%cd%\data"
goto wybierzurzytkownikaen
::Lista kont po angielsku
:lista2
cls
echo All users
echo.
for /f "delims= eol=" %%A IN ('dir /AS /B') do echo %%~nA
echo.
echo Press any button to continue.
pause >nul
goto wybierzurzytkownikaen









::Edycja VIP dla zalogowanych Urzytkownikow po angielsku


:nowecalareszta5
title Aplication HUB by Marcin_Doga (VIP)
color 3
cls
echo.
echo User %username%, has been logged in, great!
goto nowecalareszta2
:nowecalareszta3
title Aplication HUB by Marcin_Doga (VIP)
color 3
cls
echo.
echo User %username%, was logged in from the last session.
:nowecalareszta2
title Aplication HUB by Marcin_Doga (VIP)
color 3
echo.
echo Application HUB by Marcin_Doga
echo.
echo All Edition (VIP)
echo.
echo Did you know: All the most interesting options 
echo are hidden in Settings and information.
echo.
echo ================================
echo 0 - Install Apps
echo 1 - Open the installed apps
echo --------------------------------
echo 2 - Minecraft.Net
echo 3 - Minecraft Maps
echo 4 - FaceBook
echo 5 - YouTube
echo 6 - Discord
echo 7 - Interia Post
echo 8 - Google Drive
echo 9 - HBO MAX Movies and Music
echo --------------------------------
echo 10 - About the Application
echo 11 - Settings
echo 12 - Help
echo 13 - Log out
echo 14 - Exit the App
echo ================================
set /p c=Select:
if %c%==0 echo not working!
if %c%==0 timeout /t 2 >>nul
if %c%==1 goto main1
if %c%==1 timeout /t 1 >nul
if %c%==2 start https://minecraft.net
if %c%==3 start https://minecraftmapy.pl
if %c%==4 start https://facebook.com
if %c%==5 start https://youtube.com
if %c%==6 start https://discord.com
if %c%==7 start https://poczta.interia.pl/next/?uid=e01593d92f6c5ab9#/folder
if %c%==8 start https://drive.google.com/drive/my-drive
if %c%==9 start https://hbogo.pl
if %c%==10 goto noweinf
if %c%==11 goto noweust
if %c%==12 goto nowepomoc
if %c%==13 goto logowanie3
if %c%==14 goto napewno2
goto nowecalareszta3
:napewnotak2
cls
echo See you %username%!
echo Turning off.
timeout /t 1 >>nul
cls
echo See you %username%!
echo Turning off..
timeout /t 1 >>nul
cls
echo See you %username%!
echo Turning off...
timeout /t 1 >>nul
cls
echo See you %username%!
echo Turning off.
timeout /t 1 >>nul
cls
echo See you %username%!
echo Turning off..
timeout /t 1 >>nul
cls
echo See you %username%!
echo Turning off...
timeout /t 1 >>nul
cls
exit
goto nowecalareszta3
::Informacje po angielsku
:noweinf
cls
color 4
echo.
echo About the Application
echo.
echo.
echo.
echo.
echo.
echo ================================
echo 1 - version 1.3.0
echo --------------------------------
echo 2 - Language: English
echo --------------------------------
echo 3 - Creator: Marcin Doga
echo --------------------------------
echo 4 - Youtube channel: Marcin Dg
echo --------------------------------
echo 5 - See Changelog
echo --------------------------------
echo 6 - Back
echo ================================
set /p o=Select:
if %o%==1 echo Go to settings to edit.
if %o%==2 echo Go to settings to edit.
if %o%==3 echo Go to settings to edit.
if %o%==4 start https://www.youtube.com/channel/UCso8VUBKlMjAzw47U1vVKZA
if %o%==5 goto changelog3
if %o%==6 goto nowecalareszta3
timeout /t 2 >>nul
goto noweinf
::Ustawienia po angielsku
:noweust
cls
color 4
echo.
echo Settings
echo.
echo.
echo.
echo ====================================================
echo 0 - Install the latest version of PowerShell, and libraries.
echo ----------------------------------------------------
echo 1 - Version 1.3.0
echo ----------------------------------------------------
echo 2 - Language: English
echo ----------------------------------------------------
echo 3 - Tests
echo ----------------------------------------------------
echo 4 - generate a file with account information
echo ----------------------------------------------------
echo 5 - Delete user files (SHARPLY!!!)
echo ----------------------------------------------------
echo 6 - System Requirements
echo ----------------------------------------------------
echo 7 - Search for the latest update for apps
echo ----------------------------------------------------
echo 8 - Back
echo ====================================================
set /p j=Select:
if %j%==0 (
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://netcologne.dl.sourceforge.net/project/powershell.mirror/v7.2.5/PowerShell-7.2.5-win-x86.msi -OutFile data\PowerShell-7.2.5-win-x86.msi
	powershell -Command Invoke-WebRequest -Uri https://www.coretechnologies.com/products/http-ping/http-ping.exe -OutFile data\Ping.exe
	timeout /t 3 >>nul 

	start data\PowerShell-7.2.5-win-x86.msi
	start data\Ping.exe
		cls
		echo Installed
		timeout /t 2 >>nul

)
if %j%==1 goto nowewersja
if %j%==2 goto ust
if %j%==3 echo Only in Polish!
if %j%==4 mkdir "%cd%\data\"
(echo set username=%username%
echo set password=%password%
)>"%cd%\data\User Information.txt"
if %j%==5 goto usunpliki2
if %j%==7 goto aktualizacja2
if %j%==8 goto nowecalareszta3

if %j%==6 goto WymaganiaEn
timeout /t 2 >>nul
goto noweust
::Wymagania komputera po angielsku
:WymaganiaEn
cls
color F3
echo.
echo.
echo ============================================================================
echo Minimum requirements:
echo ----------------------------------------------------------------------------
echo System: Windows 10
echo Applications: PowerShell
echo Memory: 10 MB (Application files)
echo RAM Memory: 2GB (Operation of the system and applications)
echo Processor 2 Core, best: Processor Intel Core 2 Duo T5250 2x1.50 GHz
echo Internet access
echo ----------------------------------------------------------------------------
echo Recommended Requirements:
echo ----------------------------------------------------------------------------
echo System: Windows 11
echo Applications: PowerShell, Minecraft, Forza Horizon 4/5
echo Memory: 30 MB (Application files)
echo RAM Memory: 4 GB (Good system and application performance)
echo Processor 4 Core, best: Procesor Intel Core i3-8350K
echo Internet access and bluetooth
echo ============================================================================
echo 1 - Back 
echo.
echo.
set /p Wymagania01=Wybierz:
IF '%Wymagania01%' == '%Wymagania01%' GOTO Wymagania_%Wymagania01%
:Wymagania_1
goto noweust

goto WymaganiaEn






::Usuwanie plikow aplikacji po angielsku
:usunpliki2
cls
color 3
echo.
echo.
echo ====================================================
echo Are you sure you want to delete all user files?
echo ----------------------------------------------------
echo 1 - Yes
echo ----------------------------------------------------
echo 2 - No
echo ====================================================
set /p usun2=Wybierz:
if %usun2%==1 goto usun2
goto noweust
:usun2
(del /AS "%name%.bat"
	del /F/Q/S "%cd%\data\%username%\*.*" > nul
	del /Q/S "%cd%\data\"
	cls 
	echo Files deleted successfully!
	pause >>nul
)
if %usun2%==2 goto noweust
goto noweust



timeout /t 2 >>nul
goto noweust

::Zegarek

:clock
:elo
cls
echo.
echo 0 - refresh
echo.
echo.
echo 1 - Time: %time%  
echo.
echo 2 - Date: %date%
echo.
echo 3 - Back
ping -n 2 0.0.0.0 >nul
echo.
echo.
set /p d=Select:
if %d%==3 goto logowanie3
if %d%==0 goto elo
goto elo
::Wpisywanie imienia niezalogowanego urzytkownika
:imie
cls
echo.
echo.
echo Wpisz swoje imie:
set /p f=">> "
cls
echo.
echo.
echo Witaj ponownie %f%!
echo Za chwile przejdziesz do aplikacji.
timeout /t 4 >>nul
goto calareszta5
::Wpisywanie imienia niezalogowanego urzytkownika po angielsku
:imie2
cls
echo.
echo.
echo Enter your name:
set /p fl=">> "
cls
echo.
echo.
echo Welcome back %fl%!
echo In a moment you will go to the application.
timeout /t 4 >>nul
goto nowecalareszta5
::Pomoc po polsku
:pomoc
cls
color 5
echo.
echo Pomoc
echo.
echo.
echo.
echo.
echo.
echo ================================================================================================
echo 1 - Nie klikaj enter jesli nie trzeba, poniewaz wylacza to aplikacje.
echo ------------------------------------------------------------------------------------------------
echo 2 - nie wpisuj numerow jesli nie ma ich do wyboru, poniewaz moze wywolac to bledy.
echo ------------------------------------------------------------------------------------------------
echo 3 - Jesli chcesz zmienic haslo musisz wejsc w edytor tekstu i otworzyc ten program.
echo ------------------------------------------------------------------------------------------------
echo 4 - Jesli potrzebujesz pomocy, lub wykryjesz blad napisz na: marcin.doga@interia.pl
echo ------------------------------------------------------------------------------------------------
echo 5 - Cofnij
echo ================================================================================================
echo.
echo.
set /p i=Wybierz:
if %i%==5 goto calareszta3
goto pomoc
::Pomoc po angielsku
:nowepomoc
cls
color 5
echo.
echo Help
echo.
echo.
echo.
echo.
echo.
echo ================================================================================================
echo 1 - Do not click enter if you do not need to, because it is disabled by applications
echo ------------------------------------------------------------------------------------------------
echo 2 - do not enter numbers if there are no numbers to choose from, because it can trigger errors
echo ------------------------------------------------------------------------------------------------
echo 3 - If you want to change the password you need to enter the text editor and open this program.
echo ------------------------------------------------------------------------------------------------
echo 4 - If you need help, or you detect an error, write to: marcin.doga@interia.pl
echo ------------------------------------------------------------------------------------------------
echo 5 - Back
echo ================================================================================================
echo.
echo.
set /p i=Select:
if %i%==5 goto nowecalareszta3
goto nowepomoc
::Wyjscie z aplikacji
:napewno
cls
color 2
echo.
echo.
echo.
echo.
echo.
echo ---------------------------
echo Czy na pewno chcesz wyjsc?
echo.
echo 1 - tak
echo 2 - nie
echo ---------------------------
set /p o=Wybierz:
if %o%==1 goto napewnotak
if %o%==2 goto calareszta3
::Wyjscie z aplikacji po angielsku
:napewno2
cls
color 2
echo.
echo.
echo.
echo.
echo.
echo ---------------------------
echo Are you sure you want to go out?
echo.
echo 1 - yes
echo 2 - no
echo ---------------------------
set /p b=Select:
if %b%==1 goto napewnotak2
if %b%==2 goto nowecalareszta3
::Testowane funkcje aplikacji
:testy
cls
color 4
echo ==============================
echo.
echo.
echo UWAGA TO TYLKO TESTY!
echo NIEKTORE FUNKCJE MOGA NIE DZIALAC!
echo.
echo 1 - Ok
echo 2 - Cofnij
echo ==============================
set /p ok=Wybierz:
if %ok%==1 goto menu
if %ok%==2 goto ust
:menu
cls
color 6
echo ==============================
echo.
echo.
echo 1 - New Apliation Hub
echo 2 - Odtwarzacz Muzyki (Nie dziala)
echo 3 - Instalator Aplikacji
echo.
echo 4 - Cofnij
echo ==============================
set /p menu=Wybierz:
if %menu%==1 goto main
if %menu%==2 goto odtwarzacz
if %menu%==2 timeout /t 1 >>nul
if %menu%==2 goto menu
if %menu%==3 goto instalator
if %menu%==4 goto testy
:odtwarzacz
echo Witaj w testowym odtwarzaczu muzyki
pause >>nul
:muzyka
cls
color 72
echo.
echo.
echo.
echo =======================================================
echo 1 - %1%
echo 2 - %2%
echo 3 - %3%
echo 4 - %4%
echo 5 - %5%
echo 6 - %6%
echo 7 - %7%
echo 8 - %8%
echo 9 - %9%
echo 10 - %10%
echo 11 - %11%
echo 12 - %12%
echo 13 - %13%
echo 14 - %14%
echo 15 - %15%
echo -------------------------------------------------------
echo 16 - Cofnij
echo =======================================================
echo.
echo.
set /p u=Wybierz:
IF '%u%' == '%u%' GOTO Muzyka_%u%
:Muzyka_1
 start \%cd%\data\music\" %1%.mp3
 goto muzyka
 echo Nie masz muzyki!
 timeout /t 1 >>nul
:Muzyka_2
 start \%cd%\data\music\" %2%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_3
 start \%cd%\data\music\" %3%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_4
 start \%cd%\data\music\" %4%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_5
 start \%cd%\data\music\" %5%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_6
 start \%cd%\data\music\" %6%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_7
 start \%cd%\data\music\" %7%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_8
 start \%cd%\data\music\" %8%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_9
 start \%cd%\data\music\" %9%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_10
 start \%cd%\data\music\" %10%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_11
 start \%cd%\data\music\" %11%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_12
 start \%cd%\data\music\" %12%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_13
 start \%cd%\data\music\" %13%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_14
 start \%cd%\data\music\" %14%.mp3
  goto muzyka
  echo Nie masz muzyki!
  timeout /t 1 >>nul
:Muzyka_15
 start \%cd%\data\music\" %15%.mp3
 goto muzyka
 echo Nie masz muzyki!
 timeout /t 1 >>nul

if %u%==16 goto menu
goto muzyka
:main
color 2
cls
echo.
echo.
echo.
echo.
echo Wersja do uruchamiania aplikacji.
echo.
echo 0 - Uruchom folder z Aplikacji UWP
echo ==========================================
echo 1 - Minecraft: Bedrock
echo 2 - Minecraft: Java
echo 3 - Minecraft Dungeons
echo 4 - Forza Horizon 5
echo 5 - Forza Horizon 4
echo 6 - Microsoft Flight Simulator
echo 7 - Lunar Client
echo 8 - Facebook
echo 9 - Messenger
echo 10 - Aparat
echo 11 - Microsoft Store
echo 12 - Xbox
echo 13 - Microsoft Edge 
echo 14 - Explorator Windows
echo 15 - Panel Sterowania Windows
echo ------------------------------------------
echo Aplikacje beda dodawane stopniowo 
echo ------------------------------------------
echo (Uwaga, niektore aplikacje sa UWP,
echo oznacza to ze jest potrzebny PowerShell!
echo ------------------------------------------
echo 16 - back
echo ==========================================
echo.
set /p x=Wybierz:
IF '%x%' == '%x%' GOTO Item_%x%
:Item_0
goto UWP

:Item_1
timeout /t 1 >nul
powershell -Command "explorer shell:appsFolder\Microsoft.MinecraftUWP_8wekyb3d8bbwe!App"
timeout /t 1 >nul
goto main
echo.
echo Nie masz apliacji!
timeout /t 2 >>nul



:Item_2
timeout /t 1 >nul
powershell -Command "explorer shell:appsFolder\Microsoft.4297127D64EC6_8wekyb3d8bbwe!Minecraft"
timeout /t 1 >nul
goto main
echo.
echo Nie masz apliacji!
timeout /t 2 >>nul

:Item_3
start /D"C:\Games\Minecraft Dungeons\" Dungeons.exe
start /D"D:\Games\Minecraft Dungeons\" Dungeons.exe
GOTO main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_4
start /D"C:\Games\Forza Horizon 5\" ForzaHorizon5.exe
start /D"D:\Games\Forza Horizon 5\" ForzaHorizon5.exe
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_5
start /D"C:\Games\Forza Horizon 4\" ForzaHorizon4.exe
start /D"D:\Games\Forza Horizon 4\" ForzaHorizon4.exe
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_6
start /D"C:\Games\Microsoft Flight Simulator\" FlightSimulator.exe
start /D"D:\Games\Microsoft Flight Simulator\" FlightSimulator.exe
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_7
powershell -Command "explorer shell:appsFolder\com.moonsworth.client"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_8
powershell -Command "explorer shell:appsFolder\FACEBOOK.FACEBOOK_8xx8rvfyw5nnt!App"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_9
powershell -Command "explorer shell:appsFolder\FACEBOOK.317180B0BB486_8xx8rvfyw5nnt!App"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_10
powershell -Command "explorer shell:appsFolder\Microsoft.WindowsCamera_8wekyb3d8bbwe!App"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_11
powershell -Command "explorer shell:appsFolder\Microsoft.WindowsStore_8wekyb3d8bbwe!App"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_12
powershell -Command "explorer shell:appsFolder\Microsoft.GamingApp_8wekyb3d8bbwe!Microsoft.Xbox.App"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_13
powershell -Command "explorer shell:appsFolder\MSEdge"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_14
powershell -Command "explorer shell:appsFolder\Microsoft.Windows.Explorer"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_15
powershell -Command "explorer shell:appsFolder\Microsoft.Windows.ControlPanel"
goto main
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_16
goto menu
GOTO main



:main1
color 2
cls
echo.
echo.
echo.
echo.
echo Version for running the application.
echo.
echo 0 - Start the folder from UWP Applications
echo ==========================================
echo 1 - Minecraft: Bedrock
echo 2 - Minecraft: Java
echo 3 - Minecraft Dungeons
echo 4 - Forza Horizon 5
echo 5 - Forza Horizon 4
echo 6 - Microsoft Flight Simulator
echo 7 - Lunar Client
echo 8 - Facebook
echo 9 - Messenger
echo 10 - Aparat
echo 11 - Microsoft Store
echo 12 - Xbox
echo 13 - Microsoft Edge 
echo 14 - Explorator Windows
echo 15 - Windows Control Panel
echo ------------------------------------------
echo Apps will be added gradually
echo ------------------------------------------
echo (Note, some applications are UWP, 
echo this means that you need PowerShell!
echo ------------------------------------------
echo 16 - back
echo ==========================================
echo.
set /p n=Select:
IF '%n%' == '%n%' GOTO Item_%n%
:Item_0
goto UWP

:Item_1
timeout /t 1 >nul
powershell -Command "explorer shell:appsFolder\Microsoft.MinecraftUWP_8wekyb3d8bbwe!App"
timeout /t 1 >nul
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul



:Item_2
timeout /t 1 >nul
powershell -Command "explorer shell:appsFolder\Microsoft.4297127D64EC6_8wekyb3d8bbwe!Minecraft"
timeout /t 1 >nul
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_3
start /D"C:\Games\Minecraft Dungeons\" Dungeons.exe
start /D"D:\Games\Minecraft Dungeons\" Dungeons.exe
GOTO main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_4
start /D"C:\Games\Forza Horizon 5\" ForzaHorizon5.exe
start /D"D:\Games\Forza Horizon 5\" ForzaHorizon5.exe
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_5
start /D"C:\Games\Forza Horizon 4\" ForzaHorizon4.exe
start /D"D:\Games\Forza Horizon 4\" ForzaHorizon4.exe
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_6
start /D"C:\Games\Microsoft Flight Simulator\" FlightSimulator.exe
start /D"D:\Games\Microsoft Flight Simulator\" FlightSimulator.exe
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_7
powershell -Command "explorer shell:appsFolder\com.moonsworth.client"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_8
powershell -Command "explorer shell:appsFolder\FACEBOOK.FACEBOOK_8xx8rvfyw5nnt!App"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_9
powershell -Command "explorer shell:appsFolder\FACEBOOK.317180B0BB486_8xx8rvfyw5nnt!App"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_10
powershell -Command "explorer shell:appsFolder\Microsoft.WindowsCamera_8wekyb3d8bbwe!App"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_11
powershell -Command "explorer shell:appsFolder\Microsoft.WindowsStore_8wekyb3d8bbwe!App"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_12
powershell -Command "explorer shell:appsFolder\Microsoft.GamingApp_8wekyb3d8bbwe!Microsoft.Xbox.App"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_13
powershell -Command "explorer shell:appsFolder\MSEdge"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_14
powershell -Command "explorer shell:appsFolder\Microsoft.Windows.Explorer"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_15
powershell -Command "explorer shell:appsFolder\Microsoft.Windows.ControlPanel"
goto main1
echo.
echo You don't have an app!
timeout /t 2 >>nul

:Item_16
goto nowecalareszta3
GOTO main1




::Wersja aplikacji
:wersja
cls
echo.
echo C# Nadchodzi!!!
echo =================================
echo.
echo.
echo           Wersja 1.3.0!
echo.
echo.
echo =================================
echo 1 - Cofnij
color 1
timeout /t 1 >>nul
color 2
timeout /t 1 >>nul
color 3
timeout /t 1 >>nul
color 4
timeout /t 1 >>nul
color 5
timeout /t 1 >>nul
color 6
timeout /t 1 >>nul
set /p cofnij=Wybierz:
if %cofnij%==1 goto ust
goto wersja
::Wersja aplikacji po angielsku
:nowewersja
cls
echo.
echo C# Is coming!!!
echo =================================
echo.
echo.
echo          Version 1.3.0!
echo.
echo.
echo =================================
echo 1 - Back
color 1
timeout /t 1 >>nul
color 2
timeout /t 1 >>nul
color 3
timeout /t 1 >>nul
color 4
timeout /t 1 >>nul
color 5
timeout /t 1 >>nul
color 6
timeout /t 1 >>nul
set /p nowecofnij=Select:
if %nowecofnij%==1 goto noweust
goto nowewersja
::Generowanie pliku version
:explorer
cls
color 9
timeout /t 1 >>nul
echo generowanie.
timeout /t 1 >>nul
cls
echo generowanie..
timeout /t 1 >>nul
cls
echo generowanie...
timeout /t 1 >>nul
cls
mkdir "%cd%\data\"
if not exist Version.txt 1
echo|set /p="1.3.0">data\Version.txt 
goto logowanie3
::Otwieranie folderu UWP
:UWP

powershell -Command "explorer.exe shell:AppsFolder"
pause >nul
goto main
::Instalator aplikacji EXE/UWP
:instalator
cls
echo.
echo Podstawowa Biblioteka gier i aplikacji do pobrania
color 30
echo ====================================================
echo 1 - Zainstaluj: New Minecraft Launcher/ TLauncher
echo 2 - Zainstaluj: Lunar Client (Tylko Premium)
echo 3 - Zainstaluj: Minecraft Dungeons
echo 4 - Zainstaluj: Forza Horizon 5
echo 5 - Zainstaluj: Forza Horizon 4
echo 6 - Zainstaluj: Microsoft Flight Simulator
echo 7 - Zainstaluj:
echo 8 - Zainstaluj:
echo 9 - Zainstaluj:
echo ----------------------------------------------------
echo 10 - Twoja Aplikacja (Podaj link RAW)
echo ----------------------------------------------------
echo 11 - Wstecz
echo ====================================================
set /p Install=Wybierz:
IF '%Install%' == '%Install%' GOTO Install_%Install%

:Install_1
goto MinecraftInstall

goto instalator

:Install_2 
(
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://files-download.playpc.pl/GryIRozrywka/ModyDoGier/Minecraft/Launchery/LunarClient/lunar-20client-20v2-6-4.exe -OutFile data\LunarInstaller.exe
	timeout /t 3 >>nul

	start data\LunarInstaller.exe
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
		Echo Link musial wygasnac :(

)

:Install_3
(
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://download1525.mediafire.com/b643ix1bqchg/8v6jzts7notycp0/Minecraft+Dungeons+%5BFitGirl+Repack%5D.torrent -OutFile data\MinecraftDungeons.torrent

	start data\MinecraftDungeons.torrent
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
		Echo Link musial wygasnac :(
)
:Install_4 
(
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://download1654.mediafire.com/2mlqcyd1om9g/6h997abmxf6m81i/Forza+Horizon+5+%5BFitGirl+Repack%5D.torrent -OutFile data\ForzaHorizon5.torrent

	start data\ForzaHorizon5.torrent
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
		Echo Link musial wygasnac :(
)
:Install_5
(
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://download930.mediafire.com/n7wadorztutg/5j3dgasccoc9w7t/Forza+Horizon+4+%5BFitGirl+Repack%5D.torrent -OutFile data\ForzaHorizon4.torrent

	start data\ForzaHorizon4.torrent
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
		Echo Link musial wygasnac :(
)
:Install_6
(
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://download1649.mediafire.com/aatsrpcanybg/9zhpdibbyfdjp50/Microsoft+Flight+Simulator+%5BFitGirl+Repack%5D.torrent -OutFile data\MicrosoftFlightSimulator.torrent

	start data\MicrosoftFlightSimulator.torrent
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
		Echo Link musial wygasnac :(

(

:Install_11 
goto menu
)
goto instalator
Echo Link musial wygasnac :(






:Install_10
goto RAWInstall







goto instalator
Echo Link musial wygasnac :(

:MinecraftInstall
	cls 
	echo.
	echo.
	echo ----------------------------
	echo 1 - New Minecraft Launcher
	echo 2 - TLauncher
	echo 3 - Cofnij
	echo ----------------------------
	set /p Minecraft=Wybierz:
	if %Minecraft%==1 (
	powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://launcher.mojang.com/download/MinecraftInstaller.exe -OutFile data\MinecraftInstaller.exe
	timeout /t 3 >>nul 

	start data\MinecraftInstaller.exe
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
		Echo Link musial wygasnac :(
	)
	if %Minecraft%==2 (
			powershell -Command Get-Location

	powershell -Command cd data

	powershell -Command Invoke-WebRequest -Uri https://files-download.playpc.pl/GryIRozrywka/ModyDoGier/Minecraft/Launchery/Tlauncher/tlauncher-2-69-installer-0-5-2.exe -OutFile data\TLauncher.exe
	timeout /t 3 >>nul 

	start data\TLauncher.exe
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
		Echo Link musial wygasnac :(
	if %Minecraft%==3 goto instalator

)
	::Instalator z linkow TORRENT/EXE
:RAWInstall
cls
echo.
echo.
echo -------------------------------------
echo 1 - RAW Torrent
echo 2 - RAW EXE
echo 3 - RAW MSI
echo 4 - cofnij
echo -------------------------------------
echo.
set /p RAWInst=Wybierz:
if %RAWInst%==1 (	

	powershell -Command cd data
echo {Wklej swoj link}
set /p Torrent1=">> "
timeout /t 1 >>nul
goto powershell1
:powershell1
powershell -Command Invoke-WebRequest -Uri %Torrent1% -OutFile data\YourApp.torrent
	timeout /t 3 >>nul 
	start data\YourApp.torrent
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
)
if %RAWInst%==2 (	

	powershell -Command cd data
echo {Wklej swoj link}
set /p EXE1=">> "
timeout /t 1 >>nul
goto powershell2
:powershell2
 powershell -Command Invoke-WebRequest -Uri %EXE1% -OutFile data\YourApp.exe
	timeout /t 3 >>nul 
	start data\YourApp.exe
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
)
if %RAWInst%==3 (	

	powershell -Command cd data
echo {Wklej swoj link}
set /p MSI1=">> "
timeout /t 1 >>nul
goto powershell3
:powershell3
 powershell -Command Invoke-WebRequest -Uri %MSI1% -OutFile data\YourApp.msi
	timeout /t 3 >>nul 
	start data\YourApp.msi
		cls
		echo Zainstalowano
		timeout /t 2 >>nul
		goto instalator
)
if %RAWInst%==4 goto instalator






::Wersja aplikacji NoVIP dla niezalogowanych
:NOVIP
:imieNOVIP
title Aplication HUB by Marcin_Doga (Logining)
cls
echo.
echo.
echo Wpisz swoje imie:
set /p fNOVIP=">> "
cls
echo.
echo.
echo Witaj ponownie %fNOVIP%!
echo Za chwile przejdziesz do aplikacji.
timeout /t 4 >>nul
goto calareszta5NOVIP
::Menu wersji dla niezalogowanych
:calareszta5NOVIP
title Aplication HUB by Marcin_Doga (NoVIP)
color 3
cls
echo.
echo Urzytkownik %fNOVIP% (No premium) zostal zalogowany , Super!
goto calareszta2NOVIP
:calareszta3NOVIP
title Aplication HUB by Marcin_Doga (NoVIP)
color 3
cls
echo.
echo Urzytkownik %fNOVIP%, (No premium) zostal zalogowany z ostatniej sesji
:calareszta2NOVIP
title Aplication HUB by Marcin_Doga (NoVIP)
color 3
echo.
echo.
echo Application HUB by Marcin_Doga
echo.
echo Czy wiesz ze: Wszystkie najciekawsze opcje 
echo kryja sie w Ustawieniach i informacjach.
echo.
echo ================================
echo 1 - Otworz Aplikacje Zainstalowane
echo --------------------------------
echo 2 - Minecraft.Net
echo 3 - Minecraft Mapy
echo 4 - FaceBook
echo 5 - YouTube
echo 6 - Discord
echo 7 - Poczta Interia
echo 8 - Dysk Google
echo 9 - HBO MAX Filmy i Muzyka
echo --------------------------------
echo 10 - Informacje o Aplikacji
echo 11 - Ustawienia
echo 12 - Pomoc
echo 13 - Wyloguj sie
echo 14 - Wyjdz z Aplikacji
echo ================================
echo 15 - Zaloguj sie
echo ================================
set /p sNOVIP=Wybierz:
if %sNOVIP%==1 goto mainNOVIP
if %sNOVIP%==2 start https://minecraft.net
if %sNOVIP%==3 start https://minecraftmapy.pl
if %sNOVIP%==4 start https://facebook.com
if %sNOVIP%==5 start https://youtube.com
if %sNOVIP%==6 start https://discord.com/channels/831780442533396490/868940340739076177
if %sNOVIP%==7 start https://poczta.interia.pl/next/?uid=e01593d92f6c5ab9#/folder
if %sNOVIP%==8 start https://drive.google.com/drive/my-drive
if %sNOVIP%==9 start https://hbogo.pl
if %sNOVIP%==10 goto infNOVIP
if %sNOVIP%==11 goto ustNOVIP
if %sNOVIP%==12 goto pomocNOVIP
if %sNOVIP%==13 goto wybierzurzytkownikapl
if %sNOVIP%==14 goto napewnoNOVIP
if %sNOVIP%==15 goto login
goto calareszta3NOVIP
:napewnotakNOVIP
cls
echo Do zobaczenia %fNOVIP%!
echo Trwa wylaczanie.
timeout /t 1 >>nul
cls
echo Do zobaczenia %fNOVIP%!
echo Trwa wylaczanie..
timeout /t 1 >>nul
cls
echo Do zobaczenia %fNOVIP%!
echo Trwa wylaczanie...
timeout /t 1 >>nul
cls
echo Do zobaczenia %fNOVIP%!
echo Trwa wylaczanie.
timeout /t 1 >>nul
cls
echo Do zobaczenia %fNOVIP%!
echo Trwa wylaczanie..
timeout /t 1 >>nul
cls
echo Do zobaczenia %fNOVIP%!
echo Trwa wylaczanie...
timeout /t 1 >>nul
cls
exit
goto calareszta3NOVIP

::Ustawienia NoVIP
:ustNOVIP
cls
color 4
echo.
echo Ustawienia
echo.
echo.
echo.
echo.
echo.
echo ====================================================
echo 1 - Wersja 1.3.0
echo ----------------------------------------------------
echo 2 - Language: Polski
echo ----------------------------------------------------
echo 3 - Testy
echo ----------------------------------------------------
echo 4 - generuj plik z informacjami o koncie
echo ----------------------------------------------------
echo 5 - Usun wszystkie pliki uzytkownika (OSTROZNIE!!!)
echo ----------------------------------------------------
echo 6 - Wymagania Systemowe
echo ----------------------------------------------------
echo 7 - Szukaj najnowszej aktualizacji dla aplikacji
echo ----------------------------------------------------
echo 8 - Cofnij
echo ====================================================
set /p fNOVIP=Wybierz:
if %fNOVIP%==1 goto wersjaNOVIP
if %fNOVIP%==2 echo Wersja NoVIP Tylko po polsku!
if %fNOVIP%==2 timeout /t 2 >Nul
if %fNOVIP%==3 echo testy nie dostepne, zaloguj sie by uzyskac!
if %fNOVIP%==3 timeout /t 2 >nul
if %fNOVIP%==4 mkdir "%cd%\data\"
(echo set username=0000
echo set password=0000
)>"%cd%\data\User Information.txt"
if %fNOVIP%==5 echo nie dostepne, zaloguj sie by uzyskac!
if %fNOVIP%==3 timeout /t 2 >nul 
if %fNOVIP%==7 goto aktualizacjaNOVIP

if %fNOVIP%==8 goto calareszta3NOVIP

if %fNOVIP%==6 goto WymaganiaNOVIP
goto ustNOVIP




::Informacje o aplikacji NoVIP
:infNOVIP
cls
color 4
echo.
echo Informacje o Aplikacji
echo.
echo.
echo.
echo.
echo.
echo ================================
echo 1 - version 1.3.0
echo --------------------------------
echo 2 - Language: Polski
echo --------------------------------
echo 3 - Creator: Marcin Doga
echo --------------------------------
echo 4 - Youtube channel: Marcin Dg
echo --------------------------------
echo 5 - Zobacz changelog
echo --------------------------------
echo 6 - Cofnij
echo ================================
set /p gNOVIP=Wybierz:
if %gNOVIP%==1 echo Przejdz do ustawien zeby edytowac.
if %gNOVIP%==2 echo Przejdz do ustawien zeby edytowac.
if %gNOVIP%==3 echo Przejdz do ustawien zeby edytowac.
if %gNOVIP%==4 start https://www.youtube.com/channel/UCso8VUBKlMjAzw47U1vVKZA
if %gNOVIP%==5 goto changelogNOVIP
if %gNOVIP%==6 goto calareszta3NOVIP
timeout /t 2 >>nul
goto infNOVIP
::Pomoc aplikacji NoVIP








:aktualizacjaNOVIP 
cls
color 8



echo Szukanie najnowszej wersji
timeout /t 1 >>nul
echo.
echo Znaleziono
echo.
echo Dostepna jest nowsza wersja aplikacji w C# (Windows Form)
echo chcesz zainstalowac?
echo 0 - Tak
echo.
echo Chcesz by podmienic plik aplikacji na nowy?
echo ----------------------------------------------
echo 1 - Tak
echo 2 - Nie (Nie usuwaj starej wersji, nowa zostanie umieszczona w "data")
echo 3 - Cofnij
echo ----------------------------------------------
set /p podmiento4=Wybierz:
if %podmiento4%==0 goto newapp3
if %podmiento4%==1 goto podmienNOVIP
if %podmiento4%==2 goto niepodmienNOVIP
if %podmiento4%==3 goto ustNOVIP

:newapp3
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.exe -OutFile data\ApplicationHUB.exe
cls
echo Zainstalowano do folderu data, by uruchomic kliknij byle jaki przycisk
pause >>nul
start data\ApplicationHUB.exe
exit

:podmienNOVIP
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.bat -OutFile ApplicationHUB.bat
cls 
echo Zaaktualizowano, potrzebny jest restart.
echo by zaktualizowac musisz kliknac byle jaki przycisk
pause >>nul
start ApplicationHUB.bat
exit



:niepodmienNOVIP
mkdir "%cd%\data\"
powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/MarcinDoga/AplicationHUB/main/ApplicationHUB.bat -OutFile data\ApplicationHUB.bat
cls 
echo Zaaktualizowano, najnowsza wersja jest w folderze data.
goto ustNOVIP







::Changelog NOVIP

:changelogNOVIP
cls
color 8
echo (najnowsze zmiany)
echo 22.08.2022
echo.
echo Musze zaczac programowac od nowa, wiele
echo bibliotek sie nie zgadza po przejsciu na 
echo visual studio 2022 z visuala w wersji 2019.
echo Ale juz teraz mozecie pobrac sobie najowsza moja
echo prace. Mam nadzieje ze was zainteresuje. :)
echo.
echo Pojawila sie nowa zakladka do pobrania wersji C#
echo.
echo.
echo (ostatnie zmiany)
echo 20.08.2022
echo.
echo Rozpoczalem dalsze prace nad aplikacja C#
echo.
echo Menu aplikacji zmieni sie bardzo mocno.
echo.
echo Bedzie stabilna i latwa w obsludze.
pause >>nul
goto infNOVIP



:mainNOVIP
color 2
cls
echo.
echo.
echo.
echo.
echo Wersja do uruchamiania aplikacji. NOVIP
echo.
echo 0 - Uruchom folder z Aplikacji UWP
echo ==========================================
echo 1 - Minecraft: Bedrock
echo 2 - Minecraft: Java
echo 3 - Minecraft Dungeons
echo 4 - Forza Horizon 5
echo 5 - Forza Horizon 4
echo 6 - Microsoft Flight Simulator
echo 7 - Lunar Client
echo 8 - Facebook
echo 9 - Messenger
echo 10 - Aparat
echo 11 - Microsoft Store
echo 12 - Xbox
echo 13 - Microsoft Edge 
echo 14 - Explorator Windows
echo 15 - Panel Sterowania Windows
echo ------------------------------------------
echo Aplikacje beda dodawane stopniowo 
echo ------------------------------------------
echo (Uwaga, niektore aplikacje sa UWP,
echo oznacza to ze jest potrzebny PowerShell!
echo ------------------------------------------
echo 16 - back
echo ==========================================
echo.
set /p xNOVIP=Wybierz:
IF '%xNOVIP%' == '%xNOVIP%' GOTO Item_%xNOVIP%
:Item_0
goto UWPNOVIP

:Item_1
timeout /t 1 >nul
powershell -Command "explorer shell:appsFolder\Microsoft.MinecraftUWP_8wekyb3d8bbwe!App"
timeout /t 1 >nul
goto mainNOVIP
echo.
echo Nie masz apliacji!
timeout /t 2 >>nul



:Item_2
timeout /t 1 >nul
powershell -Command "explorer shell:appsFolder\Microsoft.4297127D64EC6_8wekyb3d8bbwe!Minecraft"
timeout /t 1 >nul
goto mainNOVIP
echo.
echo Nie masz apliacji!
timeout /t 2 >>nul

:Item_3
start /D"C:\Games\Minecraft Dungeons\" Dungeons.exe
start /D"D:\Games\Minecraft Dungeons\" Dungeons.exe
GOTO mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_4
start /D"C:\Games\Forza Horizon 5\" ForzaHorizon5.exe
start /D"D:\Games\Forza Horizon 5\" ForzaHorizon5.exe
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_5
start /D"C:\Games\Forza Horizon 4\" ForzaHorizon4.exe
start /D"D:\Games\Forza Horizon 4\" ForzaHorizon4.exe
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_6
start /D"C:\Games\Microsoft Flight Simulator\" FlightSimulator.exe
start /D"D:\Games\Microsoft Flight Simulator\" FlightSimulator.exe
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_7
powershell -Command "explorer shell:appsFolder\com.moonsworth.client"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_8
powershell -Command "explorer shell:appsFolder\FACEBOOK.FACEBOOK_8xx8rvfyw5nnt!App"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_9
powershell -Command "explorer shell:appsFolder\FACEBOOK.317180B0BB486_8xx8rvfyw5nnt!App"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_10
powershell -Command "explorer shell:appsFolder\Microsoft.WindowsCamera_8wekyb3d8bbwe!App"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_11
powershell -Command "explorer shell:appsFolder\Microsoft.WindowsStore_8wekyb3d8bbwe!App"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_12
powershell -Command "explorer shell:appsFolder\Microsoft.GamingApp_8wekyb3d8bbwe!Microsoft.Xbox.App"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_13
powershell -Command "explorer shell:appsFolder\MSEdge"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_14
powershell -Command "explorer shell:appsFolder\Microsoft.Windows.Explorer"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_15
powershell -Command "explorer shell:appsFolder\Microsoft.Windows.ControlPanel"
goto mainNOVIP
echo.
echo Nie masz aplikacji!
timeout /t 2 >>nul

:Item_16
goto calareszta3NOVIP
GOTO mainNOVIP

:UWPNOVIP

powershell -Command "explorer.exe shell:AppsFolder"
pause >nul
goto mainNOVIP

:pomocNOVIP
cls
color 5
echo.
echo Pomoc
echo.
echo.
echo.
echo.
echo.
echo ================================================================================================
echo 1 - Nie klikaj enter jesli nie trzeba, poniewaz wylacza to aplikacje.
echo ------------------------------------------------------------------------------------------------
echo 2 - nie wpisuj numerow jesli nie ma ich do wyboru, poniewaz moze wywolac to bledy.
echo ------------------------------------------------------------------------------------------------
echo 3 - Jesli chcesz zmienic haslo musisz wejsc w edytor tekstu i otworzyc ten program.
echo ------------------------------------------------------------------------------------------------
echo 4 - Jesli potrzebujesz pomocy, lub wykryjesz blad napisz na: marcin.doga@interia.pl
echo ------------------------------------------------------------------------------------------------
echo 5 - Cofnij
echo ================================================================================================
echo.
echo.
set /p i=Wybierz:
if %i%==5 goto calareszta3NOVIP
goto pomocNOVIP
::Wyjscie NoVIP
:napewnoNOVIP
cls
color 2
echo.
echo.
echo.
echo.
echo.
echo ---------------------------
echo Czy na pewno chcesz wyjsc?
echo.
echo 1 - tak
echo 2 - nie
echo ---------------------------
set /p oNOVIP=Wybierz:
if %oNOVIP%==1 goto napewnotakNOVIP
if %oNOVIP%==2 goto calareszta3NOVIP
::Wymagania NoVIP
:WymaganiaNOVIP
cls
color F3
echo.
echo.
echo ============================================================================
echo Wymagania Minimalne:
echo ----------------------------------------------------------------------------
echo System: Windows 10
echo Aplikacje: PowerShell
echo Pamiec magazynowa: 10 MB (Pliki Aplikacji)
echo Pamiec RAM: 2GB (Dzialanie systemu oraz aplikacji)
echo Procesor 2 Rdzeniowy, najlepiej: Procesor Intel Core 2 Duo T5250 2x1.50 GHz
echo Dostep do internetu
echo ----------------------------------------------------------------------------
echo Wymagania Zalecane:
echo ----------------------------------------------------------------------------
echo System: Windows 11
echo Aplikacje: PowerShell, Minecraft, Forza Horizon 4/5
echo Pamiec magazynowa: 30 MB (Pliki Aplikacji)
echo Pamiec RAM: 4 GB (Dobre dzialanie systemu i aplikacji)
echo Procesor 4 Rdzeniowy, najlepiej: Procesor Intel Core i3-8350K
echo Dostep do internetu i bluetooth
echo ============================================================================
echo 1 - Cofnij 
echo.
echo.
set /p PlwymaganiaNOVIP=Wybierz:
IF '%PlwymaganiaNOVIP%' == '%PlwymaganiaNOVIP%' GOTO WymaganiaplNOVIP_%PlwymaganiaNOVIP%
:WymaganiaplNOVIP_1
goto ustNOVIP

goto WymaganiaNOVIP

::Wersja NoVIP
:wersjaNOVIP
cls
echo =================================
echo.
echo.
echo           Wersja 1.3.0!
echo.
echo.
echo =================================
echo 1 - Cofnij
color 1
timeout /t 1 >>nul
color 2
timeout /t 1 >>nul
color 3
timeout /t 1 >>nul
color 4
timeout /t 1 >>nul
color 5
timeout /t 1 >>nul
color 6
timeout /t 1 >>nul
set /p cofnijNOVIP=Wybierz:
if %cofnijNOVIP%==1 goto ustNOVIP
goto wersjaNOVIP

::Na razie koniec mojego kodu ;)
