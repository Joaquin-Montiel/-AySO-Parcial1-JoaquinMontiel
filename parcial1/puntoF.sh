vagrant@VMParcial:~/parcial1$ echo "Mi IP Publica es: " > Filtro_Avanzado.txt
vagrant@VMParcial:~/parcial1$ curl -s ifconfig.me | awk -F 'v' '{print$1}'>> Filtro_Avanzado.txt
vagrant@VMParcial:~/parcial1$ cat Filtro_Avanzado.txt
Mi IP Publica es:
190.210.192.207
vagrant@VMParcial:~/parcial1$ echo "Mi usuario es: " >> Filtro_Avanzado.txt
vagrant@VMParcial:~/parcial1$ whoami >> Filtro_Avanzado.txt
vagrant@VMParcial:~/parcial1$ cat Filtro_Avanzado.txt
Mi IP Publica es:
190.210.192.207
Mi usuario es:
vagrant
vagrant@VMParcial:~/parcial1$ echo "El Hash de mi usuario es: " >> Filtro_Avanzado.txt
vagrant@VMParcial:~/parcial1$ sudo cat /etc/shadow | grep vagrant | awk -F ':' '{print $2}' >> Filtro_Avanzado.txt
vagrant@VMParcial:~/parcial1$ cat Filtro_Avanzado.txt
Mi IP Publica es:
190.210.192.207
Mi usuario es:
vagrant
El Hash de mi usuario es:
$y$j9T$f7V.J8o8/5JXqaI3xUKKQ0$oND2iaEkOI22AcHc9kfKwylXqBi.VixFO/cPGuxMD..
