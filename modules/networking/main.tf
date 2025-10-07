resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags       = merge(var.tags, { Name = "${var.tags.Project}-vpc" })
}

# --- RECURSOS AÑADIDOS ---

# 1. Crear un Internet Gateway (la puerta principal del edificio)
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags   = merge(var.tags, { Name = "${var.tags.Project}-igw" })
}

# 2. Crear una Tabla de Rutas que dirija el tráfico a internet
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = merge(var.tags, { Name = "${var.tags.Project}-public-rt" })
}

# --- FIN DE RECURSOS AÑADIDOS ---

resource "aws_subnet" "main" {
  count                   = length(var.subnets)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnets[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true # Asegura que las instancias en esta subnet obtengan IP pública

  tags = merge(var.tags, { Name = "${var.tags.Project}-subnet-${count.index}" })
}

# --- RECURSO AÑADIDO ---

# 3. Asociar nuestra tabla de rutas a cada subnet
resource "aws_route_table_association" "public" {
  count          = length(aws_subnet.main)
  subnet_id      = aws_subnet.main[count.index].id
  route_table_id = aws_route_table.public.id
}

# --- FIN DE RECURSO AÑADIDO ---
