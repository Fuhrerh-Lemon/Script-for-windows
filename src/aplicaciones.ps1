<#region 
   Autor: FuhrerhLemon, Alex, Luis Martinez (Conejillo de indias XD)
   Version: 1.0.0
   Script: PowerShell, aplicaciones
   Extension: .ps1
#endregio#>

# Remover aplicaciones
Function desinstalar_aplicaciones {
   if( $App.Equals("remove") ){
      # Obtener tamaño del txt
      [int]$lineCount = (Get-Content $SvcTxtPath ).Count
      $Services = Get-Content $SvcTxtPath

      for([int]$i=0; $lineCount-1 -ge $i;$i++){
         if( $Services[$i].Equals("#aplicaciones") ){
            for([int]$j=$i+1; $lineCount-1 -ge $j;$j++){
               if($Services[$j].Equals("#services")){
                  break
               }
               # Removiendo paquetes
               Get-AppxPackage *$Services[$i]* | Remove-AppxPackage

            }
         }
      }
   }
   else { "Error" }
}