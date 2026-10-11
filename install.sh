#!/data/data/com.termux/files/usr/bin/bash

# ===== Cool Animated ASCII Banner =====
clear
# Colors
R='\e[31m'; G='\e[32m'; Y='\e[33m'; B='\e[34m'; M='\e[35m'; C='\e[36m'; W='\e[37m'; NC='\e[0m'

banner_lines=(
                                                                           
"        ____             _____          ____      ____             _____   "
"       |    |        ___|\    \        |    |    |    |        ___|\    \  "
"       |    |       /    /\    \       |    |    |    |       /    /\    \ "
"       |    |      |    |  |    |      |    |    |    |      |    |  |    |"
" ____  |    |      |    |__|    |      |    |    |    |      |    |__|    |"
"|    | |    |      |    .--.    |      |    |    |    |      |    .--.    |"
"|    | |    |      |    |  |    |      |\    \  /    /|      |    |  |    |"
"|\____\|____|      |____|  |____|      | \ ___\/___ / |      |____|  |____|"
"| |    |    |      |    |  |    |       \ |   ||   | /       |    |  |    |"
"\|____|____|      |____|  |____|        \|___||___|/        |____|  |____| "
"    \(   )/          \(      )/            \(    )/            \(      )/  "
"    '   '            '      '              '    '              '      '    "
                                                                           
)

colors=( "$C" "$B" "$M" "$G" "$Y" "$R" )

echo
for i in "${!banner_lines[@]}"; do
    echo -e "${colors[$i]}${banner_lines[$i]}${NC}"
    sleep 0.12
done

echo
echo -e "${Y}    ${NC}"
sleep 0.1
echo -e "${G}   ${W}Java 8 Installer For Termux ${G}   ${NC}"
sleep 0.1
echo -e "${Y}   ${NC}"
sleep 0.3

# Simple spinner animation
spin='-\|/'
for i in $(seq 1 12); do
    printf "\r${C}  [%s] Initializing installer..." "${spin:$((i % 4)):1}"
    sleep 0.1
done
printf "\r${G}  [✓] Installer Ready!              ${NC}\n"
echo
# ===== End Banner =====

echo -e "\e[34mInstalling Java"
echo
echo

echo -e "\e[32mGive Some Time To Install Java 8!"

#Checking for existing Java installation
if [ -e $PREFIX/bin/java ]
then
	echo -e "\e[32mJava is already installed!"
	echo
	exit
else
	
	case `dpkg --print-architecture` in
	aarch64)
		archname="aarch64"; tag="java_aarch" ;;
	arm64)
		archname="aarch64"; tag="java_aarch" ;;
	armhf)
		archname="arm"; tag="java" ;;
	armv7l)
		archname="arm"; tag="java" ;;
	arm)
		archname="arm"; tag="java" ;;
	*)
		tt "\e[91mERROR: Unknown architecture."; echo; exit ;;
	esac
 clear

	# Java installation
	echo -e "\e[32m[*] \e[34mDownloading Java 8 For Termux ( required 80mb ) ${archname} 	"
        wget https://github.com/h4ck3r0/Java-termux/releases/download/${tag}/jdk8_${archname}.tar.gz -q

	echo -e "\e[32m[*] \e[34mMoving JDK to system..."
	mv jdk8_${archname}.tar.gz $PREFIX/share

	echo -e "\e[32m[*] \e[34mExtracting JDK..."
	cd $PREFIX/share
	tar -xhf jdk8_${archname}.tar.gz

	echo -e "\e[32m[*] \e[34mSeting-up %JAVA_HOME%..."
	export JAVA_HOME=$PREFIX/share/jdk8
	echo "export JAVA_HOME=$PREFIX/share/jdk8" >> $HOME/.profile

	echo -e "\e[32m[*] \e[34mCoping Java wrapper scripts to bin..."
	#I'm not 100% sure, but getting rid of bin contnent MAY cause some issues with %JAVA_HOME%, thus it's no longer moved - copied instead. Sorry to everyone short on storage.
	cp bin/* $PREFIX/bin

	echo -e "\e[32m[*] \e[34mCleaning up temporary files..."
	rm -rf $HOME/installjava
	rm -rf $PREFIX/share/jdk8_${archname}.tar.gz
	rm -rf $PREFIX/share/bin

	echo
	echo -e "\e[32mJava was successfully installed!\e[39m"
 echo

fi