//
//  ViewController.swift
//  iostask
//
//  Created by macbook on 02/01/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topimage: UIImageView!
    @IBOutlet weak var bottomimage: UIImageView!
    @IBOutlet weak var topone: NSLayoutConstraint!
    @IBOutlet weak var bottomone: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        
    }
   
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.5, animations: {
            self.topimage.frame.origin.y -= 250
            

        }, completion: {_ in
            let vcone = self.storyboard?.instantiateViewController(withIdentifier: "EmailViewController") as? EmailViewController;
            self.navigationController?.pushViewController(vcone!, animated: true)
        })
        UIView.animate(withDuration: 1.5, animations: {
            self.bottomimage.frame.origin.y += 250
     
        }, completion: nil)
        
    }
    
    

}

