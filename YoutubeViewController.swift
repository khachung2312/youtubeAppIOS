//
//  YoutubeViewController.swift
//  youtubeApp
//
//  Created by Khắc Hùng on 13/04/2023.
//

import UIKit

class YoutubeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tblYoutubes: UITableView!
    let listAvt = ["user1", "user2", "user3"]
    let listImgVideo = ["poster1", "poster2", "poster"]
    let listTitleVideo = ["NHÀ BÀ NỮ - OFFICIAL TRAILER | Khởi chiếu mùng 1 Tết 2023", "Bố Già - The Father 2021 | Thông tin - Lịch chiếu | CGV", "Liên minh huyền thoại"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblYoutubes.dataSource = self
        tblYoutubes.delegate = self

  
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listAvt.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listVideo = tblYoutubes.dequeueReusableCell(withIdentifier: "YoutubeCellIdentifier")!
        let imgVideo = listVideo.viewWithTag(100) as! UIImageView
        let imgAvtUser = listVideo.viewWithTag(101) as! UIImageView
        let lblTitleVideo = listVideo.viewWithTag(102) as! UILabel
        let btnMore = listVideo.viewWithTag(103) as! UIImageView
        
        imgAvtUser.image =  UIImage(named: listAvt[indexPath.row])
        imgAvtUser.layer.cornerRadius = 20
        imgVideo.image =  UIImage(named: listImgVideo[indexPath.row])
        lblTitleVideo.text = listTitleVideo[indexPath.row]
        
        return listVideo
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    


}
