#Paquete esencial.
echo "Ahora instalaremos todo lo basico, no toques nada ni cierres nada"
echo "Empezamos en 5s"
sleep 5s
#Actualizando los repositorios
    sudo apt upgrade -y
    sudo add-apt-repository http://archive.ubuntu.com/ubuntu -y
    sudo add-apt-repository ppa:nilarimogard/webupd8 -y
    sudo apt-add-repository --component non-free
    sudo sed -r -i 's/^deb(.*)$/deb\1 contrib/g' /etc/apt/sources.list
    sudo mkdir -pm755 /etc/apt/keyrings
    sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
    sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
    sudo apt install -y wget apt-transport-https gpg
    wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/adoptium.gpg > /dev/null
    echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | sudo tee /etc/apt/sources.list.d/adoptium.list
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
    sudo apt install axel -y
    #Instalando Wine (x64 y x32)
    sudo dpkg --add-architecture i386
    sudo apt update -y
    sudo apt install wine-stable-amd64 wine-stable-i386 libc6 wine-stable -y
    sudo apt install --install-recommends winehq-stable -y
    sudo apt install winetricks -y
    #Instalando Java JDK 21 (Adoptium)
    sudo apt install temurin-21-jdk -y
    #Instalando Flatpak
    sudo apt install flatpak -y
    sudo flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
