<#region 
   Autor: FuhrerhLemon, Alex, Luis Martinez (Conejillo de indias XD)
   Version: 1.0.0
   Script: PowerShell, Main
   Extension: .ps1
#endregion#>

param ( # Parametros del script

   [string]$Valor,
   [string]$Service,
   [string]$App,
   [string]$Firewall,
   [string]$Cleaner,
   [string]$Activate,
   [string]$Cortana

)
. .\src\activacion.ps1
. .\src\servicios.ps1
. .\src\aplicaciones.ps1
. .\src\cortana.ps1
. .\src\firewall.ps1
. .\src\cleaner.ps1
function archivos_ocultos {
   # Mostrar archivos ocultos
   reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
   # Mostrar archivos ocultos de sistema
   reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 1 /f
   # Mostrar extensión de los archivos
   reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f
}

if ($Valor.Equals("S")){
   # path del txt
   $SvcTxtPath = ".\text\activacion.txt"

   #activar_windows $Activate $SvcTxtPath
   #desinstalar_aplicaciones $App $SvcTxtPath
   #activar_servicios $Service $SvcTxtPath
   #cortana_app $Cortana
   cleaner_app $Cleaner
   #archivos_ocultos
}
else{ Write-Warning "
 ____               _         _    _____           __        __ _             _                      
/ ___|   ___  _ __ (_) _ __  | |_ |  ___|___   _ __\ \      / /(_) _ __    __| |  ___ __      __ ___ 
\___ \  / __|| '__|| || '_ \ | __|| |_  / _ \ | '__|\ \ /\ / / | || '_ \  / _` | / _ \\ \ /\ / // __|
 ___) || (__ | |   | || |_) || |_ |  _|| (_) || |    \ V  V /  | || | | || (_| || (_) |\ V  V / \__ \
|____/  \___||_|   |_|| .__/  \__||_|   \___/ |_|     \_/\_/   |_||_| |_| \__,_| \___/  \_/\_/  |___/
                      |_|
                                                                     Autores: FuhrerhLemon, AlexOchoa
Opciones del script: 
                     -Valor (S)                : Confirmación requerida, para inciar el script
                     -Service (start o stop)
                     -App (remove)
                     -Activate (on)
                     -Cleaner (S)
                     -Firewall
                     -Cortana (remove)" }
