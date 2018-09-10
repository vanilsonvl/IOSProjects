//
//  ViewController.swift
//  DownloadFileAlamofireStoreIcloud
//
//  Created by Vanilson NiLL on 08/09/2018.
//  Copyright © 2018 Vanilson NiLL. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        downloadFile()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func downloadFile() {
        let destination = DownloadRequest.suggestedDownloadDestination(for: .documentDirectory)
       // let url = "http://go.microsoft.com/fwlink/?LinkID=521962" //xlsx
//        let url = "http://www.africau.edu/images/default/sample.pdf" //pdf
        let url = "https://www2.le.ac.uk/Members/davidwickins/old/test.docx/at_download/file" //docx
        
        Alamofire.download(
            url,
            method: .get,
            parameters: [:],
            encoding: JSONEncoding.default,
            headers: nil,
            to: destination).downloadProgress(closure: { (progress) in
                //progress closure
                print("downloading")
//                let alert = UIAlertController(title: "Atenção", message: "Downloading do arquivo", preferredStyle: UIAlertControllerStyle.alert)
//                self.present(alert, animated: true, completion: nil)
            }).response(completionHandler: { (DefaultDownloadResponse) in
                //here you able to access the DefaultDownloadResponse
                //result closure
                print("finalizado")
//                let alert = UIAlertController(title: "Atenção", message: "Download finalizado", preferredStyle: UIAlertControllerStyle.alert)
//                self.present(alert, animated: true, completion: nil)
            })
    }

}

