# Network Segmentation & Layer 3 Routing Lab (Cisco Packet Tracer)

## Objetivo
Diseñar y segmentar una red corporativa en múltiples subredes utilizando un router Cisco como dispositivo de capa 3 para separar dominios de broadcast, reducir colisiones y optimizar el rendimiento de la red.

## Escenario
Simulación de una empresa con dos departamentos independientes conectados a través de un router central.

### Direccionamiento IP
- Departamento 1 → 192.168.1.0/24
- Departamento 2 → 192.168.2.0/24
- Gateway D1 → 192.168.1.1
- Gateway D2 → 192.168.2.1

## Tecnologías
- Cisco Packet Tracer
- Cisco IOS (CLI)
- Switching Ethernet
- Routing IPv4
- ICMP (ping)

## Topología
- 1 Router (Capa 3)
- 2 Switches (Capa 2)
- 6 Hosts (PCs)
- 2 subredes independientes

## Implementación

### Configuración de interfaces del router
```cisco
interface GigabitEthernet0/0
 ip address 192.168.1.1 255.255.255.0
 no shutdown

interface GigabitEthernet0/1
 ip address 192.168.2.1 255.255.255.0
 no shutdown
