#Paquete esencial.
echo "Ahora instalaremos todo lo basico, no toques nada ni cierres nada"
echo "Empezamos en 5s"
sleep 5s
#Actualizando los repositorios
    sudo add-apt-repository http://archive.ubuntu.com/ubuntu -y
    sudo add-apt-repository ppa:nilarimogard/webupd8 -y
    sudo apt-add-repository --component non-free
    sudo apt update -y
#Instalando todo
    sudo apt install git -y
    sudo apt install nano -y
    sudo apt-get install curl -y
    #Instalando Chrome
        curl -fSsL https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor | sudo tee /usr/share/keyrings/google-chrome.gpg >> /dev/null
        echo deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main | sudo tee /etc/apt/sources.list.d/google-chrome.list
        sudo apt update -y
        sudo apt install google-chrome-stable -y
    #----------------------------------------
    sudo apt install thunar -y
    sudo apt install unrar-free -y
    #Instalando Wine (x64 y x32)
    sudo dpkg --add-architecture i386
    sudo mkdir -pm755 /etc/apt/keyrings
    sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
    sudo apt update -y
    sudo apt install --install-recommends winehq-stable -yg