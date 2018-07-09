FROM nginx

RUN apt-get update -qq && apt-get -y install apache2-utils

# Copy Nginx config template
COPY containers/production/rails/nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# Use the "exec" form of CMD so Nginx shuts down gracefully on SIGTERM (i.e. `docker stop`)
CMD [ "nginx", "-g", "daemon off;" ]
