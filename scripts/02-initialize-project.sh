#!/bin/bash
set -e
echo "🔧 FASE 2: Inicializando y Planificando el Proyecto Terraform..."
cd environments/dev

echo "🔄 Inicializando Terraform..."
terraform init -upgrade

echo "✅ Validando la sintaxis del código..."
terraform validate

echo "📋 Generando un plan de ejecución para revisión..."
terraform plan -out=tfplan

echo "✅ ¡Inicialización y planificación completadas!"
