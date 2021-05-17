//
//  VideosViewController.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 19.4.21.
//

import UIKit
import AVKit
import AVFoundation

class VideosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var videos: [Video] = Video.fetchVideo()
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideosCell", for: indexPath) as!  VideosTableViewCell
        let video = videos[indexPath.row]
        
        cell.video = video
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
       playVIdeo(at: indexPath)
    }
        
    func playVIdeo(at indexPath: IndexPath) {
        let selectedVideo = videos[indexPath.row]
        let videoPath = Bundle.main.path(forResource: selectedVideo.videoFileName, ofType: "mp4")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: videoPathURL)
        playerViewController.player = player
        
        
        self.present(playerViewController, animated: true, completion: nil)
        
    }

}
