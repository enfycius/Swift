//
//  ViewController.swift
//  Studying1-1
//
//  Created by 김종혁 on 2022/01/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myButton.setTitleColor(.red, for: .normal)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was printed")
    }


}

