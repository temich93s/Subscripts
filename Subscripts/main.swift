//
//  main.swift
//  Subscripts
//
//  Created by 2lup on 04.10.2021.
//

import Foundation

print("Hello, World!")


//MARK: Синтаксис сабскрипта
print("\n//Синтаксис сабскрипта")

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

struct TimesTable1 {
    let multiplier: Int
    subscript(index: Int) -> Int {
        get {
            return multiplier * index
        }
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable[3])

let threeTimesTable1 = TimesTable1(multiplier: 4)
print(threeTimesTable1[4])


//MARK: Опции сабскрипта
print("\n//Опции сабскрипта")

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int)  {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "!Index out of range")
            return grid[(row * column) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "!Index out of range")
            grid[(row * column) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)

matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
print(matrix[0, 1])
print(matrix[1, 0])

//let someValue = matrix[2, 2]

