//
//  FavoritesVC.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import UIKit

class FavoritesVC: UIViewController {

    
    
    @IBOutlet weak var tblFavorites: UITableView!
    let itemCell : String = "AudioItemCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Favorilerim"
        self.tblFavorites.register(UINib(nibName: itemCell, bundle: nil), forCellReuseIdentifier: itemCell)
        self.tblFavorites.delegate = self
        self.tblFavorites.dataSource = self
        self.tblFavorites.separatorStyle = .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    
//    @IBAction func tappedPush(_ sender: Any) {
//        let vc = instaniate("TRYYViewController")
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FavoritesVC : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: itemCell) as! AudioItemCell
        
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
}

