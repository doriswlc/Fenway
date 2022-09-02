//
//  SelectYTTableViewController.swift
//  Fenway
//
//  Created by doriswlc on 2022/8/24.
//

import UIKit
import SafariServices

class SelectYTTableViewController: UITableViewController {
    let playList = ["20210424中大紅襪Minor聯盟賽[F分威]vs[D龍王]", "20210424中大紅襪Minor聯盟賽[C獵豹]vs[F分威]", "20210814中大紅襪Minor聯盟賽[E活力小子]vs[F分威]", "20210814中大紅襪Minor聯盟賽[I超人特攻隊]vs[F分威]", "20210814中大紅襪Minor聯盟賽[F分威]vs[J噴射機]", "20210821中大紅襪Minor聯盟賽[F分威]vs[A王牌]", "20210821中大紅襪Minor聯盟賽[B勇士]vs[F分威]", "20210828中大紅襪Minor聯盟賽[F分威]vs[I超人特攻隊]", "20210828中大紅襪Minor聯盟賽[F分威]vs[B勇士]"]
    let videoIDs = ["s7RdTfzVMEk", "8PTLK5qjhCY", "FaaGvNsNAE8", "ToSKeBS_k2k", "b1z7TB3D2kw", "pc_p4_ErR0c", "GrFE6IiDxRs", "TrSGhWuIYPA", "-8xl5ljrzpE"]
    @IBOutlet var videoLabel: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for (i, video) in videoLabel.enumerated() {
            video.text = playList[i]
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let url = URL(string: "https://youtu.be/\(videoIDs[indexPath.row])") {
            let controller = SFSafariViewController(url: url)
            present(controller, animated: true)
        }
    }
    
    /*
    @IBSegueAction func playYT(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> PlayYTViewController? {
        let controller = PlayYTViewController(coder: coder)
        switch segueIdentifier {
        case "pl1":
            controller?.playlist = Playlist(name: "20210424中大紅襪Minor聯盟賽[F分威]vs[D龍王]", url: URL(string: "https://youtu.be/s7RdTfzVMEk"))
        case "pl2":
            controller?.playlist = Playlist(name: "20210424中大紅襪Minor聯盟賽[C獵豹]vs[F分威]", url: URL(string: "https://youtu.be/8PTLK5qjhCY"))
        case "pl3":
            controller?.playlist = Playlist(name: "20210814中大紅襪Minor聯盟賽[E活力小子]vs[F分威]", url: URL(string: "https://youtu.be/FaaGvNsNAE8"))
        case "pl4":
            controller?.playlist = Playlist(name: "20210814中大紅襪Minor聯盟賽[I超人特攻隊]vs[F分威]", url: URL(string: "https://youtu.be/ToSKeBS_k2k"))
        case "pl5":
            controller?.playlist = Playlist(name: "20210814中大紅襪Minor聯盟賽[F分威]vs[J噴射機]", url: URL(string: "https://youtu.be/b1z7TB3D2kw"))
        case "pl6":
            controller?.playlist = Playlist(name: "20210821中大紅襪Minor聯盟賽[F分威]vs[A王牌]", url: URL(string: "https://youtu.be/pc_p4_ErR0c"))
        case "pl7":
            controller?.playlist = Playlist(name: "20210821中大紅襪Minor聯盟賽[B勇士]vs[F分威]", url: URL(string: "https://youtu.be/GrFE6IiDxRs"))
        case "pl8":
            controller?.playlist = Playlist(name: "20210828中大紅襪Minor聯盟賽[F分威]vs[I超人特攻隊]", url: URL(string: "https://youtu.be/TrSGhWuIYPA"))
        case "pl9":
            controller?.playlist = Playlist(name: "20210828中大紅襪Minor聯盟賽[F分威]vs[B勇士]", url: URL(string: "https://youtu.be/-8xl5ljrzpE"))
        default:
            break
        }
        return controller
    }
    */
}
