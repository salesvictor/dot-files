function comp_cpp() {
  g++ -g -O2 --std=gnu++14 -Wall -Wfatal-errors -pedantic $1 -o ${1%.*} -fopenmp -lpthread
}

function comp_opencv() {
  {
    echo "cmake_minimum_required( VERSION 2.8 )"
    echo "project( ${1%.*} )"
    echo "find_package( OpenCV REQUIRED )"
    echo "include_directories( \${OPENCV_INCLUDE_DIRS} )"
    echo "add_executable( ${1%.*} $1 )"
    echo "target_link_libraries( ${1%.*} \${OpenCV_LIBS} )"
  } > CMakeLists.txt

  cmake .
  make
}

function comp_cv() {
  {
    echo "cmake_minimum_required( VERSION 2.8 )"
    echo ""
    echo "project( ${1%.*} )"
    echo ""
    echo "find_package( OpenCV REQUIRED )"
    echo "find_package( dlib REQUIRED )"
    echo "include_directories( \${OPENCV_INCLUDE_DIRS} )"
    echo ""
    echo "add_executable( ${1%.*} $1 )"
    echo ""
    echo "target_link_libraries( ${1%.*} \${OpenCV_LIBS} dlib::dlib )"
    echo ""
    echo "install( TARGETS ${1%.*} DESTINATION bin )"
  } > CMakeLists.txt

  mkdir build
  cd build

  cmake .. -DCMAKE_INSTALL_PREFIX=../install
  make
  make install

  cd ..
}

function count_work() {
  find . -type d \
  \( -path ./build -o -path ./.git -o -path ./src/libs \) \
  -prune -o -type f \
  \( -name '*.txt' -o -name '*.md' -o -name '*.cc' -o -name '*.h' \) -print0 | \
  wc -l --files0-from=-
}
