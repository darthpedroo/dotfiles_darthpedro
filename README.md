# Dotfiles

## Como usar STOW

En la carpeta de los dotfiles debemos poner:

1) El nombre del paquete 
2) La ubicación de la carpeta que queremos sincronizar, tomando como punto de partida **$HOME**

Ejemplo 1: 

```bash
bashrc/.bashrc
```
Este paquete se llama bashrc y sincroniza el archivo que se encuentra en $HOME/.bashrc

Ejemplo 2: 

```bash
kitty/.config/kitty
```
Este paquete se llama kitty y sincroniza la carpeta "kitty" que se encuentra en .config/kitty. Sincroniza todos los archivos dentro de esa carpeta
