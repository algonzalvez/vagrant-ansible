# Clúster con Vagrant y Ansible
## Clúster compuesto por tres máquinas virtuales (2 webserver y 1 nameserver)

Partir de la instalación previa de VirtualBox, vagrant(Version=2.2.9) y ansible(version=2.9.9).

El escenario con las tres máquinas es el siguiente:

* dns: 192.168.10.100 <- Servidor DNS (bind9)
* nodo1: 192.168.10.101 <- Servidor web (nginx)
* nodo2: 192.168.10.102 <- Servidor web (nginx)


## Desplegar el escenario

Ejecutar el comando para que vagrant lea el fichero Vagrantfile:

```
$ vagrant up
```

Esto despliega y configura los tres nodos.

## Prueba de funcionamiento

Se puede comprobar que se realiza el balanceo www.algonzalvez.com entre nodo1 y nodo2,
repitiendo la consulta DNS con dig:
```
$ dig @192.168.10.100 www.algonzalvez.com
```
