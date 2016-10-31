//
//  ControllerTipoDeQueso.swift
//  PizzeriaAppleWatch
//
//  Created by César Omar Román Domínguez on 30/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import WatchKit
import Foundation


class ControllerTipoDeQueso: WKInterfaceController {

    var tipoDeMasa:String = ""
    var tamañoDePizza:String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Pizza
        tipoDeMasa = c.tipoDeMasa
        tamañoDePizza = c.tamañoDeMasa
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func seleccionarMozarela() {
        let valor=Pizza(tamaño: tamañoDePizza, tipo: tipoDeMasa, queso: "Mozarela")
        pushController(withName: "Ingredientes", context: valor)
    }
    
    @IBAction func seleccionarCheddar() {
        let valor=Pizza(tamaño: tamañoDePizza, tipo: tipoDeMasa, queso: "Cheddar")
        pushController(withName: "Ingredientes", context: valor)
    }

    @IBAction func seleccionarParmesano() {
        let valor=Pizza(tamaño: tamañoDePizza, tipo: tipoDeMasa, queso: "Parmesano")
        pushController(withName: "Ingredientes", context: valor)
    }

    @IBAction func seleccionarSinQueso() {
        let valor=Pizza(tamaño: tamañoDePizza, tipo: tipoDeMasa, queso: "Sin Queso")
        pushController(withName: "Ingredientes", context: valor)
    }
    
    
}
