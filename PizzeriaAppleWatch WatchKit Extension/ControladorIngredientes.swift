//
//  ControladorIngredientes.swift
//  PizzeriaAppleWatch
//
//  Created by César Omar Román Domínguez on 30/10/16.
//  Copyright © 2016 César Omar Román Domínguez. All rights reserved.
//

import WatchKit
import Foundation


class ControladorIngredientes: WKInterfaceController {

    var tipoDeMasa:String = ""
    var tamañoDePizza:String = ""
    var tipoDeQueso:String = ""
    var vJamon:String = ""
     var vPeperroni:String = ""
     var vPavo:String = ""
     var vSalchica:String = ""
     var vCebolla:String = ""
     var vChamp:String = ""
    
    
    
    @IBOutlet var jamonValor: WKInterfaceSwitch!
    @IBOutlet var peperroniValor: WKInterfaceSwitch!
    @IBOutlet var pavoValor: WKInterfaceSwitch!
    @IBOutlet var salchicaValor: WKInterfaceSwitch!
    @IBOutlet var cebollaValor: WKInterfaceSwitch!
    @IBOutlet var champinonesValores: WKInterfaceSwitch!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Pizza
        tamañoDePizza = c.tamañoDeMasa
        tipoDeMasa = c.tipoDeMasa
        tipoDeQueso = c.tipoDeQueso
        
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
    
    var total:Int = 0
    
    @IBAction func seleccionarJamon(_ value: Bool) {
        completo(total: self.total)
        if(self.total>=6){
            jamonValor.setOn(false)
            self.total = self.total - 1
        }
        
        if value{
            vJamon = "Jamón"
        }
        
        if !value {
            self.total = self.total - 1
            vJamon = ""
        }
    }
    
    @IBAction func seleccionarPepperoni(_ value: Bool) {
     completo(total: self.total)
        if(self.total>=6){
            peperroniValor.setOn(false)
            self.total = self.total - 1
        }
        
        if value{
            vPeperroni = "Pepperoni"
        }
        
        if !value {
            self.total = self.total - 1
            vPeperroni = ""
        }
    }
    
    @IBAction func seleccionarPavo(_ value: Bool) {
     completo(total: self.total)
        if(self.total>=6){
            pavoValor.setOn(false)
            self.total = self.total - 1
        }
        
        if value{
            vPavo = "Pavo"
        }
        
        if !value {
            self.total = self.total - 1
            vPavo = ""
        }
    }
    
    @IBAction func seleccionarSalchica(_ value: Bool) {
     completo(total: self.total)
        if(self.total>=6){
            salchicaValor.setOn(false)
            self.total = self.total - 1
        }
        
        if value{
            vSalchica = "Salchica"
        }
        
        if !value {
            self.total = self.total - 1
            vSalchica = ""
        }
        
    }
    
    @IBAction func seleccionarCeboll(_ value: Bool) {
     completo(total: self.total)
        if(self.total>=6){
            cebollaValor.setOn(false)
            self.total = self.total - 1
        }
        
        if value{
            vCebolla = "Cebolla"
        }
        
        if !value {
            self.total = self.total - 1
            vCebolla = ""
        }
    }
    
    @IBAction func seleccionarChampi(_ value: Bool) {
     completo(total: self.total)
        if(self.total>=6){
            champinonesValores.setOn(false)
            self.total = self.total - 1
            
        }
        
        if value{
            vChamp = "Champiñones"
        }
        
        if !value {
            self.total = self.total - 1
            vChamp = ""
        }
    }
    
    func completo(total:Int){
        if (total + 1)<=6{
            let total = total + 1
            self.total = total
        }else{
            self.total = total
        }
    }
    
    func ingredientes(){
    
    }
    
    
    
    @IBAction func confirmar() {
        let valor=Pizza(tamaño: tamañoDePizza, tipo: tipoDeMasa, queso: tipoDeQueso, i1: vJamon, i2: vPeperroni, i3: vPavo, i4: vSalchica, i5: vCebolla, i6: vChamp)
        pushController(withName: "confirmar", context: valor)        
    }
  
    
    
    
    

}
