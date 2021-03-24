<#region 
   Autor: FuhrerhLemon, Alex, Luis Martinez (Conejillo de indias XD)
   Version: 1.0.0
   Script: PowerShell, cleaner
   Extension: .ps1
#endregio#>

# Limpiar windows
Function cleaner_app {
   if( $Cleaner.Equals("S") ){
      # Mostrando el cache
      Write-Host "
          _     _  _    ____  _                    
         / \   | || |  / ___|| |  ___   __ _  _ __ 
        / _ \  | || | | |    | | / _ \ / _` || '__|
       / ___ \ | || | | |___ | ||  __/| (_| || |   
      /_/   \_\|_||_|  \____||_| \___| \__,_||_|                                                                     
      "
      Get-DnsClientCache
      # Limpiando el cache
      Clear-DnsClientCache
      Write-Host "
         ____  _                    
       / ___|| |  ___   __ _  _ __ 
      | |    | | / _ \ / _` || '__|
      | |___ | ||  __/| (_| || |   
       \____||_| \___| \__,_||_|   
      "
      # Mostrando el cache
      Get-DnsClientCache

      Write-Host "Liberando espacio en el disco innecesario ...."
      Get-WMIObject  -Class Win32_LogicalDisk | Where-Object {$_.DriveType -eq 3}  `
      | Select-Object @{n="Unidad";e={($_.Name)}}, 
                      @{n="Etiqueta";e={($_.VolumeName)}}, 
                      @{n='Tamaño (GB)';e={"{0:n2}" -f ($_.size/1gb)}}, 
                      @{n='Libre (GB)';e={"{0:n2}" -f ($_.freespace/1gb)}}, 
                      @{n='% Libre';e={"{0:n2}" -f ($_.freespace/$_.size*100)}}
   }
}