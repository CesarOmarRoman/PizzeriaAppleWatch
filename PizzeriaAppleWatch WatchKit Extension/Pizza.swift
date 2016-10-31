//
//  Pizza.swift
//  PizzeriaAppleWatch
//
//  Created by César Omar Román Domínguez on 30/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    
    var tipoDeMasa:String = ""
    var tamañoDeMasa:String = ""
    var ingredientes = ["","","","","",""]
    var tipoDeQueso:String = ""
    
    init(tamaño:String){
        tamañoDeMasa = tamaño
    }
    
    init(tamaño:String, tipo:String){
        tamañoDeMasa = tamaño
        tipoDeMasa = tipo
    }
    
    init(tamaño:String, tipo:String, queso:String){
        tamañoDeMasa = tamaño
        tipoDeMasa = tipo
        tipoDeQueso = queso
    }
    
    init(tamaño:String, tipo:String, queso:String,i1:String, i2:String, i3:String,i4:String, i5:String, i6:String){
        tamañoDeMasa = tamaño
        tipoDeMasa = tipo
        tipoDeQueso = queso
        ingredientes = [i1,i2,i3,i4,i5,i6]
    }

}
