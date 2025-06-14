#!/data/data/com.termux/files/usr/bin/bash

# 🎯 OSINT AIO by Vanille
# Autor: Adrián / NVLL
# Estilo: Vanille — OSINT minimalista para dominios web

read -p "🔍 Dominio objetivo: " domain
mkdir -p ~/osint/$domain
output=~/osint/$domain/report.txt

echo -e "\n📁 Guardando reporte en: $output\n" | tee -a "$output"
echo "===== 🔎 OSINT REPORT: $domain =====" > "$output"
echo "Generado por NVLL — $(date)" >> "$output"
echo "====================================" >> "$output"

# WHOIS
echo -e "\n🧾 WHOIS:" | tee -a "$output"
whois $domain | tee -a "$output"

# DNS Info
echo -e "\n📡 DNS / NS / MX records:" | tee -a "$output"
dig $domain ANY +short | tee -a "$output"
dig NS $domain +short | tee -a "$output"
dig MX $domain +short | tee -a "$output"

# Subdominios con subfinder si está
if command -v subfinder &> /dev/null; then
  echo -e "\n🌐 Subdominios (subfinder):" | tee -a "$output"
  subfinder -d $domain -silent | tee -a "$output"
else
  echo -e "\n⚠️ subfinder no instalado. Saltando subdominios." | tee -a "$output"
fi

# theHarvester si está
if command -v theHarvester &> /dev/null; then
  echo -e "\n🧠 theHarvester (emails/hosts):" | tee -a "$output"
  theHarvester -d $domain -b all | tee -a "$output"
else
  echo -e "\n⚠️ theHarvester no instalado. Saltando harvesting." | tee -a "$output"
fi

# Headers HTTP
echo -e "\n📬 Headers HTTP:" | tee -a "$output"
curl -sI http://$domain | tee -a "$output"

# Tecnología Web
echo -e "\n🧱 Detección de tecnologías:" | tee -a "$output"
curl -s http://$domain | grep -iE "x-powered-by|server|set-cookie" | tee -a "$output"

# Final
echo -e "\n✅ Escaneo terminado. Reporte completo en: $output"
