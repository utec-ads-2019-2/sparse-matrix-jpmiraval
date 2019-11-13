#ifndef SPARSE_MATRIX_NODE_H
#define SPARSE_MATRIX_NODE_H

template <typename T>
class Matrix;

template <typename T>
class Node {
protected:
    T data;
    int posX, posY;
    Node<T> *next, *down;

public:
    explicit Node(){};
    Node(T i , int posX, int posY): data(i), posX(posX), posY(posY){
        next = nullptr;
        down = nullptr;
    };

    ~Node(){
        delete this;
    }

    friend class Matrix<T>;
};

template <typename T>
class NodeCabecera {
protected:
    int pos;
    Node<T> *next, *down;


public:
    NodeCabecera(int indice){
        pos = indice;
        next = nullptr; down = nullptr;
    };

    friend class Matrix<T>;

};

#endif //SPARSE_MATRIX_NODE_H
