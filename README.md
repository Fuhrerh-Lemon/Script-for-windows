# Script-for-windows

1. Código para activar Windows, remover servicios
2. Optimizar Windows eliminando programas poco usados, que juntos consumen una gran cantidad de recursos

## Instalación

```PowerShell
git clone https://github.com/Fuhrerh-Lemon/Script-for-windows.git
cd Script-for-windows

.\main.ps1 -comandos
```

## Lista de comandos

| Parámetro  | Argumento  | Descripción  | 
| --------  | --------  | --------  |
| -Valor | S | Confirmación requerida, para iniciar el script |
| -Activate | on | Activar Windows |
| -Cleaner | S | Limpiar el cache del sistema |
| -Firewall | " in coming " | " in coming " |
| -App | remove | Remover aplicaciones innecesarias del sistema |
| -Cortana | remove | Remover cortana de Windows |
| -Service | start o stop | Iniciar o detener servicios de Windows |
