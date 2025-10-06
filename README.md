# Terraform AWS Enterprise Foundation

Este repositorio proporciona una base de Infraestructura como Código (IaC) siguiendo las mejores prácticas a nivel enterprise para proyectos en AWS. Está diseñado para ser el punto de partida de workshops y laboratorios de DevOps, DevSecOps y SRE.

## 🎯 Características Principales

- **🏗️ Diseño Modular:** Componentes de infraestructura reutilizables y componibles (`networking`, `compute`, `tagging`).
- **💰 Integración con FinOps:** Esquema de etiquetado consistente para la asignación de costos, presupuestos e informes.
- **🔒 Seguridad por Defecto:** Configuración inicial con prácticas de seguridad como volúmenes EBS encriptados y metadatos de instancia seguros (IMDSv2).
- **🚀 Listo para DevOps:** Gestión de estado remoto, bloqueo de estado para colaboración y un flujo de trabajo automatizado mediante scripts.
- **📄 Documentación como Código:** Guías de arquitectura, etiquetado y FinOps directamente en el repositorio.

## 📁 Estructura del Proyecto

terraform-aws-enterprise-foundation/
├── 📁 modules/         # Módulos de Terraform reutilizables
├── 📁 environments/    # Configuración por ambiente (dev, prod)
├── 📁 scripts/         # Scripts para automatizar el flujo de trabajo
├── 📁 docs/            # Documentación del proyecto
├── 📁 budgets/         # Archivos de configuración de presupuestos (FinOps)
├── .gitignore         # Archivos a ignorar por Git
├── LICENSE            # Licencia del proyecto
└── README.md          # Este archivo


## 🚀 Guía de Inicio Rápido

### Prerrequisitos

- Terraform `>= 1.5.0`
- AWS CLI configurado con credenciales válidas
- Git

### Secuencia de Despliegue

Sigue los scripts en orden numérico desde la raíz del proyecto para un despliegue controlado.

```bash
# 1. Clonar el repositorio
git clone [https://github.com/TU_USUARIO/terraform-aws-enterprise-foundation.git](https://github.com/TU_USUARIO/terraform-aws-enterprise-foundation.git)
cd terraform-aws-enterprise-foundation

# 2. Hacer los scripts ejecutables
chmod +x scripts/*.sh

# 3. Ejecutar la secuencia de despliegue
./scripts/01-setup-backend.sh
./scripts/02-initialize-project.sh
./scripts/03-deploy-infrastructure.sh

# 4. (Opcional) Generar reporte de costos
./scripts/04-cost-reporting.sh

# 5. (MUY IMPORTANTE) Destruir la infraestructura al finalizar
./scripts/05-destroy-resources.sh
🤝 Contribuciones
Las contribuciones son bienvenidas. Por favor, abre un Pull Request con tus mejoras.

📄 Licencia
Este proyecto está bajo la Licencia MIT. Ver el archivo LICENSE para más detalles.
