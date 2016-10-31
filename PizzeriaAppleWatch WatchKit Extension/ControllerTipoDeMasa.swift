//
//  ControllerTipoDeMasa.swift
//  PizzeriaAppleWatch
//
//  Created by César Omar Román Domínguez on 30/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import WatchKit
import Foundation


class ControllerTipoDeMasa: WKInterfaceController {

    var tamañoPizza:String = ""

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Pizza
        tamañoPizza = c.tamañoDeMasa
        
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

    @IBAction func seleccionarDelgada() {
        let valor=Pizza(tamaño: tamañoPizza, tipo: "Delgada")
        pushController(withName: "Queso", context: valor)
    }
    
    @IBAction func seleccionarCrujiente() {
        let valor=Pizza(tamaño: tamañoPizza, tipo: "Crujiente")
        pushController(withName: "Queso", context: valor)

    }
    @IBAction func seleccionarGruesa() {
        let valor=Pizza(tamaño: tamañoPizza, tipo: "Gruesa")
        pushController(withName: "Queso", context: valor)

    }
}
