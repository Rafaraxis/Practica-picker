//
//  ViewController.swift
//  PracticaPicker
//
//  Created by Alumno on 13/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

    class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
        
        @IBOutlet weak var ImagenColor: UIImageView!
        
        
        let colores = ["Rojo","Naranja","Amarillo","Verde","Azul","Morado"]
        
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return colores.count
        }
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return colores[row]
        }
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            
            switch row {
            case 0:
                ImagenColor.image = UIImage(named:"Rojo")
              
            case 1:
                ImagenColor.image = UIImage(named:"Naranja")
            case 2:
                ImagenColor.image = UIImage(named:"Amarillo")
            case 3:
                ImagenColor.image = UIImage(named:"Verde")
            case 4:
               ImagenColor.image = UIImage(named:"Azul")
            case 5:
                ImagenColor.image = UIImage(named:"Morado")
           
            default: break            }
        }
        
        
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

