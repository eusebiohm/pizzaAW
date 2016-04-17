//
//  ingredientes2.swift
//  creapizzaAW2
//
//  Created by Eusebio Hernandez Mares on 05/04/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import WatchKit
import Foundation
var ingredientes5:String = ""
var ingredientes6:String = ""
var ingredientes7:String = ""
var ingredientes8:String = ""
var tamingre2:String = ""
var swtaming2:Int = 0
var masaingre2:String = ""
var swmasingre2:Int = 0
var quesoingre2:String = ""
var swqueingre2:Int = 0
var ingre12:String = ""
var ingre22:String = ""
var ingre32:String = ""
var ingre42:String = ""
var kont:Int = 0




class ingredientes2: WKInterfaceController {
    
    @IBAction func aceituna(value: Bool) {
        if value {
            if kont < 5 {
            ingredientes5 = "Aceituna"
            print("Estoy en ingredientes 2")
                print(ingredientes5)
                kont = kont + 1
            }
        }
    }
    
    @IBAction func cebolla(value: Bool) {
        if value {
            if kont < 5 {
                
            ingredientes6 = "Cebolla"
                print(ingredientes6)
                kont = kont + 1 }
            
        }
    }
    
    @IBAction func pimiento(value: Bool) {
        if value {
            if kont < 5 {
            ingredientes7 = "Pimiento"
                print(ingredientes7)
                kont = kont + 1 }
            
    }
    }
    @IBAction func pina(value: Bool) {
        if value {
            if kont < 5 {
       ingredientes8 = "Piña"
                kont = kont + 1
            }
            
    }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pasaingre2
        tamingre2 = c.ptamingre1
        swtaming2 = c.pswtaming1
        masaingre2 = c.pmasaing1
        swmasingre2 = c.pswmasing1
        quesoingre2 = c.pquesoing1
        swqueingre2 = c.pswquesoing1
        ingre12 = c.pingre1
        ingre22 = c.pingre2
        ingre32 = c.pingre3
        ingre42 = c.pingre4
         kont = c.pcont
        
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

    @IBAction func confirma1() {
        let valorcontexto = pconfirma1(pct11: tamingre2, pcsti1: swtaming2, pcmi1: masaingre2, pcsmi1: swmasingre2, pcqi1: quesoingre2, pcsqi1: swqueingre2, pc1: ingre12, pc2: ingre22, pc3: ingre32, pc4: ingre42, pcc: kont, pc5: ingredientes5, pc6: ingredientes6, pc7: ingredientes7, pc8: ingredientes8)
        pushControllerWithName("confirma1", context: valorcontexto)
    }
}
