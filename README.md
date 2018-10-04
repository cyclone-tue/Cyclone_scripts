# Cyclone_scripts

- mavproxy-base-udp.sh starts the mavproxy on a dedicated screen. 
- mavproxy-stop.sh stops the screen and socat that are created on startup.
- baseproxy is an init.d file that runs the mavproxy as a service in linux.

1. Put the shell scripts somewhere you like in your home folder. Then adapt the links to the 
   shell scripts in baseproxy, to be able to start them.
2. Move baseproxy to /etc/init.d.
3. 'sudo systemctl daemon-reload' to reload the daemon.
4. Now 'sudo update-rc.d baseproxy defaults' in /etc/init.d to have the baseproxy service
   run on startup.

 
