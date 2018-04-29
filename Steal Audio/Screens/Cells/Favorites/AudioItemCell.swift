//
//  FavoritesCell.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import UIKit

struct  AudioItemModel {
    var liked : Bool = false
    var name : String = ""
    var genre : String = ""
    var image : String = ""
    var id : String = ""
    var playing : Bool = false
}

class AudioItemCell : UITableViewCell {
    var model : AudioItemModel!

    @IBOutlet weak var imgItem: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var imgPlayPause: UIImageView!
    @IBOutlet weak var imgLike: UIImageView!
    @IBOutlet weak var sliderVlome: UISlider!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.imgLike.contentMode = .scaleAspectFit
        self.model = AudioItemModel(liked: false, name: "ParamParça Sesler", genre: "Paramparça", image: "ypk", id: "234", playing: false)
        
    }
    
    func setup(model : AudioItemModel) {
        self.model = AudioItemModel(liked: false, name: "ParamParça Sesler", genre: "Paramparça", image: "ypk", id: "234", playing: false)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func tappedPlayPause(_ sender: Any) {
    }
    @IBAction func tappedLike(_ sender: Any) {
        self.model.liked = !self.model.liked
        self.imgLike.contentMode = .scaleAspectFit
        if self.model.liked{
          self.imgLike.image = #imageLiteral(resourceName: "ic_red_heart")
        }else {
            self.imgLike.image = #imageLiteral(resourceName: "ic_gray_heart")
        }
        
    }
    
    @IBAction func slidingVolume(_ sender: UISlider) {
    }
    
}



