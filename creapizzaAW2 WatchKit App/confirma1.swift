//
//  confirma1.swift
//  creapizzaAW2
//
//  Created by Eusebio Hernandez Mares on 14/04/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import WatchKit
import Foundation


class confirma1: WKInterfaceController {
    var contador:Int = 0
    

    @IBOutlet var ltamano: WKInterfaceLabel!
    
    @IBOutlet var lmasa: WKInterfaceLabel!
    
    @IBOutlet var lqueso: WKInterfaceLabel!
    
    @IBOutlet var lingre1: WKInterfaceLabel!
    
    @IBOutlet var lingre2: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pconfirma1
        ltamano.setText(String(c.pctamingre1))
        lmasa.setText(String(c.pcmasaing1))
        lqueso.setText(String(c.pcquesoing1))
        contador = c.pccont
        print("estoy en confirmacion")
        print (contador)
        if contador == 0 {
            lingre1.setText("NO SEL INGRE")
            lingre2.setText("")
        }
        if c.pcingre1 == "" && contador > 0{}
            else {
                lingre1.setText(String(c.pcingre1))
            }
        if c.pcingre2 == "" && contador > 0{
            
        }
        else {
            lingre2.setText(String(c.pcingre2))
        }

    }
    
        
        // Configure interface objects here.


    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
