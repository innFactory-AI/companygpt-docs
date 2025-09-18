FROM nginx:stable-alpine

# COPY --from=builder /base/dist /usr/share/nginx/html
COPY ./dist /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]