#!/bin/bash
set -euo pipefail

# Verifica dependencias
for cmd in curl wget install; do
  command -v $cmd >/dev/null || { echo "$cmd requerido"; exit 1; }
done

# Descarga ISO de Proxmox
mkdir -p ./.storage/boot.iso
cd /tmp/.storage
wget -c https://enterprise.proxmox.com/iso/proxmox-ve_8.4-1.iso -O boot.iso

# Hacky recomended for most and standard user Download: https://iso.omarchy.org/omarchy-3.1.4.iso
# SHA256: d845db165a2878e9543251e56e68750b4ce61b61b0e260e2797939ea2ac07caf
