//
//  TableViewController.swift
//  CommunicationSupportTool-iOS
//
//  Created by 西村顕 on 2015/05/01.
//  Copyright (c) 2015年 KenNishimura. All rights reserved.
//

import UIKit
import AVFoundation

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AVAudioPlayerDelegate {
    
    // TableView
    @IBOutlet var tableView: UITableView!
    
    // 変数宣言
    var myAudioPlayer : AVAudioPlayer!
    
    // セルに表示するテキスト
    let texts = ["ありがとうございます",
                "いいえ",
                "いえ、そんなことないですよ",
                "おっしゃる通りです",
                "さすがですね",
                "すごいですね",
                "すみません",
                "ぜひおねがいします",
                "はい",
                "ひどいですね",
                "大丈夫？",
                "用事があるので失礼します",
                "知りませんでした",
                "結構です"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    // セルの内容を変更
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = texts[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        var KanjyouFlag:Int = appDelegate.KanjyouFlag!
        
        // NSLog("KanjyouFlag:%i", KanjyouFlag)
        
        // セルがタップされた場合
        switch(KanjyouFlag) {
            case -1:
                break
            case 0:
                // ファイルの選択
                selectAudioFile(texts[indexPath.row] + "(幸福感)")
                // myAudioPlayerの再生.
                myAudioPlayer.play()
                break
            case 1:
                // ファイルの選択
                selectAudioFile(texts[indexPath.row] + "(嫌悪)")
                // myAudioPlayerの再生.
                myAudioPlayer.play()
                break
            case 2:
                // ファイルの選択
                selectAudioFile(texts[indexPath.row] + "(悲しみ)")
                // myAudioPlayerの再生.
                myAudioPlayer.play()
                break
            case 3:
                // ファイルの選択
                selectAudioFile(texts[indexPath.row] + "(怒り)")
                // myAudioPlayerの再生.
                myAudioPlayer.play()
                break
            case 4:
                // ファイルの選択
                selectAudioFile(texts[indexPath.row] + "(恐れ)")
                // myAudioPlayerの再生.
                myAudioPlayer.play()
                break
            case 5:
                // ファイルの選択
                selectAudioFile(texts[indexPath.row] + "(驚き)")
                // myAudioPlayerの再生.
                myAudioPlayer.play()
                break
            default:
                break
        }
    }
    
    func selectAudioFile(fileName:NSString) {
        //再生する音源のURLを生成.
        let soundFilePath : NSString = NSBundle.mainBundle().pathForResource(fileName as String, ofType: "m4a")!
        let fileURL : NSURL = NSURL(fileURLWithPath: soundFilePath as String)!
        
        //AVAudioPlayerのインスタンス化.
        myAudioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        
        //AVAudioPlayerのデリゲートをセット.
        myAudioPlayer.delegate = self
    }
    
    //音楽再生が成功した時に呼ばれるメソッド.
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        println("PlayFinish")
    }
    
    //デコード中にエラーが起きた時に呼ばれるメソッド.
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!, error: NSError!) {
        println("Error")
    }
}

