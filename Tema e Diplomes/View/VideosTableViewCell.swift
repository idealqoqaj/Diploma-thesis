//
//  VideosTableViewCell.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 19.4.21.
//

import UIKit

class VideosTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var subjectLbl: UILabel!
   
    var video: Video! {
        didSet {
            updateUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(){
        thumbnailImageView.image = UIImage(named: video.thumbnailFileName)
        thumbnailImageView.layer.cornerRadius = 10
        thumbnailImageView.layer.masksToBounds = true
        subjectLbl.text = video.subjectName
    }
    

}
