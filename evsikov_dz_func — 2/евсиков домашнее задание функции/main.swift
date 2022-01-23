//
//  main.swift
//  евсиков домашнее задание функции
//
//  Created by Игорь Евсиков on 18.01.2022.
//
// 1 задание
import Foundation
func myFirst (number:Int) {
    let y1 = number
    let y2 = y1%2
    if y2 % 2 == 0 {
        print("Четное")
        
    }
    else {
            print ("Нечетное")
        }
}
    myFirst(number: 10)

// 2 задание
func mySecond (number2:Int) {
   let x1 = number2
   let x2 = x1%3
  if x2 % 3 == 0 {
       print ("Делится без остатка")
  }
    else {
        print ("Делится с остатком")
 }
}
   mySecond(number2: 8)
    

// 3 заданиие
var array = [Int] ()
var i = 0
while i < 100 {
    array.append(i+1)
    i+=1
}
print (array)
 
// 4 задание
for element in array where (element % 2 == 0 ) || (element % 3 == 0) {
    array.remove (at:(array.firstIndex (of:element)!))
}
    
print (array)

// 5 задание

func fibonacci (n: Int) -> (Decimal) {
    if (n<3) {
        return 1
    } else {
        var z1 : Decimal = 1, z2 : Decimal = 1, z:Decimal
        for _ in 3...n {
            z = z1+z2
            z1 = z2
            z2 = z
        }
        return z2
    }
}

var fibArray = [Decimal]()
fibArray.append(0)
var n  = 100
for i in 1...n {
    fibArray.append(fibonacci(n: i))
}
print(fibArray)
