//
//  SelectYTTableViewController.swift
//  Fenway
//
//  Created by doriswlc on 2022/8/24.
//

import UIKit

class SelectYTTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
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
