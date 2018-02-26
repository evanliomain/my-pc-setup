#!/bin/bash


# couper en 2 1 manga

# $1 fichier à découper
# Récupérer le basename + extension
# Créer 2 nom de fichiers à partir du nom de fichier F1 et F2

identify -format '%G' $1
# return WIDTHxHEIGHT

HALF_WIDTH=$WIDTH/2

convert -crop HALF_WIDTHxHEIGHT+0+0 $1 $F1
convert -crop HALF_WIDTHxHEIGHT+HALF_WIDTH+0 $1 $F2
