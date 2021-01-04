//
//  EmailViewController.swift
//  iostask
//
//  Created by macbook on 03/01/2021.
//

import UIKit

class EmailViewController: UIViewController,UINavigationControllerDelegate,UIGestureRecognizerDelegate {

    @IBOutlet weak var roundedView: UIView!
    @IBOutlet weak var roundedTextField: UITextField!
    
    @IBOutlet weak var roundedButton: UIButton!
    @IBOutlet weak var emailIcon: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        roundedView.layer.cornerRadius = 15
        roundedTextField.layer.cornerRadius = 25.0
        roundedTextField.layer.borderWidth = 1.2
        roundedTextField.layer.borderColor = UIColor(red:96/255, green:72/255, blue:120/255, alpha: 1).cgColor
        roundedButton.layer.cornerRadius = 25
        emailIcon.layer.cornerRadius = 15
       
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        let vctwo = self.storyboard?.instantiateViewController(withIdentifier: "PasswordViewController") as? PasswordViewController;
        self.navigationController?.pushViewController(vctwo!, animated: true)
    }
    
}
