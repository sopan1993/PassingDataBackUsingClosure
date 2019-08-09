//
//  SecondVC.swift
//  ClosureForPassingDataBackDemo
//
//  Created by Sopan M. Sanap on 09/08/19.
//  Copyright © 2019 Sopan M. Sanap. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    typealias completionHandler = ([String:Any]) -> Void
    
    @IBOutlet weak var txtfFname: UITextField!
    
    @IBOutlet weak var txtfLname: UITextField!
    
    var completion: completionHandler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnGoBackTaped(_ sender: Any) {
    
        guard let fname = txtfFname.text else {return}
        guard let lname = txtfLname.text else {return}
        let dict = ["fname":fname,"lname":lname]
        guard let completionBlock = completion else {return}
        completionBlock(dict)
        self.navigationController?.popViewController(animated: true)
        
    }
    

}
