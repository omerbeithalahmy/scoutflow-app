FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/templates/scoutflow.conf.template

COPY pages /usr/share/nginx/html/pages

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
