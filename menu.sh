#!/bin/bash

CHOIX="0"
CHEMINHTML=""
URLHTML=""


# Gestion d'erreur avec une boucle. Tant que le choix est inférieur à 1 (-lt = lower than) ou supérieur à 3 (-gt = greater than)

while [ "${CHOIX}" -lt "1" ] || [ "${CHOIX}" -gt "3" ]
do
	# Le -e permet de gérer les \n (retour à la ligne)
	
	echo -e "Quel mode voulez-vous lancer : \n1- Optimisation HTML \n2- Minifacation de code \n3- Optimisation d'images" 

	read CHOIX
	
	if [[ "${CHOIX}" -lt "1" ]] || [[ "${CHOIX}" -gt "3" ]] 
	then 
		echo "Vous devez choisir un chiffre entre 1 et 3."
	fi
done

# Case = Selon que

case "${CHOIX}" in
	1) echo "----------------------------------"
	echo ""
	
	# Réinitialisation de CHOIX pour rerentrer dans la boucle
	
	CHOIX="0"
	
	while [ "${CHOIX}" -lt "1" ] || [ "${CHOIX}" -gt "2" ]
	do
	
		echo -e "Voulez vous optimiser un fichier en local ou depuis un URL : \n1- Local \n2- URL"
	
		read CHOIX
	
		if [[ "${CHOIX}" -lt "1" ]] || [[ "${CHOIX}" -gt "2" ]]
		then 
			echo "Vous devez choisir un chiffre entre 1 et 2."
		fi
	
	done
	
	case "${CHOIX}" in
		1) echo "----------------------------------"
		echo ""
		echo "Saisir le chemin vers votre fichier : "
		read CHEMINHTML
				
		;;
		
		2) echo "----------------------------------"
		echo ""
		echo "Saisir l'URL : "
		read URLHTML
		
		;;
	esac
	 ;;
	2) echo "----------------------------------"
	echo ""
	
	CHOIX="0"
	
	while [ "${CHOIX}" -lt "1" ] || [ "${CHOIX}" -gt "4" ]
	do
	
		echo -e "Voulez vous minifier un fichier : \n1- HTML \n2- CSS \n3- JS \n4- Répertoire"
	
		read CHOIX
	
		if [[ "${CHOIX}" -lt "1" ]] || [[ "${CHOIX}" -gt "4" ]]
		then 
			echo "Vous devez choisir un chiffre entre 1 et 4."
		fi
	
	done
	
	case "${CHOIX}" in 
	
		1) echo "----------------------------------"
		echo ""
		echo "Vous avez choisis de minifier un fichier HTML."
		;;
		
		2) echo "----------------------------------"
		echo ""
		echo "Vous avez choisis de minifier un fichier CSS."
		;;
		
		3) echo "----------------------------------"
		echo ""
		echo "Vous avez choisis de minifier un fichier JS."
		;;
		
		4) echo "----------------------------------"
		echo ""
		echo "Vous avez choisis de minifier les fichiers HTML, CSS et JS d'un répertoire."
		;;
		
	esac
	
	
	 ;;
	3) echo "----------------------------------"
	echo ""
	echo "Vous avez choisis Optimisation images"
	
	 ;;
esac
	
