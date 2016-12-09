//
//  CheeseTypeVC.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/8/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import UIKit

class CheeseTypeVC: UIViewController {
    // Order object. Objecto de la clase Order(orde de compra)
    var order: Order = Order()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Tipo de queso")
        
    
        // Do any additional setup after loading the view.
    }



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        
        if segue.identifier == "cheeseTypeDone"{
            let ingredientsVc = segue.destination as! IngredientsVC
            
            ingredientsVc.order = self.order
            

        }
    
        
    }
    
    @IBAction func mozarelaButton(_ sender: AnyObject) {
                self.order.cheeseType = "Mozarela"
        self.performSegue(withIdentifier: "cheeseTypeDone", sender: nil)

    }
    
    @IBAction func cheddarButton(_ sender: AnyObject) {
        self.order.cheeseType = "Cheddar"
        self.performSegue(withIdentifier: "cheeseTypeDone", sender: nil)

    }
    
    @IBAction func parmesanoButton(_ sender: AnyObject) {
        self.order.cheeseType = "Parmesano"
        self.performSegue(withIdentifier: "cheeseTypeDone", sender: nil)

    }
    
    @IBAction func sinQuesoButton(_ sender: AnyObject) {
        self.order.cheeseType = "Sin queso"
        self.performSegue(withIdentifier: "cheeseTypeDone", sender: nil)
    }
    
    

}
