Usuarios:

23  useradd developer
24  sudo useradd developer
28  groupadd grupoDevops
29  sudo groupadd grupoDevops
32  sudo usermod -aG grupoDevops developer
37  useradd tester
38  sudo useradd tester
39  sudo useradd devops
40  sudo useradd diseñador
41  sudo groupadd grupoDiseño
42  sudo groupadd grupoDeveloper
43  sudo usermod -aG grupoDiseño tester
44  sudo usermod -aG grupoDeveloper devops

vagrant@VMParcial:~$ cat /etc/group |tail
lxd:x:120:ubuntu
vagrant:x:1000:
ubuntu:x:1001:
developer:x:1002:
grupoDevops:x:1003:developer
tester:x:1004:
devops:x:1005:
diseñador:x:1006:
grupoDiseño:x:1007:tester
grupoDeveloper:x:1008:devops

vagrant@VMParcial:~$ id developer
uid=1002(developer) gid=1002(developer) groups=1002(developer),1003(grupoDevops)
vagrant@VMParcial:~$ id tester
uid=1003(tester) gid=1004(tester) groups=1004(tester),1007(grupoDiseño)
vagrant@VMParcial:~$ id devops
uid=1004(devops) gid=1005(devops) groups=1005(devops),1008(grupoDeveloper)
vagrant@VMParcial:~$ id diseñador
uid=1005(diseñador) gid=1006(diseñador) groups=1006(diseñador)

Permisos:
vagrant@VMParcial:~/parcialpruebas/Examenes-UTN$ ls -l
total 16
drwxrwxr-x 5 vagrant vagrant 4096 Oct  6 21:02 alumno_1
drwxrwxr-x 5 vagrant vagrant 4096 Oct  6 21:02 alumno_2
drwxrwxr-x 5 vagrant vagrant 4096 Oct  6 21:02 alumno_3
drwxrwxr-x 2 vagrant vagrant 4096 Oct  6 21:02 profesores

vagrant@VMParcial:~/parcialpruebas$ sudo chmod -R 750 Examenes-UTN/alumno_1
vagrant@VMParcial:~/parcialpruebas$ sudo chmod -R 760 Examenes-UTN/alumno_2
vagrant@VMParcial:~/parcialpruebas$ sudo chmod -R 700 Examenes-UTN/alumno_3
vagrant@VMParcial:~/parcialpruebas$ sudo chmod -R 775 Examenes-UTN/profesores

vagrant@VMParcial:~/parcialpruebas/Examenes-UTN$ ls -l
total 16
drwxr-x--- 5 vagrant vagrant 4096 Oct  6 21:02 alumno_1
drwxrw---- 5 vagrant vagrant 4096 Oct  6 21:02 alumno_2
drwx------ 5 vagrant vagrant 4096 Oct  6 21:02 alumno_3
drwxrwxr-x 2 vagrant vagrant 4096 Oct  6 21:02 profesores

vagrant@VMParcial:~/parcialpruebas$ whoami > Examenes-UTN/alumno_1/validar.txt
vagrant@VMParcial:~/parcialpruebas$ whoami > Examenes-UTN/alumno_2/validar.txt
vagrant@VMParcial:~/parcialpruebas$ whoami > Examenes-UTN/alumno_3/validar.txt
vagrant@VMParcial:~/parcialpruebas$ whoami > Examenes-UTN/profesores/validar.txt


