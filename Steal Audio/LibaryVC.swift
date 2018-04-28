//
//  LibaryVC.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import UIKit

class LibaryVC: UIViewController {

    
    let cellCategory : String = "CategoryCell"
    
    @IBOutlet weak var tblCategories: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Kitaplık"
        
        self.tblCategories.register(UINib(nibName: "CategoryCell", bundle: nil), forCellReuseIdentifier: "CategoryCell")
        self.tblCategories.delegate = self
        self.tblCategories.dataSource = self
        self.tblCategories.separatorStyle = .none
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    @IBAction func tappedPush(_ sender: Any) {
//        let vc  = instaniate("TRYViewController")
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LibaryVC : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoryCell
        
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
