//
//  SelectMemberTableViewController.swift
//  Fenway
//
//  Created by doriswlc on 2022/8/25.
//

import UIKit

class SelectMemberTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBSegueAction func showMember(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> MemberViewController? {
        let controller = MemberViewController(coder: coder)
        switch segueIdentifier {
        case "#9":
            controller?.member = Members(eName: "Alex", no: "#9", cName: "陳朋懋", type: "R/R", pic: "Alex", words: "在這個球季中，我學到了一些投球與打擊的技巧，而且也擔當隊上的投手，每當投球時，面對打擊者的壓力以及滿壘兩出局時，能投出一個三好球將對手三振，那一瞬間，我不相信這會發生，結束後我覺得非常開心，還有我能克服滿壘壓力以及隊員對投手信心，且幫我化解危機，我非常感謝大家，這也是我參加球隊最興奮的事。\n這個球季雖然還沒結束，但是在這之前，我就已經有非常多的危機，隊友也一次次幫我化解，我非常感激他們，謝謝你們幫我化解危機，也幫助球隊拿下勝利。", hooray: "轟轟～全壘打！\n轟轟～全壘打！\n強棒出擊！9️⃣是朋懋！", music: "Alex", musicExt: "mp4")
        case "#12":
            controller?.member = Members(eName: "Eason", no: "#12", cName: "吳侑勳", type: "R/L", pic: "Eason", words: "我在中大紅襪學到了團隊合作跟隊友搭配，聽從教練的指示再行動，跟大家一起打贏比賽，打贏比賽的時候大家很開心，輸的時候沒有人會開心，所以每次要比賽時大家都盡全力的比賽，落後時絕對不能放棄，如果放棄的話就輸了，我學到了不能放棄、不氣餒、不犯規，這些是我三年以來學到的知識，希望還可以再跟隊友一起拿下冠軍獎盃，我想要和隊友一起打球獲得勝利，希望有機會的話可以跟隊友打一場比賽。", hooray: "Woosa Woosa 吳侑勳，\nSuper Eason 好神氣，\n棒棒安打轟出去！", music: "Eason", musicExt: "mp3")
        case "#89":
            controller?.member = Members(eName: "Ulli", no: "#89", cName: "黃小峪", type: "L/L", pic: "Ulli", words: "今年是我在中大紅襪的第二年，我覺得在中大紅襪能學到很多東西，例如：打擊動作。我覺得今年我們隊最特別的事情，就是我們隊每一個人都要自己想出自己個人獨特的加油口號，像我的加油口號就是「Ulli Ulli一棒千里，Ulli Ulli無人能敵」，我們本來還設計了出場音樂，但是後來因為疫情比賽都暫停的關係，所以沒有派上用場。上半季我雖然沒有打得很好，靠著隊友認真選球，適時安打，積極上壘，後來我們還是得到了上半季冠軍。\n最後我要謝謝教練們，還有隊爸隊媽的照顧教導。", hooray: "Ulli Ulli 一棒千里，\nUlli Ulli 無人能敵！", music: "Ulli", musicExt: "mp4")
        case "#56":
            controller?.member = Members(eName: "Henry", no: "#56", cName: "葉泓亨", type: "L/L", pic: "Henry", words: "四年級了，是我最後一年Minor，來到分威隊，教練調整了我的打擊姿勢和投球動作，讓我可以更加進步。上半季我們奪得了冠軍，在分威這一年我打了好多支安打，我還擊出最想完成的場內全壘打，那時對手正好是我的同班同學⎯李奕德，記得那時三年級拿傳單給他，邀請他一起來打棒球，那時他還覺得我幹嘛給他這個，後來他進來中大打球覺得很好玩，沒想到他卻投了一球我最想完成的場內全壘打，真的很開心是由我的好朋友投的球。\n以前我的守備位置總是在外野，後來擔任捕手後，就在這兩個守備位置輪替，在分威阿煥教練讓我多練習投手投球，給了我登板的機會，在投手丘上真的很緊張，一開始我都一直暴投，覺得很難過好丟臉，為什麼投得這麼差！但是我不想放棄難得可以當投手，所以我很努力，一次一次慢慢投，雖然還是沒有投得很好，但很感謝教練給我練習。揮棒打擊在今年我也覺得力量變得更大，可以打到很遠的外野，是Nixon教練給我的指導，一再調整我的動作，很謝謝他。\n希望疫情快點結束，讓我們能回到球場上和大家開心打球，分威練球很累可是好開心，因為有大家團結在一起。", hooray: "分威 Henry 好威好威，\n全力揮擊，得分有你！", music: "Henry", musicExt: "m4a")
        case "#1":
            controller?.member = Members(eName: "Eddie", no: "#1", cName: "陳廷恩", type: "R/R", pic: "Eddie", words: "我是分威隊 1號 Eddie 陳廷恩，目前就讀國小四年級，今年要升五年級，在球隊守備位置是捕手，我是個右投右打。\n在紅襪棒球學院裡跟Nixon隊教練與阿煥教練，學到很多關於棒球的知識跟動作的技巧，例如：滑壘、傳球墊步、正確傳接球、正確打擊姿勢…等等的棒球技巧，體驗到我從來沒有接觸過的棒球領域。\n我最難忘的事，就是我第一次比賽擔任分威隊先發捕手的時候，順利達成教練指派的任務，得到了Nixon總教練的鼓勵，並在賽後獲得教練頒發獎勵〝歐打單〞一張，我對自己未來的期許，就是能夠加強自身捕手接球的捕球能力和丟球時的穩定性，另外除了捕手的位置，我也希望能增加自我投球威力，持續加強身體與手臂的強度，在將來的比賽能夠用投手身分上場比賽，取得球隊的勝利！", hooray: "Eddie Eddie 強棒出擊，\n打擊出去So Happy!", music: "Eddie", musicExt: "m4a")
        case "#42":
            controller?.member = Members(eName: "Peggy", no: "#42", cName: "陳沛萮", type: "R/R", pic: "Peggy", words: "我在中大紅襪學到了打擊、接球和傳球，這個球季中令我最難忘的一件事情是在下半季的第一場比賽我打出了我的第一支安打，在上半季都沒打出安打，在打出去的時候我本來以為會被接殺，沒想到沒接到，我就趕快跑，就跑到了二壘了，後來下一位打者又打出一支二壘安打，然後我就跑到本壘得分。我希望我的跑步快一點，守備和打擊可以好一點，跑步快一點不但可以在學校大隊接力得第一名，還可以在棒球跑壘的時候，一壘安打變成二壘安打，二壘安打變成三壘安打，三壘安打變成全壘打，這樣就可以多推進一個壘包。", hooray: "Peggy Peggy 腳程第一，\n轟去外野超Easy! ", music: "Peggy", musicExt: "mp3")
        case "#79":
            controller?.member = Members(eName: "Loris", no: "#79", cName: "顏明淵", type: "R/R", pic: "Loris", words: "休息了一年，我再度加入中大紅襪打棒球。每個禮拜我都很期待週六的到來，因為可以做我最愛的運動「打棒球」。很開心我可以在分威隊，有很好又認真的教練團和隊友們，大家都很努力的練習。\n平常的日常團練中，謝謝Nixon和阿煥教練的教導，讓我開始有機會練習投球，並指導我揮棒姿勢及如何加強守備。\n每當聯盟比賽時，心情就很興奮！最開心的是自己打出全壘打送隊友和自己回本壘的時刻，以及我們隊拿下勝利的喜悅，非常開心可以重拾球棒打棒球。", hooray: "Loris強 Loris棒，分威強棒顏明淵，\n安打安打無極限，HR HR越過天!", music: "Loris", musicExt: "mp4")
        case "#60":
            controller?.member = Members(eName: "Bruce", no: "#60", cName: "游敏鎬", type: "R/R", pic: "Bruce", words: "我在中大紅襪學到了團隊合作和隊員配合的重要性，棒球是一個團體運動，所以在場上要互相幫助，在場下的要喊聲提高團隊氣勢。不能為了自己的名聲而不團結，因為這樣球隊會變成一盤散沙。隊員配合是一個很重要的東西，如果你跟隊友默契不好，自然的失誤就會比較多，所以每週的團練非常重要。\n我在中大紅襪最難忘的事是下半季第一場比賽，因為我打出了我這一整賽季的第一支二壘安打，我當時真的好開心，我想這就是我上半季努力的結果吧，謝謝教練的指導和媽媽的支持，謝謝大家。", hooray: "6666 60號，分威 分威 游敏鎬，\nBruce的打擊力賣號!", music: "Bruce", musicExt: "mp3")
        case "#45":
            controller?.member = Members(eName: "Benson", no: "#45", cName: "杜秉家", type: "R/R", pic: "Benson", words: "我在中大紅襪隊學到了棒球的知識，也學到了團隊合作的精神。\n我最難忘的事，是上半季我們得到冠軍，得到上半季冠軍是一件很不容易的事，我要感謝我的教練及隊友們，沒有大家的努力合作，分威隊無法贏得冠軍的！\n我對未來的期許，希望我的守備及打擊能再更進步一點。", hooray: "分威強棒杜秉家，\nBenson Benson你最神，\n四十五號全壘打~全壘打!", music: "Benson", musicExt: "mp4")
        case "#20":
            controller?.member = Members(eName: "Ricky", no: "#20", cName: "葉泓辰", type: "R/R", pic: "Ricky", words: "我今年小學二年級，也是我第二年在中大打棒球，也是和哥哥最後一年在Minor同隊了。記得去年我每次站在打擊區都很怕球，常常後退倒棒就這樣out，升上二年級，我也開始慢慢習慣投手的球速，從本來倒棒到不敢出棒等保送上壘，不過後來我也很努力的揮棒了，雖然還是常常揮不到出局，覺得好丟臉想哭，媽媽都會安慰我再給我加油！我要謝謝Nixon教練、阿煥教練還有舜如教練，他們都會在我下場後跟我說要注意的揮棒動作還有要看好球再揮，上球季我們得了冠軍超開心的！我後來在下半季真的有擊出安打，是我在聯盟賽的首安，我很努力的跑上一壘！在分威我最喜歡和Gary一起練球了，他很好笑，和他一起玩很高興，Gary和我一樣是二年級，可是他卻比我厲害很多，希望有一天我也可以這麼棒！", hooray: "Ricky Ricky 小不點，\n勇敢一點點，球打遠一點!", music: "Ricky", musicExt: "m4a")
        case "#38":
            controller?.member = Members(eName: "Gary", no: "#38", cName: "賴柏諺", type: "R/R", pic: "Gary", words: "這學期之前我都守外野，有時候也會守內野，而且我還有當過投手，所以有時會坐板凳，因為實力不夠強，但我還是很開心。\n這兩年我學到投球時手要收，還有怎麼接滾地球、高飛球，傳接球、拋球，要跑到定位再接球，若沒有跑到定位接球，漏球機率很高。\n我覺得很可惜的是，因為有疫情，如果沒疫情的話可以繼續打棒跟大家一起運動，希望新冠肺炎趕快走，這樣才可以回去球場打球。", hooray: "耶耶耶耶 賴柏諺，\n分威強打 賴柏諺，\n一分兩分 得分耶，\nGary的打擊 讓你驚艷!", music: "Gary", musicExt: "mp4")
        case "#13":
            controller?.member = Members(eName: "Tommy", no: "#13", cName: "程紹宥", type: "R/R", pic: "Tommy", words: "我從大班就喜歡棒球，本來以為棒球只是打出去和接到而已，進入球隊才發現不只有打出去和接到而已，還有一些基本動作，透過教練的教導我的基本動作都有進步、球也傳的比較直，記得有一次團練我們先練滑壘，再綜合守備練習，那天褲子、鞋子超髒的。在聯盟賽時教練教我們要會選球、不要撈球，但有好球進來也要用力一揮，雖然我的表現還不太好但會繼續努力學習，希望也能打出全壘打。", hooray: "Tommy Tommy最威風，\n轟出安打向前衝!", music: "Tommy", musicExt: "m4a")
        case "#55":
            controller?.member = Members(eName: "Sean", no: "#55", cName: "謝君尚", type: "R/R", pic: "Sean", words: "我從小就喜歡棒球，第一次加入社區球隊就選擇中大紅襪棒球隊，有幸分組到「分威隊」。在每星期的活動中，學到許多棒球基本常識、累積比賽經驗以及團隊合作精神。有次練習賽，我打了一支全壘打，雖然不是正式比賽，但教練說了一句：「比賽就靠你了！」時，頓時覺得一切努力都值得，靠著隊友的努力得到聯盟賽第一名，喜歡與隊友一起並肩作戰的美好時光！期待未來自己的球技能夠一直精進，用認真的態度學習每件事。", hooray: "君尚轟~!君尚轟~!轟到看台上，\nHome run Home run 謝君尚!", music: "Sean", musicExt: "mp3")
        default:
            break
        }
        return controller
    }
    // MARK: - Table view data source
    
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
