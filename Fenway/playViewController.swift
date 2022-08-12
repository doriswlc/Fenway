//  Created by Doris W.L. Chang on 2022/7/31.
//

import UIKit
import AVFoundation

class playViewController: UIViewController {
    var members = [
        Members(eName: "Alex", no: "#9", cName: "陳朋懋", type: "R/R", pic: "AlexBat", hooray: "轟轟～全壘打！\n轟轟～全壘打！\n強棒出擊！9️⃣是朋懋！", music: "Alex", musicExt: "mp4"), Members(eName: "Eason", no: "#12", cName: "吳侑勳", type: "R/L", pic: "EasonBat", hooray: "Woosa Woosa 吳侑勳，\nSuper Eason 好神氣，\n棒棒安打轟出去！", music: "Eason", musicExt: "mp3"), Members(eName: "Ulli", no: "#89", cName: "黃小峪", type: "L/L", pic: "UlliBat", hooray: "Ulli Ulli 一棒千里，\nUlli Ulli 無人能敵！", music: "Ulli", musicExt: "mp4"), Members(eName: "Henry", no: "#56", cName: "葉泓亨", type: "L/L", pic: "HenryBat", hooray: "分威 Henry 好威好威，\n全力揮擊，得分有你！", music: "Henry", musicExt: "m4a")
    ]
    var index = 0
    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var eNameLabel: UILabel!
    @IBOutlet weak var noLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var cNameLabel: UILabel!
    @IBOutlet weak var hoorayLabel: UILabel!
    @IBOutlet weak var preButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        preButton.setImage(UIImage(systemName: "arrowshape.turn.up.left"), for: .normal)
        nextButton.setImage(UIImage(systemName: "arrowshape.turn.up.right"), for: .normal)
        updateUI()
    }
    
    func updateUI() {
        picImageView.image = UIImage(named: members[index].pic)
        eNameLabel.text = members[index].eName
        noLabel.text = members[index].no
        typeLabel.text = members[index].type
        cNameLabel.text = members[index].cName
        hoorayLabel.text = members[index].hooray
        let url = Bundle.main.url(forResource: members[index].music, withExtension: members[index].musicExt)
        let player = AVPlayer(url: url!)
        print(url!)
        player.play()
    }

    @IBAction func preButton(_ sender: UIButton) {
        index -= 1
        if index < 0 {
            index = index + members.count
        }
        updateUI()
    }
    @IBAction func nextBotton(_ sender: Any) {
        index = (index + 1) % members.count
        updateUI()
    }
    
}

