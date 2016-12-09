//
//  CheckOrderVC.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/8/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import UIKit

class CheckOrderVC: UIViewController {
    @IBOutlet weak var checkOrderLabel: UILabel!
    
    
    // Order object. Objecto de la clase Order(orde de compra)
    var order: Order!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        
        self.checkOrderLabel.text = "Tu orden fue es la siguiente:.\n " + "Pizza de tamaño: " + self.order.pizzaSize + ".\n" + "Tipo de masa: " + self.order.massType + ".\n" + "Tipo de queso: " + self.order.cheeseType + ".\n" + "Ingredientes: " +  self.order.ingredients.joined(separator: ", ")
        
        
        
        
        self.checkOrderLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        self.checkOrderLabel.numberOfLines = 0
        
        
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    //}
    
    
    @IBAction func ordenarButton(_ sender: AnyObject) {
        
    }

}
