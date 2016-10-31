//
//  ControladorConfirmar.swift
//  PizzeriaAppleWatch
//
//  Created by César Omar Román Domínguez on 30/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import WatchKit
import Foundation


class ControladorConfirmar: WKInterfaceController {

    var tipoDeMasa:String = ""
    var tamañoDePizza:String = ""
    var tipoQueso:String = ""
    var ingredientesVariable = ["","","","","",""]
    
    
    @IBOutlet var tamañoPizza: WKInterfaceLabel!
    @IBOutlet var tipoMasa: WKInterfaceLabel!
    @IBOutlet var tipoDeQueso: WKInterfaceLabel!
    @IBOutlet var i1: WKInterfaceLabel!
    @IBOutlet var i2: WKInterfaceLabel!
    @IBOutlet var i3: WKInterfaceLabel!
    @IBOutlet var i4: WKInterfaceLabel!
    @IBOutlet var i5: WKInterfaceLabel!
    @IBOutlet var i6: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Pizza
        tamañoDePizza = c.tamañoDeMasa
        tipoDeMasa = c.tipoDeMasa
        tipoQueso = c.tipoDeQueso
        ingredientesVariable = c.ingredientes
        
        tamañoPizza.setText(tamañoDePizza)
        tipoMasa.setText(tipoDeMasa)
        tipoDeQueso.setText(tipoQueso)
        
        if(ingredientesVariable[0].isEmpty){
            i1.setHidden(true)
        }else{
            i1.setHidden(false)
            i1.setText(ingredientesVariable[0])
        }
        
        if(ingredientesVariable[1].isEmpty){
            i2.setHidden(true)
        }else{
            i2.setHidden(false)
            i2.setText(ingredientesVariable[1])
        }
        
        if(ingredientesVariable[2].isEmpty){
            i3.setHidden(true)
        }else{
            i3.setHidden(false)
            i3.setText(ingredientesVariable[2])
        }
        
        if(ingredientesVariable[3].isEmpty){
            i4.setHidden(true)
        }else{
            i4.setHidden(false)
            i4.setText(ingredientesVariable[3])
        }
        
        if(ingredientesVariable[4].isEmpty){
            i5.setHidden(true)
        }else{
            i5.setHidden(false)
            i5.setText(ingredientesVariable[4])
        }
        
        if(ingredientesVariable[5].isEmpty){
            i6.setHidden(true)
        }else{
            i6.setHidden(false)
            i6.setText(ingredientesVariable[5])
        }
        
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
   

}
