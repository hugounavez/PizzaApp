//
//  FinishVC.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/8/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import UIKit

class FinishVC: UIViewController {
    // Order object. Objecto de la clase Order(orde de compra)
    var order: Order!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if self.order != nil {
            print(self.order)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backToHome(_ sender: AnyObject) {
        
    }

}
