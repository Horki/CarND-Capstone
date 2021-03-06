echo "Release build"

ver=$(pip freeze | grep -i pillow)

if [ $ver != "Pillow==6.2.1" ]; then
    echo "Upgrading Pillow due to https://github.com/udacity/CarND-Capstone/issues/317 err!"
    pip install Pillow==6.2.1
fi

catkin_make clean && catkin_make -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS=-Ofast 
echo "Source setup"
source devel/setup.sh
