FROM wilkesystems/steamcmd

# Download and install jc3mp
RUN steamcmd +login anonymous +force_install_dir ./jc3mp/ +app_update 619960 validate +quit

# Add config
ADD config.example.json jc3mp/config.json

# Expose default jc3mp and steam ports
EXPOSE 4200
EXPOSE 4202

WORKDIR /jc3mp
CMD ["Server"]