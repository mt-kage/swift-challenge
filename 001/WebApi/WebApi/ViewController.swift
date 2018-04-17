//
//  ViewController.swift
//  WebApi
//
//  Created by kageyama_yusuke on 2018/04/17.
//  Copyright © 2018年 aratana inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var urlString: String = "https://api.github.com/search/repositories?q=aratana"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hello world", urlString)
        
        let url = URL(string: urlString)
        
        guard let unwrappedUrl = url else {
            return
        }
        

        let session = URLSession.shared.dataTask(with: unwrappedUrl) { (data, response, error) in
            let backToString = String(data: data!, encoding: String.Encoding.utf8)
            print("data", backToString)
            print("response", response)
            print("error", error)
        }
        session.resume()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

