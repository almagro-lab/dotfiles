#!/bin/sh
# Tiempo para la barra de tmux. Cachea 15 min para no llamar a wttr.in cada segundo.
CACHE="${TMPDIR:-/tmp}/tmux_weather"
TTL=900

now=$(date +%s)
mtime=$(stat -f %m "$CACHE" 2>/dev/null || echo 0)

if [ $((now - mtime)) -gt $TTL ]; then
    out=$(curl -fsS --max-time 3 'wttr.in/?format=%t+H:%h' 2>/dev/null)
    # Solo guarda si la respuesta parece válida (evita guardar errores HTML)
    case "$out" in
        *°*|*C*|*F*) [ ${#out} -lt 30 ] && printf '%s' "$out" > "$CACHE" ;;
    esac
fi

cat "$CACHE" 2>/dev/null || printf -- '--'
