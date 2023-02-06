//
//  ViewController.swift
//  Prework
//
//  Created by Dokyung Lee on 2/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SchoolName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var YearSegmentControl: UISegmentedControl!
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var PetSwitch: UISwitch!
    @IBOutlet weak var NumPets: UILabel!
    @IBOutlet weak var PetStepper: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        NumPets.text = Int(sender.value).description
    }
    
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        let selectedTitle = YearSegmentControl.titleForSegment(at: YearSegmentControl.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstName.text!) \(LastName.text!) and I attend \(SchoolName.text!). I am currently in my \(selectedTitle!) year and I own \(NumPets.text!) dogs. It is \(PetSwitch.isOn) that I want more pets."
        
        //print(introduction)
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

