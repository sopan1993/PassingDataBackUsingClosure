//
//  ViewController.swift
//  ClosureForPassingDataBackDemo
//
//  Created by Sopan M. Sanap on 09/08/19.
//  Copyright © 2019 Sopan M. Sanap. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var lblFname: UILabel!
    @IBOutlet weak var lblLname: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnGoToSecondVCTaped(_ sender: Any) {
        
           if let secondVC = self.storyboard?.instantiateViewController(withIdentifier: SecondVC.vcIdentifier) as? SecondVC{
            secondVC.completion = { dict in
                
                self.lblFname.text = dict["fname"] as? String
                self.lblLname.text = dict["lname"] as? String
                
            }
            
           self.navigationController?.pushViewController(secondVC, animated: true)
        }
        
    }
    
}

extension UIViewController {
    static var vcIdentifier : String {
        return String(describing: self)
    }
}
