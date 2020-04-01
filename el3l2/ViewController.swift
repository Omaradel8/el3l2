//
//  ViewController.swift
//  el3l2
//
//  Created by Omar Adel on 3/31/20.
//  Copyright © 2020 z510. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let a = 2

    @IBOutlet weak var ve: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = storyboard?.instantiateViewController(withIdentifier: "view3")
        let viewvc = vc?.view
        viewvc?.frame.size.height = ve.frame.height
        viewvc?.frame.size.width = ve.frame.width
        
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "view5")
        let viewvc2 = vc?.view
        viewvc2?.frame.size.height = ve.frame.height
        viewvc2?.frame.size.width = ve.frame.width
        
        if a == 1{
            ve.addSubview(vc!.view)
        }else{
            ve.addSubview(vc2!.view)
        }
    }


}

