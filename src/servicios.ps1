<#region 
   Autor: FuhrerhLemon, Alex, Luis Martinez (Conejillo de indias XD)
   Version: 1.0.0
   Script: PowerShell, servicios
   Extension: .ps1
#endregion#>

# Activar servicios
Function activar_servicios {
   
   Write-Host "Iniciando ....."
   
   if($Service.Equals("start")){
      # Activando servicios
      Write-Host "Iniciando Servicios"
      [int]$lineCount = (Get-Content $SvcTxtPath ).Count
      $Services = Get-Content $SvcTxtPath

      for( [int]$i=0; $lineCount-1 -ge $i;$i++ ){

         if( $Services[$i].Equals("#services") ){

            for([int]$j=$i+1; $lineCount-1 -ge $j;$j++){
               if($Services[$j].Equals("#cleaner")){
                  break
               }
               # Inciando servicios
               Start-Service $SvcTxtPath

            }

         }

      }
      Write-Host "Servicios Iniciados"
   
   } elseif($Service.Equals("stop")){
      # Deteniendo los servicios
      Write-Host "Deteniendo Servicios"
      [int]$lineCount = (Get-Content $SvcTxtPath ).Count
      $Services = Get-Content $SvcTxtPath
   
      for( [int]$i=0; $lineCount-1 -ge $i;$i++ ){
   
         if( $Services[$i].Equals("#services") ){

            for([int]$j=$i+1; $lineCount-1 -ge $j;$j++){

               if($Services[$j].Equals("#cleaner")){
                  break
               }
               # Deteniendo Servicios
               Write-Host "Stop Service: $Services[$i]"
               Stop-Service -Force -Name $Services[$i]

            }

         }
   
      }
      Write-Host "Servicios Detenidos"
   } else { "Error" }
}