
# manim init project

#detect args
if [ $# -eq 0 ]; then
    proj_name="my_project"
elif [ $# -eq 1 ]; then
    proj_name=$1
else
    echo "Too many arguments"
    exit 1
fi

manim init project $proj_name
cd $proj_name