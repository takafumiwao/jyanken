//
//  ViewController.swift
//  jyanken
//
//  Created by 岩男高史 on 2018/12/05.
//  Copyright © 2018 岩男高史. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var mybutton: UIButton!
  
  @IBOutlet weak var imageview: UIImageView!
  
  @IBOutlet weak var label: UILabel!
  
  //押すとジャンケン発動
  @IBAction func button(_ sender: UIButton) {
    //ランダムに変える
    let random = arc4random_uniform(3)
    print(random)
    
    //0の場合グー
    if random == 0 {
     imageview.image = UIImage(named: "gu")
      //ラベルも変える
     label.text = "グー"
    } else if random == 1 {
      //1の場合チョキ
      imageview.image = UIImage(named: "choki")
      label.text = "チョキ"
    } else if random == 2 {
      //2の場合
      imageview.image = UIImage(named: "pa")
      label.text = "パー"
    }
    
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    //背景色を変える
    self.view.backgroundColor = #colorLiteral(red: 0.1137254902, green: 0.9137254902, blue: 0.5843137255, alpha: 1)
    //imageviewを自動的にサイズを合わせる
    imageview.contentMode = UIView.ContentMode.scaleAspectFit
//    self.view.addSubview(imageview)
    
  }


}

