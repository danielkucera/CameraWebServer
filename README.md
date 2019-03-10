# Ai-Thinker ESP32-CAM

<img src="https://raw.github.com/papabricole/CameraWebServer/master/doc/ESP32-CAM-WebServer.jpg">

This project is derived from the espressif CameraWebServer example with a few changes:
 * flash lamp on/off support
 * platformio support (alternative to arduino ide)
 * hackable index.html for the webserver
 * facial recognition stuff removed

# USB to TTL wiring

<img src="https://raw.github.com/papabricole/CameraWebServer/master/doc/ESP32-CAM-to-USB-Wiring.jpg">

# Case

I designed a 3D printable case available [here](https://www.thingiverse.com/thing:3463679)

<img src="https://raw.github.com/papabricole/CameraWebServer/master/doc/ESP32-CAM-Case.jpg">

# Hardware Mod - Flash Lamp and SDCard

Unfortunately, the SDCard Data1 pin is shared with the Flash Lamp, meaning each access to the SDCard make
a flash.
This hardware mod reconnect the flash lamp to the onboard led instead.

DRAWBACKS: 
 - The module flash during boot
 - The flash lamp stays on in programing mode

**WARNING1: I'm software engineer, not electronician. It's working but it does not mean it's correct.**

**WARNING2: This mod is close to micro-chirurgy and I'm not responsible from any damage.**

<img src="https://raw.github.com/papabricole/CameraWebServer/master/doc/ESP32-CAM-MOD.jpg">

- remove the solder mask on the via 'pad' on the left to make the copper visible
- solder a tiny wire to the via 'pad'
- cut the pcb trace using a sharp knife following the vertical green line
- solder the wire directly on the tiny resistor

Now change the flash lamp pin to 33 instead of 4:

-#define FLASH_LAMP_GPIO_NUM 4

+#define FLASH_LAMP_GPIO_NUM 33



