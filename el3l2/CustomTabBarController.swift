//
//  CustomTabBarController.swift
//  el3l2
//
//  Created by Omar Adel on 3/31/20.
//  Copyright © 2020 z510. All rights reserved.
//

import UIKit

class CustomeTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        self.tabBar.layer.cornerRadius = 30
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        //self.tabBar.barTintColor = .yellow
        self.tabBar.tintColor = .green
    }
    
    func setupTabBar(){
        
        //let firstStoryBoard = UIStoryboard(name: "HomeMaintenanceView", bundle: nil)
        let first = storyboard?.instantiateViewController(withIdentifier: "view1")
        first?.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "menu"), selectedImage: UIImage(named: "menu"))
        
        
        
        //let secondStoryBoard = UIStoryboard(name: "Profile", bundle: nil)
        let second = storyboard?.instantiateViewController(withIdentifier: "view2")
        second?.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "menu"), selectedImage: UIImage(named: "menu"))
        
        
        
        //let thirdStoryBoard = UIStoryboard(name: "MyOrders", bundle: nil)
        let third = storyboard?.instantiateViewController(withIdentifier: "view3")
        let barImage: UIImage = UIImage(named: "menu")!.resizedImage(newWidth: 20).roundedImage.withRenderingMode(.alwaysOriginal)
        third?.tabBarItem = UITabBarItem(title: "My Orders", image: barImage.withRenderingMode(.alwaysOriginal), selectedImage:  barImage)
        
        
        
        
        //let fourthStoryboard = UIStoryboard(name: "Cart", bundle: nil)
        let fourth = storyboard?.instantiateViewController(withIdentifier: "view4")
        fourth?.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "menu"), selectedImage: UIImage(named: "menu"))
        
        
        //let fifthStroyBoard = UIStoryboard(name: "SideMenu", bundle: nil)
        let fifth = storyboard?.instantiateViewController(withIdentifier: "view5")
        fifth?.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "menu"), selectedImage: UIImage(named: "menu"))
        
        self.viewControllers = [second! , first!, third! ,fourth!, fifth!]
        
        tabBarController?.tabBar.frame.size.height = 100
        setBadge()
    }
    
    func setBadge(){
        self.tabBar.items![3].badgeValue = String(1)
        self.tabBar.items![3].badgeColor = .blue
    }
}



extension UIImage{
    var roundedImage: UIImage {
        let rect = CGRect(origin:CGPoint(x: 0, y: 0), size: self.size)
        UIGraphicsBeginImageContextWithOptions(self.size, false, 1)
        UIBezierPath(
            roundedRect: rect,
            cornerRadius: self.size.height
            ).addClip()
        self.draw(in: rect)
        return UIGraphicsGetImageFromCurrentImageContext()!
    }
    func resizedImage(newWidth: CGFloat) -> UIImage {
        let scale = newWidth / self.size.width
        let newHeight = self.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}
