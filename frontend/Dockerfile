# ============================================================================
# Frontend Service Container Specification
# Configures the Nginx environment for serving the ScoutFlow web interface
# ============================================================================

FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/scoutflow.conf

COPY pages /usr/share/nginx/html/pages

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
