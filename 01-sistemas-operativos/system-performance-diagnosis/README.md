# System Performance Diagnosis & Tuning (Windows + Linux)

## Objetivo
Diagnosticar problemas de lentitud en una infraestructura híbrida (Windows y Linux), identificando cuellos de botella de CPU, memoria, disco y red, y aplicar técnicas de optimización y priorización de procesos.

## Escenario
Administrador de sistemas en una red de gasolineras.  
Los usuarios reportan equipos lentos.  
Se realiza análisis de rendimiento para detectar procesos problemáticos y mejorar la estabilidad del sistema.

---

## Tecnologías y Herramientas

### Windows
- Task Manager
- Resource Monitor (`resmon`)
- PowerShell (`Get-Process`)
- CMD (`tasklist`, `taskkill`)

### Linux
- `top` / `htop`
- `ps aux`
- `iotop`
- `iftop`
- `nice` / `renice`
- `vmstat` / `iostat`

---

## Análisis Realizado

### Windows

### Consumo de Memoria detectado
| Proceso | Uso RAM | Causa probable |
|---------|-----------|----------------|
Firefox | ~700MB | Múltiples pestañas |
LibreOffice | ~560MB | Documentos pesados |
Edge | ~500MB | Multiproceso |
Defender | ~200MB | Escaneo activo |
MySQL | ~150MB | Conexiones BD |

### Problemas identificados
- Navegadores consumiendo demasiada RAM
- Windows Defender escaneando en horario laboral
- Servicios innecesarios en segundo plano

### Acciones aplicadas
- Cierre de procesos innecesarios
- Programar antivirus fuera de horario
- Detener servicios no críticos
- Ajustar prioridades de procesos

---

### Linux

### Procesos más pesados detectados
| Proceso | CPU | MEM | Motivo |
|-----------|--------|--------|---------|
mongod | 3-4% | 3% | Caché BD |
splunkd | 3-4% | 4% | Indexado logs |
Xorg | 2% | 2% | Entorno gráfico |

### Problemas identificados
- Servicios de monitorización consumiendo recursos
- Posible carga de disco por logs
- Aplicaciones gráficas innecesarias

### Acciones aplicadas
- Renice para reducir prioridad
- Limitar servicios en segundo plano
- Monitorización de I/O y red

---

## Técnicas de Optimización Aplicadas

### Windows
- Cambio de prioridad desde Task Manager
- PowerShell:
```powershell
Get-Process | Sort-Object WS -Descending
Stop-Process -Name notepad -Force
