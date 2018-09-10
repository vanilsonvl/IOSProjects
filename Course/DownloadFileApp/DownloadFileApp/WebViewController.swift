//
//  WebViewController.swift
//  DownloadFileApp
//
//  Created by Vanilson NiLL on 03/09/2018.
//  Copyright © 2018 Vanilson NiLL. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        let url: URL! = URL(string: "http://www.pdf995.com/samples/pdf.pdf")
//        webView.load(URLRequest(url: url))
        let documentsUrl:URL = (FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first as URL?)!
        let destinationFileUrl = documentsUrl.appendingPathComponent("downloadedFile.pdf")
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
        
        let request = URLRequest(url:url!)
        
        let task = session.downloadTask(with: request) { (tempLocalUrl, response, error) in
            if let tempLocalUrl = tempLocalUrl, error == nil {
                // Success
                if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                    print("Successfully downloaded. Status code: \(statusCode)")
                }
                
                do {
                    try FileManager.default.copyItem(at: tempLocalUrl, to: destinationFileUrl)
                } catch (let writeError) {
                    print("Error creating a file \(destinationFileUrl) : \(writeError)")
                }
                
            } else {
                print("Erro");
            }
        }
        task.resume()
        label.text = "Carregado"
    }
    

}
