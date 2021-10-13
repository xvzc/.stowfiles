# Instruction

## Dependencies

### i3-gaps
```bash
 $ sudo add-apt-repository -y ppa:regolith-linux/stable
 $ sudo apt install i3-gaps
```

### OpenGL
```bash
 $ sudo apt-get update
 $ sudo apt-get install libglu1-mesa-dev freeglut3-dev mesa-common-dev
```

### compton
A compositor that gives each window a buffer to render to, that helps with having a smooth desktop experience.  
This is neccesary to make Terminal transparent if the terminal supports transparet background.
```bash
 $ sudo apt-get install compton compton-conf
```
### i3themer

### py3status

### double-width glyphs supports for urxvt
[Repo](https://github.com/powerman/wcwidth-icons.git)

Add below to .bashrc
```
export LD_PRELOAD=/usr/lib/libwcwidth-icons.so
```
