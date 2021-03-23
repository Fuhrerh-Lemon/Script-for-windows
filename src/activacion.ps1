<#region 
   Autor: FuhrerhLemon, Alex, Luis Martinez (Conejillo de indias XD)
   Version: 1.0.0
   Script: PowerShell, activacion
   Extension: .ps1
#endregio#>

# Activar windows
function activar_windows {

   Write-Host "Iniciando ....."
   # Identificar windows del usuario
   $windows_user = Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID | Select-Object EditionID
   $name = $windows_user.EditionID

   # Arreglo con todos los windows
   $windows = @(
      'Core'
      'CoreN'
      'CoreCountrySpecific'
      'CoreSingleLanguage'
      'Professional'
      'ProfessionalN'
      'Enterprise'
      'EnterpriseN'
      'Education'
      'EducationN'
   )

   $j = 0 # Tipico contador
   if( $Activate.Equals("on") ){
      foreach($windows_ in $windows){

         if($windows_ -eq $name){

            Write-Host "Activar: ${name}"
            # Obtener tamaño del txt
            [int]$lineCount = (Get-Content $SvcTxtPath ).Count
            $Services = Get-Content $SvcTxtPath

            for([int]$i=1; $lineCount-1 -ge $i;$i++){

               if($i -eq $j+1){ # Activando windows
                  cscript slmgr.vbs /ipk $Services[$i]
                  cscript slmgr.vbs /skms kms.lotro.cc
                  cscript slmgr.vbs /ato
               }
            }
            Write-Host "Windows ${name} activado"
         }
         $j = $j + 1
      }
   }
   else{ "Error de parametro, no se pudo activar windows ${name}" }
}