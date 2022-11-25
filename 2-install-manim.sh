#detect args
if [ $# -eq 0 ]; then
    proj_name="manim-projects"
elif [ $# -eq 1 ]; then
    proj_name=$1
else
    echo "Too many arguments"
    exit 1
fi

mkdir $proj_name
cd $proj_name
# create virtual environment

if command -v python3 &> /dev/null
then
    echo "python3 command found"
    python3 -m venv .venv 
elif command -v python &> /dev/null
then
    echo "python command found"
    python -m venv .venv 
else
    echo "python command not found"
    exit


# This file must be used with "source bin/activate" *from bash*
# you cannot run it directly

deactivate () {
    # reset old environment variables
    if [ -n "${_OLD_VIRTUAL_PATH:-}" ] ; then
        PATH="${_OLD_VIRTUAL_PATH:-}"
        export PATH
        unset _OLD_VIRTUAL_PATH
    fi
    if [ -n "${_OLD_VIRTUAL_PYTHONHOME:-}" ] ; then
        PYTHONHOME="${_OLD_VIRTUAL_PYTHONHOME:-}"
        export PYTHONHOME
        unset _OLD_VIRTUAL_PYTHONHOME
    fi

    # This should detect bash and zsh, which have a hash command that must
    # be called to get it to forget past commands.  Without forgetting
    # past commands the $PATH changes we made may not be respected
    if [ -n "${BASH:-}" -o -n "${ZSH_VERSION:-}" ] ; then
        hash -r 2> /dev/null
    fi

    if [ -n "${_OLD_VIRTUAL_PS1:-}" ] ; then
        PS1="${_OLD_VIRTUAL_PS1:-}"
        export PS1
        unset _OLD_VIRTUAL_PS1
    fi

    unset VIRTUAL_ENV
    unset VIRTUAL_ENV_PROMPT
    if [ ! "${1:-}" = "nondestructive" ] ; then
    # Self destruct!
        unset -f deactivate
    fi
}

# unset irrelevant variables
deactivate nondestructive

# get path of the current script
VIRTUAL_ENV="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#append project name and .venv to path
VIRTUAL_ENV="$VIRTUAL_ENV/.venv"
echo $VIRTUAL_ENV

export VIRTUAL_ENV

_OLD_VIRTUAL_PATH="$PATH"
PATH="$VIRTUAL_ENV/bin:$PATH"
export PATH

# unset PYTHONHOME if set
# this will fail if PYTHONHOME is set to the empty string (which is bad anyway)
# could use `if (set -u; : $PYTHONHOME) ;` in bash
if [ -n "${PYTHONHOME:-}" ] ; then
    _OLD_VIRTUAL_PYTHONHOME="${PYTHONHOME:-}"
    unset PYTHONHOME
fi

if [ -z "${VIRTUAL_ENV_DISABLE_PROMPT:-}" ] ; then
    _OLD_VIRTUAL_PS1="${PS1:-}"
    PS1="(.venv) ${PS1:-}"
    export PS1
    VIRTUAL_ENV_PROMPT="(.venv) "
    export VIRTUAL_ENV_PROMPT
fi

# This should detect bash and zsh, which have a hash command that must
# be called to get it to forget past commands.  Without forgetting
# past commands the $PATH changes we made may not be respected
if [ -n "${BASH:-}" -o -n "${ZSH_VERSION:-}" ] ; then
    hash -r 2> /dev/null
fi

#detect if pip  or pip3 command is available

if command -v pip3 &> /dev/null
then
    echo "pip3 command found"
    pip3 install manim
elif command -v pip &> /dev/null
then
    echo "pip command found"
    pip install manim
else
    echo "pip command not found"
    exit

#move create_new_proj.sh to the parent directory
cp ../create-new-proj.sh ./
chmod u+x create-new-proj.sh