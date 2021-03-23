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
   [string]$Activate

)
. .\src\activacion.ps1
. .\src\servicios.ps1
. .\src\aplicaciones.ps1
function archivos_ocultos {
   # Mostrar archivos ocultos
   reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
   # Mostrar archivos ocultos de sistema
   reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 1 /f
   # Mostrar extensión de los archivos
   reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f
}

if ($Valor.Equals("S")){
   # Dirección del txt
   $SvcTxtPath = ".\text\activacion.txt"
   #activar_windows $Activate $SvcTxtPath
   activar_aplicaciones $App $SvcTxtPath
   #archivos_ocultos
}
else{ "Opcion de ayuda: -Help" }