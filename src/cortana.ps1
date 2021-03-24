<#region 
   Autor: FuhrerhLemon, Alex, Luis Martinez (Conejillo de indias XD)
   Version: 1.0.0
   Script: PowerShell, cortana
   Extension: .ps1
#endregio#>

# Desinstalar o desactivar cortana
Function cortana_app {
	if( $Cortana.Equals("off") ){
		Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage
	}
}