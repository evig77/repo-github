//
//  main.swift
//  dz_4
//
//  Created by Игорь Евсиков on 29.01.2022.
//

import Foundation

enum bodyType {
    case sedan, suv
}

enum typeOfdrive {
    case allwheels, rear
}
enum color {
    case red, blue,grey,white
}


struct someCar {
    
    
    let brand:String
    let model:String
    
}
class anotherCar {
    var name : someCar
    var typeOfdrive: typeOfdrive
    var bodyType: bodyType
    var color: color
    init (name: someCar, typeOfdrive:typeOfdrive,bodyType:bodyType,color:color){
        self.name = name
        self.typeOfdrive = typeOfdrive
        self.bodyType = bodyType
        self.color = color
        
    }
    func carInfo (){
        print ("Here is information about my \(name) :typeOfdrive \(typeOfdrive), color \(color), bodytype \(bodyType)")

    }
}
var car1 = anotherCar(name:.init(brand: "Bmw", model: "M5"), typeOfdrive: .allwheels, bodyType: .sedan, color: .white)
print (car1.carInfo())

struct informationCar{
    var dateRelease: Int
    var dateSell: Int
    var dateBuy:Int
}
class profileCar:anotherCar{
    var informationCar: informationCar
    init (name: someCar, typeOfdrive: typeOfdrive, bodyType: bodyType, color: color, informationCar: informationCar){
        self.informationCar = informationCar
        super.init( name:name, typeOfdrive: typeOfdrive, bodyType: bodyType, color: color )
    }
    
    override func carInfo() {
        print ("Here is information about \(informationCar)")
    }
        
    }

var car2 = profileCar (name: .init(brand: "BMW", model: "M5"), typeOfdrive: .allwheels, bodyType: .sedan, color: .white, informationCar: .init(dateRelease: 2020, dateSell: 2022, dateBuy: 2020))
print (car2.carInfo())
