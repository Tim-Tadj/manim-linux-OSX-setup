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
python -m venv .venv


# activate virtual environment
echo "Activating virtual environment"
echo $(pwd)
chmod u+x .venv/bin/activate
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip3 install pycairo

#install manim
python -m pip install manim

#move create_new_proj.sh to the parent directory
mv ../create-new-proj.sh ./