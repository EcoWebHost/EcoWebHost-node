echo -e "Ce projet à été lancé par Pierric le 18/07/2021"
echo -e "------------------------------------"
sleep 5
echo -e "Initialisation des couleurs..."
echo -e "------------------------------------"
sleep 2
noir='\e[0;30m'
gris='\e[1;30m'
rougefonce='\e[0;31m'
rose='\e[1;31m'
vertfonce='\e[0;32m'
vertclair='\e[1;32m'
orange='\e[0;33m'
jaune='\e[1;33m'
bleufonce='\e[0;34m'
bleuclair='\e[1;34m'
violetfonce='\e[0;35m'
violetclair='\e[1;35m'
cyanfonce='\e[0;36m'
cyanclair='\e[1;36m'
grisclair='\e[0;37m'
blanc='\e[1;37m'
neutre='\e[0;m'
echo -e "${orange}Installation de crowdsec${neutre}" 
echo -e "------------------------------------"
curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash
sudo apt-get install crowdsec
curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash
sudo apt install crowdsec-firewall-bouncer crowdsec-firewall-bouncer-iptables
echo -e "${vertfonce}Installation de crowdsec fini${neutre}"
echo -e "------------------------------------"
sleep 2
echo -e "${vertfonce}Installation du serveur web${neutre}" 
echo -e "------------------------------------"
sudo apt install apache2
sudo chown -R pi:www-data /var/www/html/
sudo chmod -R 770 /var/www/html/
sudo apt install php php-mbstring
echo -e "${vertfonce}Installation du serveur Web fini${neutre}" 
echo -e "------------------------------------"
sleep 2
echo -e "${vertfonce}Installation des fichiers de pointage vers les serveurs${neutre}" 
echo -e "------------------------------------"
wget https://github.com/EcoWebHost/releases/0.1/serveurspointage.zip
unzip serveurspointage.zip serveurspointage
sudo rm -r * /var/www/html/
mv serveurspointage/* /var/www/html/
echo -e "${vertfonce}Installation des fichiers de pointage vers les serveurs fini${neutre}" 
echo -e "------------------------------------"


