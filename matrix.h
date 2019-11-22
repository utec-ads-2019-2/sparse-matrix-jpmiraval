#ifndef SPARSE_MATRIX_MATRIX_H
#define SPARSE_MATRIX_MATRIX_H

#include <stdexcept>
#include <iomanip>
#include <vector>
#include "node.h"
#include "map"

using namespace std;

template <typename T>
class Matrix {
private:
    vector<NodeCabecera<T>*> x;
    vector<NodeCabecera<T>*> y;
    unsigned rows, columns;

    Node<T>* Encontrar(int filas, int columnas){
        NodeCabecera<T>* temporal = x[filas];
        if(temporal->down) {
            auto temp = temporal->down;
            if(temp){
                do{
                    if(temp->posY == columnas){
                        return temp;
                    }
                    if(temp->down)
                    temp = temp->down;
                }while(temp->posY <= columnas and temp->down != nullptr);
                return nullptr;
            }
            return nullptr;

        }
        return nullptr;
    }

    Node<T>* FindAntesdeFilas(int filas, int columnas){
        NodeCabecera<T>* Cabecera = y[columnas];

        Node<T>* iterador = new Node<T>;
        if(Cabecera->next == nullptr){
            return nullptr;
        }
        auto temp_past = Cabecera->next;
        if(temp_past->posX == filas){
            return nullptr;
        }
        if(temp_past->next){
            auto temp_present = temp_past->next;
            if(temp_present->next){
                while(temp_present->posX < filas &&temp_present!=nullptr){
                    temp_past = temp_present;
                    temp_present = temp_present->next;
                }
                return temp_past;

            }else{
                return temp_present;
            }

        }else{
            return temp_past;
        }
    };
    Node<T>* FindAntesdeColumnas(int filas, int columnas){
        NodeCabecera<T>* Cabecera = x[filas];
        Node<T>* iterador = new Node<T>;
        if(Cabecera->down == nullptr){
            return nullptr;
        }
        auto temp_past = Cabecera->down;
        if(temp_past->posY == columnas){
            return nullptr;
        }
        if(temp_past->down){
            auto temp_present = temp_past->down;
            if(temp_present->next){
                while(temp_present->posY < columnas &&temp_present!=nullptr){
                    temp_past = temp_present;
                    temp_present = temp_present->down;
                }
                return temp_past;

            }else{
                return temp_present;
            }

        }else{
            return temp_past;
        }
    };


public:
    Matrix(unsigned rows, unsigned columns):rows(rows), columns(columns){
        for(int i = 0; i < rows; i++){
            x.push_back(new NodeCabecera<T>(i));
        }
        for(int i = 0; i < columns; i++){
            y.push_back(new NodeCabecera<T>(i));
        }
    };

    void set(unsigned filas, unsigned columnas, T data){
        // Si data es 0?
        if(filas < rows && columnas < columns){
            Node<T>* newNode = new Node<T>(data, filas, columnas);
            auto nodito = Encontrar(filas, columnas);
            if(nodito){
                    nodito->data = data;
            }else{
                auto NodoAnteriorEnFila = FindAntesdeFilas(filas, columnas);
                auto NodoAnterirEnColumna = FindAntesdeColumnas(filas, columnas);
                if(NodoAnteriorEnFila){
                    if(NodoAnteriorEnFila->next){
                        newNode->next = NodoAnteriorEnFila->next;
                        NodoAnteriorEnFila->next = newNode;
                    }else{
                        NodoAnteriorEnFila->next = newNode;
                        newNode->next = nullptr;
                    }
                }else{
                    NodeCabecera<T> *Cabecera = y[columnas];
                    if(Cabecera->next){
                        newNode->next = Cabecera->next;
                        Cabecera->next = newNode;
                    }else{
                        Cabecera->next = newNode;
                        newNode->next = nullptr;
                    }
                }
                if(NodoAnterirEnColumna){
                    if(NodoAnterirEnColumna->down){
                        newNode->down = NodoAnterirEnColumna->down;
                        NodoAnterirEnColumna->down = newNode;
                    }else{
                        NodoAnterirEnColumna->down = newNode;
                        newNode->down = nullptr;
                    }
                }else{
                    NodeCabecera<T>* Cabecera = x[filas];
                    if(Cabecera->down){
                        newNode->down = Cabecera->down;
                        Cabecera->down = newNode;
                    }else{
                        Cabecera->down = newNode;
                        newNode->down = nullptr;
                    }
                }
            }
            }
    };

