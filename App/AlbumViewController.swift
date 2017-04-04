//
//  AlbumViewController.swift
//  App
//
//  Created by Amy Kelly on 01/03/2017.
//  Copyright © 2017 Amy Kelly. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {
    
    var album: Album?

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var albumCoverImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var myWebView: UIWebView!
    
    
    func updateUI() {
        let albumName = "\((album?.coverImageName)!)"
        backgroundImageView?.image = UIImage(named: albumName)
        albumCoverImageView?.image = UIImage(named: albumName)
        
        let songList = ((album?.songs)! as NSArray).componentsJoined(by: ", ")
        descriptionTextView.text = "\((album?.description)!)\n\n Songs: \n\(songList)"
    
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getVideo(videoCode: String)
        updateUI()
        
    }
    
    func getVideo(videoCode: String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        myWebView.loadRequest(URLRequest(url: url!))
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        backgroundImageView?.removeFromSuperview()
    }
    
}
