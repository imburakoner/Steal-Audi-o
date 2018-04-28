//
//  ViewController.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tappedBtn(_ sender: Any) {
        
        
        let tabbarController = UITabBarController()
        let favVC = instaniate("FavoritesVC")
        let favNC = UINavigationController(rootViewController: favVC)
        let favItem = UITabBarItem(title: "Favorilerim", image: nil, selectedImage: nil)
        favNC.tabBarItem = favItem
        
        let libaryVC = instaniate("LibaryVC")
        let libaryNC = UINavigationController(rootViewController: libaryVC)
        let libaryItem = UITabBarItem(title: "Kitablık", image: nil, selectedImage: nil)
        libaryNC.tabBarItem  = libaryItem
        tabbarController.viewControllers = [libaryNC, favNC]
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.window?.rootViewController = instaniate("SoundsVC")
        
    }
}

