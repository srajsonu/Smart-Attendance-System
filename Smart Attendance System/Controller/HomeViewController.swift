//
//  HomeViewController.swift
//  Smart Attendance System
//
//  Created by ARY@N on 01/04/20.
//  Copyright © 2020 Hitachi Payment Services. All rights reserved.
//

import UIKit
import AVKit

class HomeViewController: UIViewController {
    
    var Department: String?
    var Section: String?
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var playButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "StudentTableViewCell", bundle: nil), forCellReuseIdentifier: "StudentTableViewCell")
        self.navigationItem.title = "\(Department!)-\(Section!)"
        print("home",Section!,Department!)
        tableView.reloadData()
    }
    
    @IBAction func playButtonPressed(_ sender: UIBarButtonItem) {
        if let path = Bundle.main.path(forResource: "netflix", ofType: "mp4") {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true) {
                video.play()
            }
        }
    }
    
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
