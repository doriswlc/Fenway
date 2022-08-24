//
//  PlayYTViewController.swift
//  Fenway
//
//  Created by doriswlc on 2022/8/24.
//

import UIKit
import WebKit

class PlayYTViewController: UIViewController {
    var playlist: Playlist!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: playlist.url!)
        webView.load(request)
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
