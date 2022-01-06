#!/bin/bash
# By tanstaafl updated by julenvitoria
dialog --backtitle "Instalador TFT ILI9342" --title " ¡¡¡¡Informacion!!!! " \
--infobox "
                 ¡¡¡ATENCION!!!
Es IMPRESCINDIBLE haber activado el bus SPI
a traves de raspi-config. En el siguiente menu
podras instalar el driver dependiendo del lado
en el que tu pantalla tenga la faja" 17 55
sleep 8
INPUT=/tmp/ili.sh.$$
dialog --backtitle "Instalador TFT ILI9342" \
--title "Instalacion TFT LCD ILI9342 SPI" \
--default-item 3 \
--ok-label Aplicar \
--cancel-label Salir \
--menu " Por favor, elige tu instalacion del driver ILI9341 " 17 55 4 \
   1 "Faja en lado superior"\
   2 "Faja en lado inferior"\
   3 "Salir" 2>"${INPUT}"
menuitem=$(<"${INPUT}")
case $menuitem in
  1) #faja lado superior
#si se prefiere cargar el driver en rc.local o en crontab -e o en systemd habilitar las lineas segun sea necesario
#para rc.local
#sudo sed -i ‘/\”exit 0\”/!s/exit 0/\sudo \/home\/pi\/ili9342-driver\/fbcp-ili9342 \&\nexit 0/g’ /etc/rc.local
#para crontab -e
#echo "@reboot sudo /home/pi/ili9342-driver/fbcp-ili9342" >> mycron; crontab mycron;rm mycron
#para systemd
clear
echo "Se procede a crear el servicio e instalar el binario para tener imagen en la pantalla SPI ILI9342"
sleep 1
echo "Copiando el archivo de servicio..."
sudo cp fbcp-ili9342.service /etc/systemd/system
sleep 1
sudo systemctl daemon-reload
echo "Se inicia el servicio"
sudo systemctl start fbcp-ili9342.service
echo "Se habilita al arranque"
sudo systemctl enable fbcp-ili9342.service
#sudo systemctl status fbcp-ili93412.service
sleep 2 ;
    dialog --infobox "



                REALIZADO!!!!
    


  Este mensaje se autocerrara en 3 segundos 
                    Y
          Se reiniciara el sistema" 17 55 ;
sleep 3 ;
sudo reboot ;
exit;;
  2) #faja lado inferior
#si se prefiere cargar el driver en rc.local o en crontab -e o en systemd habilitar las lineas segun sea necesario
#para rc.local
#sudo sed -i ‘/\”exit 0\”/!s/exit 0/\sudo \/home\/pi\/ili9342-driver\/fbcp-ili9342 \&\nexit 0/g’ /etc/rc.local
#para crontab -e
#echo "@reboot sudo /home/pi/ili9342-driver/fbcp-ili9342" >> mycron; crontab mycron;rm mycron
#para systemd
clear
echo "Se procede a crear el servicio e instalar el binario para tener imagen en la pantalla SPI ILI9342"
sleep 1
echo "Copiando el archivo de servicio..."
sudo cp fbcp-ili9342.service /etc/systemd/system
sleep 1
sudo systemctl daemon-reload
echo "Se inicia el servicio"
sudo systemctl start fbcp-ili9342.service
echo "Se habilita al arranque"
sudo systemctl enable fbcp-ili9342.service
#sudo systemctl status fbcp-ili9342.service
sudo sed -i ‘$a #Ajuste rotacion pantalla\ndisplay_rotate=2’ /boot/config.txt
sleep 2 ;
    dialog --infobox "



                REALIZADO!!!!
    


  Este mensaje se autocerrara en 3 segundos 
                    Y
          Se reiniciara el sistema" 17 55 ;
sleep 3 ;
sudo reboot ;
exit;;
  3) clear; exit 0;;
esac



#cd ili9342-driver
#sudo chmod +x /home/pi/ili9342-driver/fbcp-ili9342
#si se prefiere cargar el driver en rc.local o en crontab -e o en systemd habilitar las lineas segun sea necesario
#para rc.local
#sudo sed -i ‘/\”exit 0\”/!s/exit 0/\sudo \/home\/pi\/ili9342-driver\/fbcp-ili9342 \&\nexit 0/g’ /etc/rc.local
#para crontab -e
#echo “@reboot sudo /home/pi/ili9342-driver/fbcp-ili9342” >> mycron; crontab mycron;rm mycron
#para systemd
#sudo cp fbcp-ili9342.service /etc/systemd/system
#sudo systemctl daemon-reload
#sudo systemctl start fbcp-ili9342.service
#sudo systemctl enable fbcp-ili9342.service
#sleep 2
#sudo systemctl status fbcp-ili9341.service
#sleep 2
#echo “Proceso realizado, reiniciando...”
#sudo reboot
