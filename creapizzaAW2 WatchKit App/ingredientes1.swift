//
//  ingredientes1.swift
//  creapizzaAW2
//
//  Created by Eusebio Hernandez Mares on 04/04/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import WatchKit
import Foundation
var ingre1:String = ""
var ingre2:String = ""
var ingre3:String = ""
var ingre4:String = ""
var cont:Int = 0
var tamingre1 = ""
var swtaming1:Int = 0
var masaingre1:String = ""
var swmasingre1:Int = 0
var quesoingre1:String = ""
var swqueingre1:Int = 0




class ingredientes1: WKInterfaceController {
    
    @IBAction func jamon(value: Bool) {
        if value {
            ingre1 = "Jamon"
            print("estoy en ingredientes1")
            print (ingre1)
            cont = cont + 1
        }
    }
    
    @IBAction func peperoni(value: Bool) {
        if value {
            ingre2 = "Peperoni"
            cont = cont + 1
            
        }
    }
    
    @IBAction func pavo(value: Bool) {
        if value {
            ingre3 = "Pavo"
            cont = cont + 1
        }
    }
    
    @IBAction func salchicha(value: Bool) {
        if value {
            ingre4 = "Salchicha"
            cont = cont + 1
        }
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pasaingre1
        tamingre1 = c.tingre1
        swtaming1 = c.swtaming1
        masaingre1 = c.masaing1
        swmasingre1 = c.swmaing1
        quesoingre1 = c.quesoing1
        swqueingre1 = c.swqing1
        
        
        
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

    @IBAction func ingredientes2() {
        let valorcontexto = pasaingre2(pt11: tamingre1, psti1: swtaming1, pmi1: masaingre1, psmi1: swmasingre1, pqi1: quesoingre1, psqi1: swqueingre1, p1: ingre1, p2: ingre2, p3: ingre3, p4: ingre4, pc: cont)
        
            print("va a Ingredientes 2")
        print(tamingre1)
        print(swtaming1)
        print(masaingre1)
        print(swmasingre1)
        print(quesoingre1)
        print(swqueingre1)
        print(ingre1)
        print(ingre2)
        print(ingre3)
        print(ingre4)
        print (cont)
        pushControllerWithName("ingredientes2", context: valorcontexto)
        

        
           }
}
