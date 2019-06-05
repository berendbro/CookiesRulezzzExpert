java -Xms2G -Xmx2G -jar serversync-2.6.17.jar progress-only
if exist "C:\Program Files (x86)\Minecraft\MinecraftLauncher.exe" start "minecraft" "C:\Program Files (x86)\Minecraft\MinecraftLauncher.exe"
if not exist "C:\Program Files (x86)\Minecraft\MinecraftLauncher.exe" cscript error.vbs "Could not find minecraft launcher, please launch manually"