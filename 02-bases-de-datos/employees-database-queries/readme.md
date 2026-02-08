# Employees Database Queries (MySQL)

## Objetivo
Practicar la gestión de datos mediante SQL: creación de tablas, inserción, consultas avanzadas y modificaciones de esquema.

## Funcionalidades
- Creación de base de datos
- Inserción de registros
- Consultas con IN, BETWEEN, IS NULL
- ALTER TABLE
- Transformación de datos con UPDATE + CONCAT

## Estructura
schema.sql      → estructura de la tabla
seed.sql        → datos de ejemplo
queries.sql     → consultas
migrations.sql  → cambios de esquema

## Uso
mysql -u root -p < schema.sql
mysql -u root -p < seed.sql
mysql -u root -p < queries.sql
