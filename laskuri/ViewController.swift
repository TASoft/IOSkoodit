//
//  ViewController.swift
//  laskuri
//
//  Created by Tuomas Aaltonen on 19/10/15.
//  Copyright © 2015 Tuomas Aaltonen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var x1 = arc4random_uniform(11)
    var x2 = arc4random_uniform(11)
    var x3 = arc4random_uniform(11)
    var y1 = arc4random_uniform(11)
    var y2 = arc4random_uniform(11)
    var y3 = arc4random_uniform(11)
    
    @IBOutlet weak var lasku1: UILabel!
    @IBOutlet weak var lasku2: UILabel!
    @IBOutlet weak var lasku3: UILabel!
    
    @IBOutlet weak var tulos1: UILabel!
    @IBOutlet weak var tulos2: UILabel!
    @IBOutlet weak var tulos3: UILabel!
    
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var input3: UITextField!
    
    @IBOutlet weak var tulosLabel: UILabel!
    
    @IBAction func resetNappi(sender: AnyObject) {
        x1 = arc4random_uniform(11)
        x2 = arc4random_uniform(11)
        x3 = arc4random_uniform(11)
        y1 = arc4random_uniform(11)
        y2 = arc4random_uniform(11)
        y3 = arc4random_uniform(11)
    }
    
    @IBAction func tarkistaNappi(sender: AnyObject) {
        var tulokset = 0
        
        if ( input1.text == String(x1 * y1)){
        tulos1.text = ":-)"
        tulokset += 1
        }
        else
        {tulos1.text = ":-("}
        
        if ( input2.text == String(x2 * y2)){
            tulos2.text = ":-)"
            tulokset += 1
        }
        else
        {tulos2.text = ":-("}
        
        if (input3.text == String(x3 * y3)){
            tulos3.text = ":-)"
            tulokset += 1
        }
        else
        {tulos3.text = ":-("}
        
        if (tulokset == 3)
        {tulosLabel.text = "Kaikki oikein"}
        else
        {tulosLabel.text = String(tulokset) + "/3 oikein. Treenaas vielä"}
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        self.lasku1.text = String(x1) + "x" + String(x2)
        self.lasku2.text = String(x1) + "x" + String(x2)
        self.lasku3.text = String(x1) + "x" + String(x2)
        self.tulos1.text = " "
        self.tulos2.text = " "
        self.tulos3.text = " "
        
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

