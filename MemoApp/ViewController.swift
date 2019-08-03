//
//  ViewController.swift
//  MemoApp
//
//  Created by 豊岡正紘 on 2019/08/03.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate{

    /// メモ
    @IBOutlet weak var textView: UITextView!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // textViewがUITextViewDelegateを使えるようにします。
        textView.delegate = self
        
        //Appdelegateを参照するための定数
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // AppDelegateに定義したlastTextを参照し、textViewに格納する。
        textView.text = appDelegate.lastText
    }

    //テキストが変更されたら呼ばれる
    func textViewDidChange(_ textView: UITextView) {
        // AppDelegateを呼び出して変数に格納します。
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        // AppDelegateに記述した"lastText"に入力されている内容を格納します。
        appDelegate?.lastText = textView.text
    }
}




