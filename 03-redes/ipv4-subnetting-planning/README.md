# IPv4 Subnetting & Network Addressing Plan

## Objetivo
Diseñar un esquema de direccionamiento IP eficiente segmentando una red `/24` en múltiples subredes lógicas, garantizando:
- Separación de departamentos
- Reducción de broadcast
- Capacidad mínima de 25 hosts por segmento
- Optimización del espacio IPv4

## Escenario
Empresa de marketing con red base:

Red original: 196.22.1.0/24

Requisitos:
- 8 subredes
- ≥ 25 hosts por subred

---

## Cálculo de Subnetting

### Bits necesarios para subredes
2³ = 8 subredes → 3 bits

### Nueva máscara
/24 + 3 = **/27**

Decimal:
255.255.255.224

### Hosts por subred
2⁵ − 2 = **30 hosts útiles**

Cumple el requisito (25).

---

## Plan de Direccionamiento

| Subred | Red            | Primer Host     | Último Host     | Broadcast       |
|--------|---------------|----------------|----------------|----------------|
| 1 | 196.22.1.0/27   | 196.22.1.1   | 196.22.1.30  | 196.22.1.31  |
| 2 | 196.22.1.32/27  | 196.22.1.33  | 196.22.1.62  | 196.22.1.63  |
| 3 | 196.22.1.64/27  | 196.22.1.65  | 196.22.1.94  | 196.22.1.95  |
| 4 | 196.22.1.96/27  | 196.22.1.97  | 196.22.1.126 | 196.22.1.127 |
| 5 | 196.22.1.128/27 | 196.22.1.129 | 196.22.1.158 | 196.22.1.159 |
| 6 | 196.22.1.160/27 | 196.22.1.161 | 196.22.1.190 | 196.22.1.191 |
| 7 | 196.22.1.192/27 | 196.22.1.193 | 196.22.1.222 | 196.22.1.223 |
| 8 | 196.22.1.224/27 | 196.22.1.225 | 196.22.1.254 | 196.22.1.255 |

---

## Capacidad y Espacio Libre

Por subred:
- 30 hosts disponibles
- 25 requeridos
- 5 libres

Total red:
5 × 8 = **40 IPs libres**

✔ Permite crecimiento futuro sin rediseñar

---

## Ejemplo de Configuración de Host

Subred 196.22.1.64/27
IP: 196.22.1.70
Máscara: 255.255.255.224
Gateway: 196.22.1.65
DNS: 8.8.8.8

## Herramientas utilizadas
- Cálculo manual binario
- Subnet Calculator (validación)
- Planificación FLSM

## Resultado
Se obtiene una red:
- Segmentada
- Escalable
- Sin solapamientos
- Eficiente en uso de IPv4
- Lista para implementar routing, VLANs o ACLs


