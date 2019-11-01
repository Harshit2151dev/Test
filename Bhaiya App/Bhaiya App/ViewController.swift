//
//  ViewController.swift
//  Bhaiya App
//
//  Created by Harshit Kumar on 03/07/19.
//  Copyright © 2019 Harshit Kumar. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol {
    func getData(array: [Int])
}

class ViewController: UIViewController {

    @IBOutlet weak var remainingField: UITextField!
    @IBOutlet weak var soldField: UITextField!
    @IBOutlet weak var totalField: UITextField!
    var delegate: ViewControllerProtocol!
    var index = -1
    var array = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Index is \(index)")
        // Do any additional setup after loading the view.
        totalField.text = String(array[0])
        soldField.text = String(array[1])
        let number1 = Int(totalField.text!) //here number is of type "Int?"
        let number2 = Int(soldField.text!) //here number is of type "Int?"
        let remain = number1! - number2!
        remainingField.text = "\(remain)"

    }


    @IBAction func saveField(_ sender: Any) {
        let number1 = Int(totalField.text!) //here number is of type "Int?"
        let number2 = Int(soldField.text!) //here number is of type "Int?"
        let remain = number1! - number2!
        DispatchQueue.main.async {
            self.remainingField.text = "\(remain)"
        }
        let aaray = [number1!,number2!,remain,index]
        delegate?.getData(array: aaray)
        perform(#selector(popViewContrller), with: nil, afterDelay: 0.5)


       // sleep(4)
       // self.navigationController?.popViewController(animated: false)
    }
    
    @objc func popViewContrller ()
    {
         self.navigationController?.popViewController(animated: false)

    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentString: NSString = textField.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        let number1 = Int(totalField.text!) //here number is of type "Int?"
        let number2 = Int(newString as String) //here number is of type "Int?"
        guard let value1 = number1 else { return true }
        guard let value2 = number2 else { return true }
        return value2 <= value1
    }
}

