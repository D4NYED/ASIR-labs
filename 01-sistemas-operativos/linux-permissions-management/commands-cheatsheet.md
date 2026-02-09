# Linux Permissions Cheatsheet

## Grupos
groupadd Practicas
getent group Practicas

## Usuarios
useradd -m -G Practicas -s /bin/bash usuario1
passwd usuario1
id usuario1

## Permisos
chown :Practicas /home/Practicas
chmod 770 /home/Practicas
chmod g+s /home/Practicas

## Verificación
ls -ld /home/Practicas
