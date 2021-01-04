//
//  PasswordViewController.swift
//  iostask
//
//  Created by macbook on 04/01/2021.
//

import UIKit

class PasswordViewController: UIViewController,UINavigationControllerDelegate,UIGestureRecognizerDelegate {

    @IBOutlet weak var roundedPassView: UIView!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var passIcon: UIView!
    
    @IBOutlet weak var passView: UIView!
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        super.viewDidLoad()

        roundedPassView.layer.cornerRadius = 15
        passTextField.layer.cornerRadius = 25.0
        passTextField.layer.borderWidth = 1.2
        passTextField.layer.borderColor = UIColor(red:96/255, green:72/255, blue:120/255, alpha: 1).cgColor
        passIcon.layer.cornerRadius = 25
     signInButton.layer.cornerRadius = 25
    }
    

    @IBAction func nextActiveScreen(_ sender: Any) {
        let vctwo = self.storyboard?.instantiateViewController(withIdentifier: "activeViewController") as? activeViewController;
        self.navigationController?.pushViewController(vctwo!, animated: true)
    }
    
    

}
