#Paso 1 apt para Kali linux
sudo apt install apt-transport-https ca-certificates curl software-properties-common
#Paso 2 descargar clave
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#Paso 3 instalar arquitetura amd64 y distrib_codename focal stable compatible con Kali-linux
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
#Paso 4 actualizar apt
sudo apt update
#Paso 5 corregir error del update
cd /etc/apt
sudo mv trusted.gpg docker.gpg
sudo mv docker.gpg trusted.gpg.d
#Paso 6 concluir actualizacion
sudo apt update
#Paso 7 instalar docker
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin
docker-compose-plugin
#Paso 8 dejar de utilizar docker con sudo
sudo usermod -aG docker ${USER}
su - ${USER}
