# Process Management Cheatsheet

## Windows (CMD)

### Listar procesos
tasklist

### Matar proceso por nombre
taskkill /IM chrome.exe /F

### Matar proceso por PID
taskkill /PID 1234 /F

### Abrir Administrador de tareas
taskmgr


---

## Linux (Bash)

### Listar procesos
ps -ef

### Monitor en tiempo real
top

### Ejecutar en background
sleep 300 &

### Matar proceso
kill <PID>

### Matar forzado
kill -9 <PID>

### Ejecutar con baja prioridad
nice -n 10 comando

### Cambiar prioridad de proceso existente
sudo renice -n -5 -p <PID>
