//
//  InterfaceController.swift
//  PizzeriaAppleWatch WatchKit Extension
//
//  Created by César Omar Román Domínguez on 30/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    @IBOutlet var tamañoPizza: WKInterfaceButton!
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionarChica() {
       let valor=Pizza(tamaño: "Chica")
        pushController(withName: "TipoDeMasa", context: valor)
        
    }
    @IBAction func seleccionarMediana() {
        let valor=Pizza(tamaño: "Mediana")
        pushController(withName: "TipoDeMasa", context: valor)
    }
    
    @IBAction func seleccionarGrande() {
        let valor=Pizza(tamaño: "Grande")
        pushController(withName: "TipoDeMasa", context: valor)
    }
    
    
}
