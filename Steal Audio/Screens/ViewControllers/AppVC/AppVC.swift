//
//  SoundsVC.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import UIKit

class AppVC: UIViewController {
    
    var pageContainer : UIPageViewController!
    var pages = [UIViewController]()
    
    var favNC : UINavigationController!
    var libaryNC : UINavigationController!
    
    @IBOutlet weak var viewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPageViewController()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupPageViewController() {
        let favVC = instaniate("FavoritesVC")
        favNC = UINavigationController(rootViewController: favVC)
        
        guard let libaryVC = instaniate("LibaryVC") as? LibaryVC else { return }
        let libaryRouter = LibaryRouterImplementation(view: libaryVC)
        let presenter = LibaryPresenterImplemetation(view: libaryVC, router: libaryRouter)
        libaryVC.configure(presenter: presenter)
        libaryNC = UINavigationController(rootViewController: libaryVC)
        
        
        pages.append(libaryNC)
        pages.append(favNC)
        pageContainer = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        self.addChildViewController(pageContainer)
        pageContainer.didMove(toParentViewController: self)
        pageContainer.view.frame = self.viewContainer.bounds
        self.viewContainer.addSubview(pageContainer.view)
        pageContainer.setViewControllers([favNC], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
        
        
        
    }
    
    @IBAction func tappedFavorites(_ sender: Any) {
         pageContainer.setViewControllers([favNC], direction: UIPageViewControllerNavigationDirection.reverse
            , animated: true, completion: nil)
    }
    @IBAction func tappedLibary(_ sender: Any) {
         pageContainer.setViewControllers([libaryNC], direction: UIPageViewControllerNavigationDirection.forward, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
