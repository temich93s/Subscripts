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
