
@echo off
:: Set the color of the Command Prompt text to light blue (9) on white (F) background
color 71

:: Set width for centering (80 characters wide)
set "padding=                                "  :: 32 spaces for rough centering

:: Generate a random number between 1 and 5
set /a randNum=%random% %% 5 + 1

:: Random Greeting Message
if %randNum%==1 (
    echo %padding%---------------------------------------------------
    echo %padding%Welcome Back, Radmehr! Lets get things rolling!
    echo %padding%---------------------------------------------------
) else if %randNum%==2 (
    echo %padding%---------------------------------------------------
    echo %padding%Another day, another opportunity to shine, Radmehr!
    echo %padding%---------------------------------------------------
) else if %randNum%==3 (
    echo %padding%---------------------------------------------------
    echo %padding%Good to see you, Radmehr! Ready for some action?
    echo %padding%---------------------------------------------------
) else if %randNum%==4 (
    echo %padding%---------------------------------------------------
    echo %padding%Lets make today count, Radmehr! Time to get started!
    echo %padding%---------------------------------------------------
) else (
    echo %padding%---------------------------------------------------
    echo %padding%Rise and grind, Radmehr! You have got this!
    echo %padding%---------------------------------------------------
)


:: Ask for the word of the day and save it to word_of_the_days.txt
echo.
set /p wordofday="What's your word of the day?: "
echo %date% - %wordofday% >> "C:\Users\ASUS\Desktop\WordOFTheDay.txt"
echo %padding%Word of the day saved to word_of_the_days.txt!
timeout /t 2 >nul

:: Play an MP3 sound using Windows Media Player
echo %padding%Playing your startup sound...
start wmplayer.exe ""C:\Users\ASUS\Desktop\howdy-partner.mp3""

:: Add a 3-second delay before clearing the screen
timeout /t 3 >nul

:: Clear the screen and show a final message
cls
echo %padding%---------------------------------------------------
echo %padding%Have a productive day, Radmehr! Enjoy your custom PC!
echo %padding%---------------------------------------------------

:: End the script
pause
