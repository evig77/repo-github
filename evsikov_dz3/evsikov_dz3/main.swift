//
//  main.swift
//  evsikov_dz3
//
//  Created by Игорь Евсиков on 23.01.2022.
//

import SwiftUI
import Cocoa

enum engineState {
    case start, stop
}

enum windowState {
    case open, close
}

enum trunkState {
    case full, empty
}

struct someCar {
    
    
    let brand:String
    let model:String
    var color:String
    mutating func changeColor (c:String){
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "blue":
            self.color = "blue"
        case "red":
            self.color = "red"
        default: print ("Error")
            
            
            
        }
    }
    let realese:Int
    var trunkVolume :Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume>0) && (trunkVolume != 0) && (newValue < trunkVolume){
                _ = trunkVolume - newValue
                print ("\(brand) \(model) trunk free : (space)")

            }
            else  { print (" \(brand) \(model)\trunk is full.")}
        }
    }
    var engineState:engineState {
        willSet {
            if newValue == .start {
                print   ("\(brand)\(model) engine is on")
            } else { print ("\(brand)\(model) engine is off")}
        }
    }
    var windowState : windowState {
            willSet {
                if newValue == .open {
                    print("\(brand)\(model) windows are open")
                } else { print("\(brand)\(model) windows are close") }
                       }
}
    var trunkState : trunkState
        mutating func emptyTrunck() {
            self.trunkState = .empty
            print ("\(brand)\(model) trunck is empty")
    
    }
}


struct someTruck {
    
    
    let brand:String
    let model:String
    var color:String
    mutating func changeColor (c:String){
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "blue":
            self.color = "blue"
        case "red":
            self.color = "red"
        default: print ("Error")
            
            
            
        }
    }
    let realese:Int
    var bodyVolume :Double {
        willSet {
            if (trunkState == .empty) && (bodyVolume>0) && (bodyVolume != 0) && (newValue < bodyVolume){
                _ = bodyVolume - newValue
                print ("\(brand) \(model) trunk free : (space)")

            }
            else  { print ("\(brand) \(model)\trunk is full.")}
        }
    }
    var engineState:engineState {
        willSet {
            if newValue == .start {
                print   ("\(brand)\(model) engine is on")
            } else { print ("\(brand)\(model) engine is off")}
        }
    }
    var windowState : windowState {
            willSet {
                if newValue == .open {
                    print("\(brand)\(model) windows are open")
                } else { print("\(brand)\(model) windows are close") }
                       }
}
    var trunkState : trunkState
        mutating func emptyTrunck() {
            self.trunkState = .empty
            print ("\(brand)\(model) trunck is empty")
    
    }
}


var car1 = someCar(brand: "Mercedes", model: "C63amg", color: "red", realese: 2020, trunkVolume: 720, engineState: .start, windowState: .open, trunkState: .full)
var car2 = someCar (brand: "BMW", model: "M5", color: "blue", realese: 2020, trunkVolume: 560, engineState: .start, windowState: .close, trunkState: .full)
    
var truck1 = someTruck (brand: "Iveco", model: "Lusia", color: "white", realese: 2018, bodyVolume: 1200, engineState: .start, windowState: .close, trunkState: .full)
var truck2 = someTruck (brand: "Kamaz", model: "Bichok", color: "red", realese: 2020, bodyVolume: 2000, engineState: .start, windowState: .open, trunkState: .full)
car1.engineState = .start
car1.trunkVolume = 1000
car1.changeColor(c: "red")
car2.trunkVolume = 890.0
car2.emptyTrunck()
car2.trunkVolume = 80.9
car2.windowState = .open
car2.changeColor(c: "black")

truck1.engineState = .stop
truck1.windowState = .close
truck2.engineState = .stop
truck2.bodyVolume = 5678908

print ("Information about my car: brand&model: \(car1.brand)\(car1.model), release: \(car1.realese), color: \(String(describing: car1.color)), free trunkVolume: \(car1.trunkVolume), engine is \(car1.engineState)")
