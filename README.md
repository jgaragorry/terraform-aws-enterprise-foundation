<h1>
  <p align="center">
    🏗️ Terraform AWS Enterprise Foundation 🏗️
  </p>
</h1>

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
- `terraform.tfvars`: Personalización sencilla de la infraestructura sin modificar el código principal.
- Outputs Definidos: Proporciona información clave (como IPs públicas) después del despliegue.
- 💰 Integración con FinOps: Esquema de etiquetado consistente y scripts de limpieza para control de costos.
- 🔒 Seguridad Mejorada: Reglas de firewall parametrizadas para restringir el acceso.
- 🚀 Flujo de Trabajo Automatizado: Scripts para todo el ciclo de vida de la infraestructura.

---

## 🏛️ Arquitectura del Proyecto

La estructura del repositorio está diseñada para ser escalable y mantenible, separando la lógica en módulos y la configuración por ambientes.

<!-- Si no tienes esta imagen, elimina este bloque -->
<p align="center">
  <img src="https://github.com/jgaragorry/terraform-aws-enterprise-foundation/blob/main/docs/images/architecture.png?raw=true" alt="Diagrama de Arquitectura" width="700"/>
</p>

---

## 🚀 Guía de Inicio Rápido

### ⚠️ Nota Importante

**Todos los scripts deben ejecutarse desde el directorio raíz del proyecto**, no desde dentro de la carpeta `scripts/`.

### Prerrequisitos

- **Terraform:** `>= 1.5.0`
- **AWS CLI:** Configurado con credenciales válidas (`aws configure`)
- **Git:** Instalado y configurado

### 1. Configuración Inicial

Antes de desplegar, personaliza tu infraestructura editando el archivo `environments/dev/terraform.tfvars`. Es especialmente importante que actualices el valor de `my_ip_for_ssh`.

```hcl
# environments/dev/terraform.tfvars

# Reemplaza "0.0.0.0/0" con tu IP pública seguida de /32 para máxima seguridad.
# Puedes encontrar tu IP buscando "what is my ip" en Google.
my_ip_for_ssh = "TU_IP_PUBLICA/32"
```

### 2. Secuencia de Despliegue

Sigue los scripts en orden numérico para un despliegue controlado y seguro.

<details>
<summary>💻 Ver y Copiar Secuencia de Comandos</summary>

```bash
# Opcional: Ejecutar solo si necesitas limpiar un despliegue anterior fallido.
./scripts/cleanup-backend.sh

# 1. Dar permisos de ejecución a los scripts (solo la primera vez).
chmod +x scripts/*.sh

# 2. Configurar el backend remoto (S3 y DynamoDB).
./scripts/01-setup-backend.sh

# 3. Inicializar Terraform y crear el plan de ejecución.
./scripts/02-initialize-project.sh

# 4. Aplicar el plan y crear la infraestructura en AWS.
./scripts/03-deploy-infrastructure.sh
```

</details>

### 3. Limpieza de Recursos

```bash
# (MUY IMPORTANTE) Destruir la infraestructura al finalizar.
./scripts/05-destroy-resources.sh
```

---

## 💰 Implementación de FinOps

- **Visibilidad de Costos:** El script `04-cost-reporting.sh` permite visualizar los costos asociados al proyecto.
- **Control de Recursos:** La destrucción controlada (`05-destroy-resources.sh`) y la limpieza del backend (`cleanup-backend.sh`) aseguran que no queden recursos facturando.

---

## 🔒 Prácticas de Seguridad

- **Acceso Restringido:** La regla de SSH ahora está controlada por la variable `my_ip_for_ssh`, permitiendo un acceso mucho más seguro.
- **Estado Remoto Seguro:** El backend de Terraform está configurado para encriptar el archivo de estado en reposo.
- **Metadatos de Instancia (IMDSv2):** Se requiere el uso de IMDSv2 en las instancias EC2 para mitigar vulnerabilidades.

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
