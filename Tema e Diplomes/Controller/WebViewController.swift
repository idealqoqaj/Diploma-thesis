//
//  WebViewController.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 21.4.21.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var videoId:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        if videoId != nil{
            loadYoutube(videoID: videoId!)
        }
       
    }
    
    func loadYoutube(videoID:String) {
        guard
            let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
        else { return }
        webView.load( URLRequest(url: youtubeURL) )
    }
    
}
