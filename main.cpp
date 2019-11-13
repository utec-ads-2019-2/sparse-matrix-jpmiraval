#include <iostream>
#include "matrix.h"

using namespace std;

int main() {

    Matrix<int> *matrix = new Matrix<int>(10, 10);
    matrix->set(3, 3, 1);
    matrix->set(3,3,4);

    return EXIT_SUCCESS;
}

