//
//  LibraryTableViewController.swift
//  App
//
//  Created by Amy Kelly on 28/03/2017.
//  Copyright © 2017 Amy Kelly. All rights reserved.
//

import UIKit

class LibraryTableViewController: UITableViewController {

    var library = MusicLibrary().library
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return library.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath) as! SongTableViewCell
        
        cell.artistLabel.text = library[indexPath.row]["artist"]
        cell.songTitleLabel.text = library[indexPath.row]["title"]
        
        if let coverImage = library[indexPath.row]["coverImage"] {
            
            cell.coverImageView.image = UIImage(named: "\(coverImage).jpg")

        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showPlayer", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPlayer" {
            
            let playerVC = segue.destination as! PlayerViewController
            let indexPath = tableView.indexPathForSelectedRow!
            playerVC.trackId = indexPath.row
            
        }
    }
}
