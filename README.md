
# kicad-docker

Simple docker setup for KiCAD. This has only been tested on a Windows host.

This setup binds the current directory to the home directory of the user in the container. KiCAD will use this directory to store its configuration files and projects. You can modify `.gitignore` to keep your configuration files in the repository or to ignore them.


## Usage

1. Install Docker Desktop for Windows.
2. Clone this repository.
3. Open a terminal in the cloned directory.
4. Run the following command to start KiCAD:
   ```bash
   ./docker_launch.sh
   ```

