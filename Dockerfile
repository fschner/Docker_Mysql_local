# Use a imagem oficial do MySQL
FROM mysql:latest

# Define variáveis de ambiente para configurar o MySQL
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_USER=felipe
ENV MYSQL_PASSWORD=felipe
ENV MYSQL_DATABASE=minha_base

# Copie as configurações personalizadas para o container
#COPY my.cnf /etc/mysql/my.cnf

# Crie o diretório para armazenar os dados do MySQL
RUN mkdir -p /Users/frudek/Documents/Developer/Docker/MySql

# Defina permissões para o diretório de dados
RUN chown -R mysql:mysql /Users/frudek/Documents/Developer/Docker/MySql

# Ponto de montagem do volume para armazenar os dados do MySQL
VOLUME /Users/frudek/Documents/Developer/Docker/MySql

# Expõe a porta padrão do MySQL
EXPOSE 3306

# Inicie o servidor MySQL quando o container for iniciado
CMD ["mysqld"]
