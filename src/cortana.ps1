<#region 
   Autor: FuhrerhLemon, Alex, Luis Martinez (Conejillo de indias XD)
   Version: 1.0.0
   Script: PowerShell, cortana
   Extension: .ps1
#endregio#>

rem # Deshabilitar Cortana
	@echo Deshabilitando completamente cortana ...
	taskkill /F /IM SearchUI.exe
	move "%windir%\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" "%windir%\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy.bak"
	@echo.
	@echo Hecho!
	@echo.