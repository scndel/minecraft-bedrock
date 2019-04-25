# Minecraft BDS
Bedrock Dedicated Server (Alpha) allows you to play similarly to Realms but hosted by yourself.
It means you can use it cross-platform between your Windows 10, Xbox One and others.

Unfortunately Nintendo Switch client can't connect to BDS because you can't manually add a server. But stay tuned I'll follow future releases.
JAVA VERSION NOT COMPATIBLE, use other kind of server for that purpose.

## Just run a default config
This container run the latest version availabe on https://www.minecraft.net/en-us/download/server/bedrock/

`docker run -d -p 19132:19132/udp --name bds scndel/minecraft-bedrock`

## Use your Config
*TODO* You can create volume to mount `/bedrock` (or `LD_LIBRARY_PATH` env) to your host path for persistence (in other words everthing you've achieved in the game that you could lose with the container) or to provide server.properties and other data files. 
