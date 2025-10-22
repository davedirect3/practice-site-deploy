# Setting the base image
FROM nginx:1.10.1

# Specifying files to copy
COPY src/html /usr/share/nginx/html

# Specifying other files in the root dir. to copy to the root dir. in the image
COPY . .

# Exposing Ports (it's the same ad nginx uses by default, so I can comment it out if I want)
EXPOSE 80

# Specifying an entrypoint or so I've been told in the tutorial video I watched.
# (It's supposedly the same as nginx passes upon starting a container, so I can comment it out too).
CMD [ "nginx", "-g", "daemon off;" ]