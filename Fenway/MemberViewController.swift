//
//  MemberViewController.swift
//  Fenway
//
//  Created by doriswlc on 2022/8/25.
//

import UIKit
import AVKit

class MemberViewController: UIViewController {
    var member: Members!
    @IBOutlet weak var picImage: UIImageView!
    @IBOutlet weak var eName: UILabel!
    @IBOutlet weak var cName: UILabel!
    @IBOutlet weak var no: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var hooray: UILabel!
    @IBOutlet weak var words: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picImage.image = UIImage(named: member.pic)
        eName.text = member.eName
        cName.text = member.cName
        no.text = member.no
        type.text = member.type
        hooray.text = member.hooray
        words.text = member.words
        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func playHooray(_ coder: NSCoder) -> AVPlayerViewController? {
        let controller = AVPlayerViewController(coder: coder)
        let url = Bundle.main.url(forResource: member.music, withExtension: member.musicExt)
        controller?.player = AVPlayer(url: url!)
        controller?.player?.play()
        return controller
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
