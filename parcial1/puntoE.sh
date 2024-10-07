vagrant@VMParcial:~/parcial1$ cat /proc/meminfo
MemTotal:        2010896 kB
MemFree:         1352988 kB
MemAvailable:    1682656 kB
.....
.....

agrant@VMParcial:~/parcial1$ grep MemTotal /proc/meminfo
MemTotal:        2010896 kB
vagrant@VMParcial:~/parcial1$ grep MemTotal /proc/meminfo > filtroBasico.txt

vagrant@VMParcial:~/parcial1$ sudo dmidecode -t chassis
# dmidecode 3.3
Getting SMBIOS data from sysfs.
SMBIOS 2.5 present.

Handle 0x0003, DMI type 3, 13 bytes
Chassis Information
        Manufacturer: Oracle Corporation
        Type: Other
        Lock: Not Present
        Version: Not Specified
        Serial Number: Not Specified
        Asset Tag: Not Specified
        Boot-up State: Safe
        Power Supply State: Safe
        Thermal State: Safe
        Security Status: None
vagrant@VMParcial:~/parcial1$ sudo dmidecode -t chassis | grep Manufacturer >> filtroBasico.txt
vagrant@VMParcial:~/parcial1$ cat filtroBasico.txt
MemTotal:        2010896 kB
        Manufacturer: Oracle Corporation



