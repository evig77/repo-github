//
//  main.swift
//  homework_6
//
//  Created by Игорь Евсиков on 05.02.2022.
//

import Foundation

// Создаем программу , которая создает задания для работников и их контролирует выполнение .
struct Queue <T> {
    var array = [T]()
    var count:Int {
        return array.count
    }
    mutating func add (_ item:T){
        array.append(item)
    }
    mutating func remove () -> T? {
        return array.isEmpty ? nil: array.removeFirst()
    }
}

var queue = Queue <String> ()
queue.add("some task")
queue.add ("some task")
queue.add ("some task")
queue.count

queue.add("new task")

print(queue)
print (queue.count)
