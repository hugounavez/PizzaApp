//
//  PizzaSizeVC.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/8/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import UIKit

class PizzaSizeVC: UIViewController {
    // Order object. Objecto de la clase Order(orde de compra)
    var order: Order = Order()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Tamaño de pizza")

    }

    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "pizzaSizeDone"{
            let massType = segue.destination as! MassTypeVC
            print(self.order.pizzaSize)
            massType.order = self.order
        
        }

    }

    @IBAction func grandeButton(_ sender: AnyObject) {
        self.order.pizzaSize = "Grande"
        self.performSegue(withIdentifier: "pizzaSizeDone", sender: nil)

    }
    
    @IBAction func medianaButton(_ sender: AnyObject) {
        self.order.pizzaSize = "Mediana"
        self.performSegue(withIdentifier: "pizzaSizeDone", sender: nil)
        
    }
    
    
    @IBAction func chicaButton(_ sender: AnyObject) {
        self.order.pizzaSize = "Chica"
        self.performSegue(withIdentifier: "pizzaSizeDone", sender: nil)

    }
    

}
