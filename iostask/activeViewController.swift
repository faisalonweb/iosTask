//
//  activeViewController.swift
//  iostask
//
//  Created by macbook on 04/01/2021.
//

import UIKit

class activeViewController: UIViewController {

    @IBOutlet weak var internalView: UIView!
    @IBOutlet weak var externalView: UIView!
    @IBOutlet weak var intialprocessing: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        internalView.layer.cornerRadius = 8
        internalView.layer.shadowColor =  UIColor(red:0/255, green:0/255, blue:0/255, alpha: 0.1).cgColor
        internalView.layer.shadowOpacity =  100
        externalView.layer.cornerRadius = 24
        intialprocessing.layer.cornerRadius = 15
        intialprocessing.layer.masksToBounds = true
    
       
    }
    

   
}
