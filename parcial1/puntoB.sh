Particion de disco:
vagrant@VMParcial:~$ sudo fdisk /dev/sdc
Device     Boot   Start     End Sectors Size Id Type
/dev/sdc1          2048 2099199 2097152   1G 83 Linux
/dev/sdc2       2099200 4196351 2097152   1G 83 Linux
/dev/sdc3       4196352 6293503 2097152   1G 83 Linux
/dev/sdc4       6293504 8390655 2097152   1G  5 Extended


vagrant@VMParcial:~$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0 63.9M  1 loop /snap/core20/2318
loop1    7:1    0   87M  1 loop /snap/lxd/29351
loop2    7:2    0 38.8M  1 loop /snap/snapd/21759
loop3    7:3    0 74.2M  1 loop /snap/core22/1621
loop4    7:4    0  4.4M  1 loop /snap/tree/54
sda      8:0    0   40G  0 disk
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk
sdc      8:32   0   10G  0 disk
├─sdc1   8:33   0    1G  0 part
├─sdc2   8:34   0    1G  0 part
├─sdc3   8:35   0    1G  0 part
└─sdc4   8:36   0    1G  0 part
sdd      8:48   0    2G  0 disk

Formatear los discos:
37  sudo mkfs.ext4 /dev/sdc1
38  sudo mkfs.ext4 /dev/sdc2
39  sudo mkfs.ext4 /dev/sdc3
40  sudo mkfs.ext4 /dev/sdc4

Montar los discos:
vagrant@VMParcial:~$ sudo mount /dev/sdc2 /mnt/sdc2
vagrant@VMParcial:~$ sudo mount /dev/sdc3 /mnt/sdc3
vagrant@VMParcial:~$ sudo mount /dev/sdc4 /mnt/sdc4

vagrant@VMParcial:~$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0 63.9M  1 loop /snap/core20/2318
loop1    7:1    0   87M  1 loop /snap/lxd/29351
loop2    7:2    0 38.8M  1 loop /snap/snapd/21759
loop3    7:3    0 74.2M  1 loop /snap/core22/1621
loop4    7:4    0  4.4M  1 loop /snap/tree/54
sda      8:0    0   40G  0 disk
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk
sdc      8:32   0   10G  0 disk
├─sdc1   8:33   0    1G  0 part /mnt/sdc1
├─sdc2   8:34   0    1G  0 part /mnt/sdc2
├─sdc3   8:35   0    1G  0 part /mnt/sdc3
└─sdc4   8:36   0    1G  0 part /mnt/sdc4
sdd      8:48   0    2G  0 disk
