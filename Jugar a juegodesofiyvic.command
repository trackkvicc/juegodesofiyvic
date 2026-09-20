#!/bin/bash
# Abre juegodesofiyvic en el navegador (necesita un mini servidor local para que carguen los mapas)
cd "$(dirname "$0")"
lsof -ti:8765 >/dev/null || (python3 -m http.server 8765 >/dev/null 2>&1 &)
sleep 1
open "http://localhost:8765/"
