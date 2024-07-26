FROM ubuntu:22.04
# Install required packages
WORKDIR /app
COPY wisecow.sh /app/
RUN apt update && \
    apt install -y fortune-mod cowsay netcat && \
    ln -s /usr/games/fortune /usr/local/bin/fortune && \
    ln -s /usr/games/cowsay /usr/local/bin/cowsay && \
    apt clean

# Expose the port used by the application
EXPOSE 4499
CMD ["sh", "/app/wisecow.sh"]

