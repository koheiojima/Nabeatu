//
//  ViewController.swift
//  nabeatsu
//
//  Created by litech on 2015/03/11.
//  Copyright (c) 2015年 litech. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var number:Int=0
    @IBOutlet var label: UILabel!
    @IBOutlet var faceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(0)
    }
    
    func isAho() ->Bool{
        //問題1: ３の倍数かどうか調べる
        if number%3==0{
            return true
        }
        
        //問題2
       if number%10==3{
           return true }
        
        //問題3,問題4
       // if number/10%10==3{
         //   return true
        //}
        //問題4をやるときは問題3の答えをコメントアウトしてから書こう
        var a:Int
        a=number
        while(a != 0){
            if(a%10==3){
                return true
            }else{
                a=a/10
            }
        } 
        
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        label.text = String(number)
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
