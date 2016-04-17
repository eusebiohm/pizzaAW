//
//  InterfaceController.swift
//  creapizzaAW2 WatchKit Extension
//
//  Created by Eusebio Hernandez Mares on 01/04/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var tamano:String = ""
    var sw1:Int = 0
    
    @IBAction func chica(value: Bool) {
        tamano = "Chica"
        sw1 = sw1 + 1
        print(tamano)
        print(sw1)
        
    }
    
    @IBAction func mediana(value: Bool) {
        tamano = "Median"
        sw1 = sw1 + 1
        print(tamano)
        print(sw1)
       
    }
    
    @IBAction func grande(value: Bool) {
        tamano = "Grande"
        sw1 = sw1 + 1
        print(tamano)
        print(sw1)
        
    }
       override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

    @IBAction func tipomasa() {
        if (sw1 == 0) || (sw1 > 1 ){
            sw1 = 0
                       
            
            print ("selecciona solamente 1")
          
          tamano = "error tamaño"}
        
        let valorcontexto = pasamasa(t:tamano, s0:sw1)
            print("va a masa")
            print(tamano)
            print(sw1)
            pushControllerWithName("VistaMasa", context: valorcontexto)
        }
        
        }


