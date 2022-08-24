//  Created by Doris W.L. Chang on 2022/7/31.
//

import UIKit
import AVFoundation

class HoorayViewController: UIViewController {
    var members = [
        Members(eName: "Alex", no: "#9", cName: "陳朋懋", type: "R/R", pic: "AlexBat", hooray: "轟轟～全壘打！\n轟轟～全壘打！\n強棒出擊！9️⃣是朋懋！", music: "Alex", musicExt: "mp4"), Members(eName: "Eason", no: "#12", cName: "吳侑勳", type: "R/L", pic: "EasonBat", hooray: "Woosa Woosa 吳侑勳，\nSuper Eason 好神氣，\n棒棒安打轟出去！", music: "Eason", musicExt: "mp3"), Members(eName: "Ulli", no: "#89", cName: "黃小峪", type: "L/L", pic: "UlliBat", hooray: "Ulli Ulli 一棒千里，\nUlli Ulli 無人能敵！", music: "Ulli", musicExt: "mp4"), Members(eName: "Henry", no: "#56", cName: "葉泓亨", type: "L/L", pic: "HenryBat", hooray: "分威 Henry 好威好威，\n全力揮擊，得分有你！", music: "Henry", musicExt: "m4a"), Members(eName: "Eddie", no: "#1", cName: "陳廷恩", type: "R/R", pic: "EddieBat", hooray: "Eddie Eddie 強棒出擊，\n打擊出去So Happy!", music: "Eddie", musicExt: "m4a"), Members(eName: "Peggy", no: "#42", cName: "陳沛萮", type: "R/R", pic: "PeggyBat", hooray: "Peggy Peggy 腳程第一，\n轟去外野超Easy! ", music: "Peggy", musicExt: "mp3"), Members(eName: "Loris", no: "#79", cName: "顏明淵", type: "R/R", pic: "LorisBat", hooray: "Loris強 Loris棒，分威強棒顏明淵，\n安打安打無極限，HR HR越過天!", music: "Loris", musicExt: "mp4"), Members(eName: "Bruce", no: "#60", cName: "游敏鎬", type: "R/R", pic: "BruceBat", hooray: "6666 60號，分威 分威 游敏鎬，\nBruce的打擊力賣號!", music: "Bruce", musicExt: "mp3"), Members(eName: "Benson", no: "#45", cName: "杜秉家", type: "R/R", pic: "BensonBat", hooray: "分威強棒杜秉家，Benson Benson你最神，\n四十五號全壘打~全壘打!", music: "Benson", musicExt: "mp4"), Members(eName: "Ricky", no: "#20", cName: "葉泓辰", type: "R/R", pic: "RickyBat", hooray: "Ricky Ricky 小不點，\n勇敢一點點，球打遠一點!", music: "Ricky", musicExt: "m4a"), Members(eName: "Gary", no: "#38", cName: "賴柏諺", type: "R/R", pic: "GaryBat", hooray: "耶耶耶耶 賴柏諺，\n分威強打 賴柏諺，\n一分兩分 得分耶，\nGary的打擊 讓你驚艷!", music: "Gary", musicExt: "mp4"), Members(eName: "Tommy", no: "#13", cName: "程紹宥", type: "R/R", pic: "TommyBat", hooray: "Tommy Tommy最威風，\n轟出安打向前衝!", music: "Tommy", musicExt: "m4a"), Members(eName: "Sean", no: "#55", cName: "謝君尚", type: "R/R", pic: "SeanBat", hooray: "君尚轟~!君尚轟~!轟到看台上，\nHome run Home run 謝君尚!", music: "Sean", musicExt: "mp3")
    ]
    var index = 0
    var player: AVPlayer?
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
        player = AVPlayer(url: url!)
        player?.play()
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
    override func viewWillDisappear(_ animated: Bool) {
        player?.pause()
    }
}

