//
//  VistaQueso.swift
//  creapizzaAW2
//
//  Created by Eusebio Hernandez Mares on 04/04/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import WatchKit
import Foundation


class VistaQueso: WKInterfaceController {
    var queso:String = ""
    var swqueso:Int = 0
    var tamqueso:String = ""
    var swtam:Int = 0
    var masaqueso:String = ""
    var swmasa:Int = 0
    
    @IBAction func mozarela(value: Bool) {
        if value {
        queso = "Mozarela"
            swqueso = swqueso + 1
            print(queso)
        }
    }
    
    @IBAction func cheddar(value: Bool) {
        if value {
            queso = "Cheddar"
            swqueso = swqueso + 1
            print(queso)
        }
    }
    
    @IBAction func parmesano(value: Bool) {
        if value {
            queso = "Parmesano"
            swqueso = swqueso + 1
            print(queso)
        }
    }
    
    @IBAction func sinqueso(value: Bool) {
        queso = "Sin Queso"
        swqueso = swqueso + 1
        print(queso)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pasaqueso
        tamqueso = c.tamq
        swtam = c.sw1q
        masaqueso = c.masaq
        swmasa = c.sw2q
  
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
      

    @IBAction func ingredientes1() {
        if swqueso == 0 || swqueso > 1 {
            queso = " eror sel queso"
        }

        print("Va a ingredientes 1")
        print(tamqueso)
        print(swtam)
        print(masaqueso)
        print(swmasa)
        print(queso)
        print(swqueso)
        let valorcontexto = pasaingre1(ti1: tamqueso, swti1: swtam, mai1: masaqueso, swmig1: swmasa, qi1: queso, swqi1: swqueso)
        pushControllerWithName("ingredientes1", context: valorcontexto)
    }
}
