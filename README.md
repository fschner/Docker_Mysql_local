# Docker_Mysql_local
Docker Mysql para armazenamento Local

# Criar Imagem
docker build -t mysql_custom .

# Iniciar Container
docker run -d -p 3306:3306 --name mysql_container mysql_custom

