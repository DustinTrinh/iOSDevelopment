//
//  DetailViewController.swift
//  BlogReader
//
//  Created by Dustin Trinh on 2018-12-30.
//  Copyright © 2018 DustyTheCutie. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
   


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let blogWebview = self.webView {
                blogWebview.loadHTMLString((detail.value(forKey: "content") as? String)!, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

