# Steps to Create Manim Environment

## Steps
1. Install dependencies (OSX/Linux)
    ```terminal
    sudo bash 1-install-deps.sh
    ```
    If this doesnt work manually install the dependencies.

    **Linux**:
    - ffmpeg
    - sox
    - cairo
    - pango
    - latex

    **OSX**:
    - ffmpeg
    - py3cairo
    - pango
    - scipy
    - mactex


2. Install manim in a new environment
    ```terminal
    bash 2-install-manim.sh <name-of-manim-env>
    ```

3. Create a new project

    Navigate into the manim environment you created
    ```terminal
    cd <name-of-manim-env>
    ```
    Run script to create a new project
    ```terminal
    bash create-new-proj.sh <project-name>
    ```
4. Open in VScode (optional)
    ```terminal
    code <project-name>
    ```
    or
    ```terminal
    cd <project-name>
    code .
    ```
    or 

    Open VScode from desktop and navigate to *file>Open Folder* and then open the folder you named i.e. (project-name)
