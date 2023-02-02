//
//  ViewController.swift
//  codepath introduction
//
//  Created by Safiya Menk on 1/29/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTxt: UITextField!
    
    @IBOutlet weak var morePets: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!

    @IBOutlet weak var schoolTxt: UITextField!
    @IBOutlet weak var lastTxt: UITextField!
    @IBOutlet weak var numPets: UILabel!
    @IBOutlet weak var yearSeg: UISegmentedControl!
    
    @IBOutlet weak var petType: UITextField!
    @IBOutlet weak var petStepper: UIStepper!
    
    @IBAction func morePetsAction(_ sender: UIStepper) {
        numPets.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceButton(_ sender: UIButton) {
        let year = yearSeg.titleForSegment(at: yearSeg.selectedSegmentIndex)
        
        // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
        // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "My name is \(firstTxt.text!) \(lastTxt.text!) and I attend \(schoolTxt.text!). I am currently in my \(year!) year and I own \(numPets.text!) pets. It is \(morePetsSwitch.isOn) that I really want a \(petType.text!)!."
        
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

