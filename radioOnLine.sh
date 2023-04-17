#!/bin/bash

# Declarando algunas funciones

# Busca el proceso mpv en ejecución y lo finaliza

salir (){
	PID=`ps -eaf | grep mpv | grep -v grep | awk '{print $2}'`
	if [[ "" !=  "$PID" ]]; then
	  echo "killing $PID"
	  kill -9 $PID
	fi
exit 0
}

# Declarando la url de cada estación para que mpv la reproduzca

radioVienenCantando (){
mpv "https://stream-063.zeno.fm/tpwukoepf8hvv"
return
}

radioLofi () {
mpv "https://stream-053.zeno.fm/wnttq2scwxitv"
return
}

radioLaTremendaCorte () {
mpv "https://stream-018.zeno.fm/h6cu1aysmditv"
return
}


menu()
{
  echo "
  @andriuzha
  Selecciona una opción:
  
  1 Vienen Cantando
  2 Lo-fi
  3 La Tremenda Corte
  0 Salir
  "
  echo -n "Opcion: "
  read CHOICE
} 
  
while true
do
  menu
  case $CHOICE in

  1) 
  clear
  echo "Para volver al menú presiona: q"
  echo ""
  echo "Vienen Cantando"
  echo "Discos completos de trova."
  echo ""
  echo "Estadísticas de la transmisión"
  echo ""
  radioVienenCantando
    ;;

  2)
  clear
  echo "Para volver al menú presiona q"
  echo ""
  echo "Lo-fi"
  echo "Selección de mis piezas favoritas."
  echo ""
  echo "Estadísticas de la transmisión"
  echo ""
  radioLofi
  ;;

  3)
  clear
  echo "Para volver al menú presiona q"
  echo ""
  echo "La Tremenda Corte"
  echo "Episodios completos."
  echo ""
  echo "Estadísticas de la transmisión"
  echo ""
  radioLaTremendaCorte
  ;;
  
  0)
  salir 
  exit
    ;;
	
  esac
  done
