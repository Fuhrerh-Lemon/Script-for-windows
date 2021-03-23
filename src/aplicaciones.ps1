<#region 
   Autor: FuhrerhLemon, Alex, Luis Martinez (Conejillo de indias XD)
   Version: 1.0.0
   Script: PowerShell, aplicaciones
   Extension: .ps1
#endregio#>

# Remover aplicaciones
Function activar_aplicaciones {
   if( $App.Equals("remove") ){
      # Obtener tamaño del txt
      [int]$lineCount = (Get-Content $SvcTxtPath ).Count
      $Services = Get-Content $SvcTxtPath

      for([int]$i=1; $lineCount-1 -ge $i;$i++){
         # Removiendo paquetes
         Get-AppxPackage *$Services[$i]* | Remove-AppxPackage
      }
   }
   else { "Error" }
}