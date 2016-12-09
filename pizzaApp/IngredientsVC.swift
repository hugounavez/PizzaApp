//
//  IngredientsVC.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/8/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import UIKit

class IngredientsVC: UIViewController {
    // Order object. Objecto de la clase Order(orde de compra)
    var order: Order = Order()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        if segue.identifier == "ingredientsDone"{
            let checkOrderVC = segue.destination as! CheckOrderVC
            
            checkOrderVC.order = self.order
            
        }
    }

    
    func deleteSingleElementFromList(lista: [String], key: String) -> [String]{
        // This function deletes a certain element from the input list
        // Return the list without the element specified as the key. This key element
        // is eliminated from the list.
        var listaToReturn = lista
        if let index = listaToReturn.index(of: key) {
            listaToReturn.remove(at: index)
        }
        
        return listaToReturn
    }
    
    

    @IBAction func jamonButton(button: UIButton) {
        
        if button.backgroundColor == UIColor.gray {

            self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Jamon")
            
            button.backgroundColor = UIColor.azulRey
            
        }else {
            button.backgroundColor = UIColor.gray
            self.order.ingredients.append("Jamon")
            
            }
    
    }

    
    @IBAction func pepperoniButton(button: UIButton) {
        
        if button.backgroundColor == UIColor.gray {
            
            self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Pepperoni")
            
            button.backgroundColor = UIColor.blanco
            
        }else {
            button.backgroundColor = UIColor.gray
            self.order.ingredients.append("Pepperoni")
            
        }
    }
    
@IBAction func pavoButton(button: UIButton) {
            
            if button.backgroundColor == UIColor.gray {
                
                self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Pavo")
                
                button.backgroundColor = UIColor.rojoEscarlata
                
            }else {
                button.backgroundColor = UIColor.gray
                self.order.ingredients.append("Pavo")
                
            }
            
    }

            @IBAction func salchichaButton(button: UIButton) {
                
                if button.backgroundColor == UIColor.gray {
                    
                    self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Salchicha")
                    
                    button.backgroundColor = UIColor.verde
                    
                }else {
                    button.backgroundColor = UIColor.gray
                    self.order.ingredients.append("Salchicha")
                    
                }
    }
                @IBAction func pimientoButton(button: UIButton) {
                    
                    if button.backgroundColor == UIColor.gray {
                        
                        self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Pimiento")
                        
                        button.backgroundColor = UIColor.aguamarina
                        
                    }else {
                        button.backgroundColor = UIColor.gray
                        self.order.ingredients.append("Pimiento")
                        
                    }
    }
                    @IBAction func aceitunaButton(button: UIButton) {
                        
                        if button.backgroundColor == UIColor.gray {
                            
                            self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Aceituna")
                            
                            button.backgroundColor = UIColor.rojo
                            
                        }else {
                            button.backgroundColor = UIColor.gray
                            self.order.ingredients.append("Aceituna")
                            
                        }
    

    }
                        @IBAction func cebollaButton(button: UIButton) {
                            
                            if button.backgroundColor == UIColor.gray {
                                
                                self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Cebolla")
                                
                                button.backgroundColor = UIColor.azulRey
                                
                            }else {
                                button.backgroundColor = UIColor.gray
                                self.order.ingredients.append("Cebolla")
                                
                            }
    }
    
                            @IBAction func pinaButton(button: UIButton) {
                                
                                if button.backgroundColor == UIColor.gray {
                                    
                                    self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Piña")
                                    
                                    button.backgroundColor = UIColor.morado
                                    
                                }else {
                                    button.backgroundColor = UIColor.gray
                                    self.order.ingredients.append("Piña")
                                    
                                }
    }
    
    @IBAction func anchoaButton(button: UIButton) {
        
        if button.backgroundColor == UIColor.gray {
            
            self.order.ingredients = self.deleteSingleElementFromList(lista: (self.order.ingredients), key: "Anchoa")
            
            button.backgroundColor = UIColor.azulRey
            
        }else {
            button.backgroundColor = UIColor.gray
            self.order.ingredients.append("Anchoa")
            
        }
    }
    
    
    
    
        @IBAction func continuarButton(button: UIButton) {
            
            self.performSegue(withIdentifier: "ingredientsDone", sender: nil)
    
    }
    
    


}
