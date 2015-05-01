//
//  ViewController.swift
//  CommunicationSupportTool-iOS
//
//  Created by 西村顕 on 2015/05/01.
//  Copyright (c) 2015年 KenNishimura. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func KoufukuAction(sender: AnyObject) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.KanjyouFlag = 0 //appDelegateの変数を操作
    }
    
    @IBAction func KenoAction(sender: AnyObject) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.KanjyouFlag = 1 //appDelegateの変数を操作
    }
    
    @IBAction func KanashimiAction(sender: AnyObject) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.KanjyouFlag = 2 //appDelegateの変数を操作
    }
    
    @IBAction func IkariAction(sender: AnyObject) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.KanjyouFlag = 3 //appDelegateの変数を操作
    }
    
    @IBAction func OshoreAction(sender: AnyObject) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.KanjyouFlag = 4 //appDelegateの変数を操作
    }
    
    @IBAction func OdorokiAction(sender: AnyObject) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.KanjyouFlag = 5 //appDelegateの変数を操作
    }
}