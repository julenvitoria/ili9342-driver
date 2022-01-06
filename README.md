# ILI9342 driver
# Repositorio basado en el original de github de Eugene Andruszczenko “32teeth” 
# https://github.com/32teeth/Generic-ILI9342

ILI9342 driver and installation script for RetroPie

Este es un driver precompilado para pantallas ILI9342 TFT LCD de 2,3” y 2,6”


Pineado de las pantallas

| Funcion | RPI Pin |   GPIO Pin   |
| --------| ------- | ------------ |
| RESET   | 22      | GPIO 25      |
| CSX     | 24      | GPIO 08      |
| SCL     | 23      | SCLK/GPIO 11 |
| D/CX    | 08      | GPIO 24      |
| SDI     | 19      | MOSI/GPIO 10 |

NOTA: a veces los pines anteriormente descritos no corresponderán con la faja de la pantalla. Ésto es debido a las diversas maneras de nombrarlos de los diferentes fabricantes.


Lista de los diferentes nombres de pines y sus posibles nomenclaturas

| Funcion | Posible nomenclatura |
| ------- | -------------------- |
| RESET   | RESET, RST           |
| CSX     | CS, CSX, CX          |
| SCL     | RS, RSX, RX          |
| D/CX    | DC, WR, WRX, WX      |
| SDI     | SDI                  |


**Instrucciones de instalacion**

Desde terminal introducir los siguientes comandos:

`sudo git clone https://gitlab.gameboyzero.es/julenvitoria/ili9342-driver.git`

`cd ili9342-driver && chmod +x install.sh && ./install.sh `

Una vez realizada la instalación es muy probable que sea necesario jugar un poco con el overscan para que quede perfecto en nuestro proyecto ;)

