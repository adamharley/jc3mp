FROM wilkesystems/steamcmd

# Download and install jc3mp
RUN steamcmd +login anonymous +force_install_dir /jc3mp +app_update 619960 validate +quit

# Expose default jc3mp and steam ports
EXPOSE 4200-4202/udp
EXPOSE 4203/tcp

WORKDIR /jc3mp
CMD ["Server"]