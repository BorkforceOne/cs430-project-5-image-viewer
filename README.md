# CS430 Project 5 - Image Viewer

This project implements a simple PPM image viewer using OpenGL allowing for some basic image manipulation through translation, scale, rotation, and shear operations. The project was built on Mac OS 10.12.1 using XCode 8.1 with GLFW version 3.2.1. The project includes compiled GLFW libraries for simplicity sake. The code should run on Windows provided a few changes in OpenGL initialization and the addition of a glew library.

### Building

```sh
$ git clone https://github.com/bjg96/cs430-project-5-image-viewer
$ cd cs430-project-5-image-viewer
$ make
```

### Usage

```sh
$ ./ezview <input.ppm>
$         input.ppm: The input image PPM file
$
$         Example: ezview test.ppm
$
$         Controls:
$                                WASD - Translation
$                                TFGH - Scale
$                                IJKL - Shear
$                                  QE - Rotation
$                 Arrow Up/Arrow Down - Scale uniform
$                      Mouse Scroll Y - Scale uniform by scroll amount
```