//
//  VideoViewController.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 16.4.21.
//

import UIKit
import AVKit
import youtube_ios_player_helper
import YouTubePlayer


class VideoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    var playerViewer = YTPlayerView()
    
    
    
    var videoTittle = ["Logarithms", "Trigonometry For Beginners!","Definition of the Derivative","Basic Integration","Discrete Mathematics","Intro To Matrix Math"]
    
    
    var videoSubTittle = ["This algebra 2 video tutorial provides a basic introduction of logarithms. It explains the process of evaluating logarithmic expressions without a calculator.","This math video tutorial provides a basic introduction into trigonometry. It covers trigonometric ratios such as sine, cosine, and tangent.","This calculus video tutorial provides a basic introduction into the definition of the derivative formula in the form of a difference quotient with limits.","MIT grad shows how to find antiderivatives, or indefinite integrals, using basic integration rules. To skip ahead: 1) For how to integrate a polyno","Discrete mathematics is the study of mathematical structures that are fundamentally discrete rather than continuous.","In mathematics, a matrix (plural matrices) is a rectangular array or table of numbers, symbols, or expressions, arranged in rows and columns."]
    
    var videoURL = ["https://www.youtube.com/watch?v=kqVpPSzkTYA","https://www.youtube.com/watch?v=PUB0TaZ7bhA","https://www.youtube.com/watch?v=-aTLjoDT1GQ","https://www.youtube.com/watch?v=e1nxhJQyLYI","https://www.youtube.com/watch?v=RQeZ6NLGfus","https://www.youtube.com/watch?v=94mdM-OcjLg"]
    
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "VideoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "videoCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoTittle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as? VideoTableViewCell
        cell?.comminInit(tittle: videoTittle[indexPath.row], subTittle: videoSubTittle[indexPath.row], videoURL: videoURL[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        playVideo(videoURL: videoURL[indexPath.row])
    }
    func playVideo(videoURL: String) {
        
        if let webVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewController") as? WebViewController{
            let modifiedIdURL = videoURL.replacingOccurrences(of: "https://www.youtube.com/watch?v=", with: "")
            webVC.videoId = modifiedIdURL
            
            self.present(webVC, animated: true, completion: nil)
        }

    }
    
}

