@echo off

set /p version=<"..\version.txt"

if not exist ".\packages\" (
    MKDIR ".\packages\"
)

XCOPY /Y /S "..\BetterPayableUpgrade\bin\Release\net6.0" ".\packages\KingdomMod.BetterPayableUpgrade\"
set filename=".\packages\KingdomMod.BetterPayableUpgrade_v%version%.zip"
7za a -tzip "%filename%" ".\packages\KingdomMod.BetterPayableUpgrade"

XCOPY /Y /S "..\DevTools\bin\Release\net6.0" ".\packages\KingdomMod.DevTools\"
set filename=".\packages\KingdomMod.DevTools_v%version%.zip"
7za a -tzip "%filename%" ".\packages\KingdomMod.DevTools"

XCOPY /Y /S "..\OverlayMap\bin\Release\net6.0" ".\packages\KingdomMod.OverlayMap\"
set filename=".\packages\KingdomMod.OverlayMap_v%version%.zip"
7za a -tzip "%filename%" ".\packages\KingdomMod.OverlayMap"

XCOPY /Y /S "..\StaminaBar\bin\Release\net6.0" ".\packages\KingdomMod.StaminaBar\"
set filename=".\packages\KingdomMod.StaminaBar_v%version%.zip"
7za a -tzip "%filename%" ".\packages\KingdomMod.StaminaBar"

set filename=".\packages\KingdomMod.All_v%version%.zip"
7za a -tzip "%filename%" ".\packages\KingdomMod.BetterPayableUpgrade" ".\packages\KingdomMod.DevTools" ".\packages\KingdomMod.OverlayMap" ".\packages\KingdomMod.StaminaBar" 

PAUSE