    T operator()(int filas, int columnas){
        if(filas >= rows || columnas >= columns ){
            throw out_of_range("Índices muy grandes");
        }else{
           Node<T>* temp = Encontrar(filas, columnas);
            if(temp != nullptr)
                return temp->data;
            else
                return 0;
        }

    }

    // Utilizar los métodos de la matriz hace que las operaciones sean más lentas
    Matrix<T> operator*(T scalar) {
        Matrix<T> Matriz2(rows,columns);
        for (int i = 0; i < rows; ++i) {
            for (int j = 0; j < columns; ++j) {
                if(Encontrar(i,j)){
                    auto value = (*this).operator()(i,j);
                    if(value != 0)
                        Matriz2.set(i,j,value * scalar);
                }
            }
        }
        return Matriz2;
    };

    Matrix<T> operator*(Matrix<T> other) {
        Matrix<T> Matriz2(rows,other.columns);
        if(other.rows != columns )
            throw out_of_range("Programa incapaz de multiplicar matrices de diferentes dimensiones uwu");
        else{
            for(int i=0; i<rows; i++) {
                for (int k = 0; k < other.columns; k++) {
                    T cont = 0;
                    for (int q = 0; q < columns; q++)
                        if(Encontrar(i, q))
                            if(other.Encontrar(q,k)){
                                cont += operator()(i, q) * other.operator()(q, k);
                                Matriz2.set(i,k,cont);
                            }


                }
            }
            return Matriz2;
        }
    };

    Matrix<T> operator+(Matrix<T> other) {
        if (rows != other.rows || columns != other.columns)
            throw out_of_range("Programa incapaz de sumar matrices de diferentes dimensiones uwu");
        Matrix<T> Matriz2(rows,columns);

        for (int i = 0; i < rows; ++i) {
            for (int k = 0; k < columns; ++k){
                if(Encontrar(i, k))
                    if(other.Encontrar(i,k)){
                        T suma =  this->operator()(i,k)+other.operator()(i,k);
                        Matriz2.set(i,k,suma);
                    }

            }
        }
        return Matriz2;
        }

    Matrix<T> operator-(Matrix<T> other){
        if (rows != other.rows || columns != other.columns)
            throw out_of_range("Programa incapaz de restar matrices de diferentes dimensiones uwu");
        Matrix<T> Matriz2(rows,columns);

        for (int i = 0; i < rows; ++i) {
            for (int k = 0; k < columns; ++k){
                if(Encontrar(i,k))
                    if(other.Encontrar(i,k)){
                        T suma =  this->operator()(i,k)-other.operator()(i,k);
                        Matriz2.set(i,k,suma);
                    }
            }
        }
        return Matriz2;
    }

    Matrix<T> transpose() {
        Matrix<T> Matriz2(columns,rows);
        for(auto i=0;i<rows;i++){
            for(auto y=0;y<columns;y++){
                Matriz2.set(y,i,this->operator()(i,y));
            }
        }
        return Matriz2;
    };

    void print() {
        for(auto i=0;i<rows;i++){
            for(auto k=0;k<columns;k++)
                if(Encontrar(i,k)){
                    cout<<this->operator()(i,k)<<" ";
                }

            cout<<endl;
        }
    };

    // Falta
    ~Matrix(){};
};

#endif //SPARSE_MATRIX_MATRIX_H