//
//  ViewController.swift
//  Homework
//
//  Created by Sergey on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UIImageView!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var alert = UIAlertController(title: "Внимание!", message: "I am an alert message you cannot dissmiss.", preferredStyle: .alert)
    let ok = UIAlertAction(title: "OK", style: .default)
    
    var counter: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counter)
        alert.addAction(ok)
        
        minusButton.backgroundColor = .systemGreen
        plusButton.backgroundColor = .systemGreen
        resetButton.backgroundColor = .systemRed
    }
    
    
    @IBAction func minusButton(_ sender: Any) {
        if counter > -10 {
            counter -= 1
            counterLabel.text = String(counter)
        }else{
            alert.message = "Достигнуто минимальное значение!"
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        if counter < 10 {
            counter += 1
            counterLabel.text = String(counter)
        }else{
            alert.message = "Достигнуто максимальное значение!"
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        counter = 0
        counterLabel.text = String(counter)
    }
}
