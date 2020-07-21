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
    let students: [String] = ["SONU RAJ", "NILESH SAURAV", "ANKIT KUMAR", "KUMAR VISHAL","AMIT KUMAR","ALOK RAJ","AMAN ANSARI"]
    let roll: [Int] = [10900316053,10900316054,10900316055,10900316056,10900316057,10900316058,10900316059]
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
        guard let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/myweb-a422d.appspot.com/o/videos%2FEverything%20you%20need%20to%20know%20about%20WWDC%202020%2C%20day%20one%20%E2%80%94%20Apple.mp4?alt=media&token=de0aee80-4ad9-4963-9aea-cadbd6a87585") else {
            return
        }
        guard let _ = URL(string: "https://firebasestorage.googleapis.com/v0/b/myweb-a422d.appspot.com/o/videos%2Fnetflix.mp4?alt=media&token=7b9e36be-eba3-4942-a6d5-3ee04193e64b") else {
            return
        }
        let video = AVPlayer(url: url)
        let videoPlayer = AVPlayerViewController()
        videoPlayer.player = video
        
        present(videoPlayer, animated: true) {
            video.play()
        }
        
//        if let path = Bundle.main.path(forResource: "netflix", ofType: "mp4") {
//            let video = AVPlayer(url: URL(fileURLWithPath: path))
//            let videoPlayer = AVPlayerViewController()
//            videoPlayer.player = video
//
//            present(videoPlayer, animated: true) {
//                video.play()
//            }
//        }
    }
    
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        cell.Name.text = students[indexPath.row]
        cell.Roll.text = "\(roll[indexPath.row])"
        cell.Sec.text = Section
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
