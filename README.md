# 🌐 vainilla_whois.py

Una herramienta OSINT minimalista, rápida y efectiva para obtener información WHOIS y detalles técnicos de cualquier dominio o dirección IP.  
Diseñada por **Vanille** para quienes operan en silencio pero siempre con visión.

## ✨ Características

- Consulta WHOIS detallada de dominios e IPs.
- Resuelve DNS, geolocalización IP y nombre del host.
- Modo CLI para integración con Termux, Linux o WSL.
- Ideal para investigaciones, monitoreo de amenazas o simplemente saber quién está detrás.

## 🚀 Instalación

```bash
git clone https://github.com/vanillevault/vainilla-whois.git
cd vainilla-whois
chmod +x vainilla_whois.py
pip install -r requirements.txt

📡 Uso

python3 vainilla_whois.py -d example.com

Opciones

Opción	Descripción

-d, --domain	Dominio o IP objetivo
-v, --verbose	Modo detallado
-h, --help	Muestra ayuda


Ejemplo

python3 vainilla_whois.py -d google.com

Salida esperada:

[+] Dominio: google.com
[+] Registrante: Google LLC
[+] Fecha de creación: 1997-09-15
[+] Servidores DNS: ns1.google.com, ns2.google.com
[+] Dirección IP: 142.250.190.78
[+] Ubicación: Mountain View, California, US

🧠 Contexto Vanille

Esta herramienta forma parte del stack Vanille OSINT Suite, integrada y pensada para anonimato, inteligencia digital y rastreo técnico. No es una simple herramienta: es un bisturí.

📂 Archivos

vainilla_whois.py — script principal.

requirements.txt — dependencias necesarias.

README.md — este archivo.


🛡️ Disclaimer

Educativo. El uso indebido es tu responsabilidad.
Operar con ética es parte del poder Vanille.

🔗 Autor

Adrián E. Silva Giménez
aka NVLL | Vanille
📧 adrian74gimenez@gmail.com
📱 +376653494
🌐 vanillevault.github.io/vanille_homepage
