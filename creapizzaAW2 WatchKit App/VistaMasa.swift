//
//  VistaMasa.swift
//  creapizzaAW2
//
//  Created by Eusebio Hernandez Mares on 01/04/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import WatchKit
import Foundation


class VistaMasa: WKInterfaceController {
    var masa:String = ""
    var sw2:Int = 0
    var tampaso:String = ""
    var swpaso:Int = 0
    
    @IBAction func delgada(value: Bool) {
        if value {
            masa = "Delgada"
            print(masa)
            sw2 = sw2 + 1
        }
    }
    
    @IBAction func crujiente(value: Bool) {
        if value {
            masa = "Crujiente"
            print(masa)
           sw2 = sw2 + 1
        }
    }
    
    @IBAction func gruesa(value: Bool) {
        if value {
            masa = "Gruesa"
            print(masa)
            sw2 = sw2 + 1
        }
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pasamasa
        tampaso = c.tamclase
        swpaso = c.swclase
        
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

    @IBAction func selqueso() {
        if sw2 == 0 {
            masa = "no sel masa"
        }
        print ("antes de queso")
        print(tampaso)
        print(swpaso)
        print(masa)
        print(sw2)
        let valorcontexto = pasaqueso(tq: tampaso, sw: swpaso, ma: masa, sw2: sw2)
                pushControllerWithName("VistaQueso", context: valorcontexto)
        
   
    }
}
