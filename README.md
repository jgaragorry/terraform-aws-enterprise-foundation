# 🏗️ Terraform AWS Enterprise Foundation 🏗️

<p align="center">
  <a href="https://www.linkedin.com/in/jorge-garagorry-a6078652/" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
  </a>
  <a href="https://github.com/jgaragorry" target="_blank">
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  </a>
</p>

---

## 📋 Tabla de Contenidos

1. [🎯 Descripción General](#-descripción-general)
2. [✨ Características Principales](#-características-principales)
3. [🏛️ Arquitectura del Proyecto](#-arquitectura-del-proyecto)
4. [🚀 Guía de Inicio Rápido](#-guía-de-inicio-rápido)
5. [💰 Implementación de FinOps](#-implementación-de-finops)
6. [🔒 Prácticas de Seguridad](#-prácticas-de-seguridad)
7. [🤝 Contribuciones y Contacto](#-contribuciones-y-contacto)

---

## 🎯 Descripción General

Este repositorio proporciona una base de **Infraestructura como Código (IaC)** siguiendo las mejores prácticas a nivel enterprise para proyectos en AWS. Está diseñado para ser el punto de partida de workshops y laboratorios de DevOps, DevSecOps y SRE, demostrando un enfoque profesional desde el inicio.

---

## ✨ Características Principales

- 🏗️ Diseño Modular: Componentes de infraestructura reutilizables y componibles (`networking`, `compute`, `tagging`).
- 💰 Integración con FinOps: Esquema de etiquetado consistente para la asignación de costos, presupuestos e informes.
- 🔒 Seguridad por Defecto: Configuración inicial con prácticas de seguridad como volúmenes EBS encriptados y metadatos de instancia seguros (IMDSv2).
- 🚀 Listo para DevOps: Gestión de estado remoto, bloqueo de estado para colaboración y un flujo de trabajo automatizado mediante scripts.
- 📄 Documentación como Código: Guías de arquitectura, etiquetado y FinOps directamente en el repositorio.

---

## 🏛️ Arquitectura del Proyecto

La estructura del repositorio está diseñada para ser escalable y mantenible, separando la lógica en módulos y la configuración por ambientes.

<details>
<summary>📄 Ver Estructura de Directorios en Texto</summary>

```plaintext
terraform-aws-enterprise-foundation/
├── modules/         # Módulos de Terraform reutilizables
├── environments/    # Configuración por ambiente (dev, prod)
├── scripts/         # Scripts para automatizar el flujo de trabajo
├── docs/            # Documentación del proyecto
├── budgets/         # Archivos de configuración de presupuestos (FinOps)
├── .gitignore       # Archivos a ignorar por Git
├── LICENSE          # Licencia del proyecto
└── README.md        # Este archivo
```

</details>


---

## 🚀 Guía de Inicio Rápido

### Prerrequisitos

- Terraform: >= 1.5.0  
- AWS CLI: Configurado con credenciales válidas (`aws configure`)  
- Git: Instalado y configurado  

### Secuencia de Despliegue

Sigue los scripts en orden numérico desde la raíz del proyecto para un despliegue controlado y seguro.

<details>
<summary>💻 Ver y Copiar Secuencia de Comandos</summary>

```bash
# 1. Clonar el repositorio
git clone https://github.com/jgaragorry/terraform-aws-enterprise-foundation.git
cd terraform-aws-enterprise-foundation

# 2. Hacer los scripts ejecutables
chmod +x scripts/*.sh

# 3. Ejecutar la secuencia de despliegue en orden

# FASE 1: Configurar el backend remoto
./scripts/01-setup-backend.sh

# FASE 2: Inicializar el proyecto y generar el plan
./scripts/02-initialize-project.sh

# FASE 3: Aplicar el plan y crear la infraestructura
./scripts/03-deploy-infrastructure.sh
```

</details>

### Limpieza de Recursos

```bash
# (MUY IMPORTANTE) Destruir la infraestructura al finalizar
./scripts/05-destroy-resources.sh
```

---

## 💰 Implementación de FinOps

Este proyecto incluye prácticas de FinOps desde el inicio:

- Informes de Costos: El script `04-cost-reporting.sh` permite visualizar los costos asociados al proyecto.
- Etiquetado para Asignación de Costos: Todas las etiquetas obligatorias (`Project`, `CostCenter`, `Environment`) permiten un seguimiento detallado en AWS Cost Explorer.
- Selección de Recursos Optimizada: Se utilizan instancias `t3.micro` por defecto para mantener los costos bajos en el entorno de desarrollo.

---

## 🔒 Prácticas de Seguridad

La seguridad es un pilar fundamental de esta base de código:

- Estado Remoto Seguro: El backend de Terraform está configurado para encriptar el archivo de estado en reposo.
- Metadatos de Instancia (IMDSv2): Se requiere el uso de IMDSv2 en las instancias EC2, lo que mitiga vulnerabilidades de SSRF.
- Volúmenes Encriptados: Los volúmenes EBS de las instancias se encriptan por defecto.
- Hardening del Sistema Operativo: El script `user-data` instala `fail2ban` y configura actualizaciones de seguridad automáticas.

---

## 🤝 Contribuciones y Contacto

Las contribuciones son bienvenidas. Si encuentras un problema o tienes una sugerencia, por favor abre un issue. Para contacto directo, puedes encontrarme en:

<p align="center">
  <a href="https://www.linkedin.com/in/jorge-garagorry-a6078652/" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
  </a>
  <a href="https://github.com/jgaragorry" target="_blank">
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  </a>
</p>
