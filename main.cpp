#include <iostream>
#include "matrix.h"

using namespace std;

int main() {

    Matrix<int> *matrix = new Matrix<int>(10, 10);
    matrix->set(3, 3, 1);
    matrix->set(1,4,4);
    matrix->set(6,9,4);
    matrix->set(8,1,4);
    Matrix<int> *matrix2 = new Matrix<int>(10, 10);
    matrix2->set(3, 3, 1);
    matrix2->set(1,4,4);
    matrix2->set(6,9,4);
    matrix2->set(8,1,4);

    auto matrix3 = *matrix2*(*matrix);


    return EXIT_SUCCESS;
}

