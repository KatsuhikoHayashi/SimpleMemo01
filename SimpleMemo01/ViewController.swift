//
//  ViewController.swift
//  SimpleMemo01
//
//  Created by Hayashidesu. on 2015/05/20.
//  Copyright (c) 2015年 Hayashidesu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMemo: UITextField!

    @IBAction func pressSaveBtn(sender: UIButton) {
        println("ボタンが押されました")
        
        let ud = NSUserDefaults.standardUserDefaults()
        ud.setObject(txtMemo.text, forKey: "MEMO")    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ud = NSUserDefaults.standardUserDefaults()
        txtMemo.text = ud.stringForKey("MEMO")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

