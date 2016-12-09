//
//  MassTypeVC.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/8/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import UIKit

class MassTypeVC: UIViewController {
    // Order object. Objecto de la clase Order(orde de compra)
    var order: Order = Order()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        
        if segue.identifier == "massTypeDone"{
            let cheeseType = segue.destination as! CheeseTypeVC

            cheeseType.order = self.order
        }

        
    }
    

    @IBAction func gruesaButton(_ sender: AnyObject) {
        self.order.massType = "Gruesa"
        self.performSegue(withIdentifier: "massTypeDone", sender: nil)
        
    }
    
    @IBAction func crujienteButton(_ sender: AnyObject) {
        self.order.massType = "Crujiente"
        self.performSegue(withIdentifier: "massTypeDone", sender: nil)
        
    }
    
    
    @IBAction func delgadaButton(_ sender: AnyObject) {
        self.order.massType = "Delgada"
        self.performSegue(withIdentifier: "massTypeDone", sender: nil)
        
    }
    
    
}
