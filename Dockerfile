FROM digitallyseamless/nodejs-bower-grunt

MAINTAINER "Alejo Naveira" "alejonaveira@gmail.com"

# Expongo los puertos default del server (9000) y livereload (35729)
EXPOSE 9000 35729

# Volumen montable /data
VOLUME /data
WORKDIR /data

# Instalo Yeoman globalmente
RUN npm install -g grunt
RUN npm install -g yo
RUN npm install -g karma


# Creo el usuario 'node'
RUN useradd -ms /bin/bash node

# Le doy propiedad de la carpeta /data
RUN chown -R node /data

# Cambio de usuario e instalación de grunt-cli local
USER node
WORKDIR /data


CMD ["bash"]