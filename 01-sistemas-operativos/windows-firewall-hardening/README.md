# Windows Firewall Hardening & Application Blocking

## Objetivo
Implementar medidas de control de acceso y hardening en Windows mediante reglas avanzadas del Firewall, bloqueo DNS y restricciones de aplicaciones para limitar el acceso a servicios externos no autorizados.

## Escenario
Se requiere impedir el acceso a servicios como redes sociales desde un equipo corporativo utilizando diferentes técnicas de control:

- Reglas de firewall de salida
- Bloqueo por dirección IP
- Restricción por identidad de aplicación (UWP)
- Modificación del archivo hosts

## Tecnologías
- Windows Defender Firewall with Advanced Security
- PowerShell
- DNS Resolution Tools (`nslookup`, `ping`)
- Windows Networking Stack

## Tareas Realizadas
- Creación de reglas de salida personalizadas para bloquear tráfico.
- Bloqueo por direcciones IP individuales y rangos.
- Identificación de aplicaciones mediante `Get-AppxPackage`.
- Creación de reglas por identidad de aplicación (UWP).
- Modificación del archivo `hosts` para bloqueo DNS.
- Verificación mediante pruebas de conectividad.
- Auditoría de reglas activas en el firewall.

## Comandos Clave
Ver archivo `firewall_commands.txt` para referencia técnica.

## Resultado
Sistema endurecido con restricciones de acceso efectivas a servicios externos, aplicando múltiples capas de control (Firewall + DNS).

