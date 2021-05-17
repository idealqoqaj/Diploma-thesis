//
//  VideoTableViewCell.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 16.4.21.
//

import UIKit
import AVKit
import SDWebImage

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var subTittleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func comminInit(tittle: String, subTittle: String, videoURL: String){
        self.tittleLabel.text = tittle
        self.subTittleLabel.text = subTittle
        
        let modifiedIdURL = videoURL.replacingOccurrences(of: "https://www.youtube.com/watch?v=", with: "")
        let url = URL(string: "https://img.youtube.com/vi/" + modifiedIdURL + "/0.jpg")
        
        thumbnailImageView.sd_setImage(with: url!, placeholderImage: UIImage(named: ""))
    }

    
}
