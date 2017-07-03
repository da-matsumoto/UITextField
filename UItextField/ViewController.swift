//
//  ViewController.swift
//  UItextField
//
//  Created by 松本大佑 on 2017/07/03.
//  Copyright © 2017年 daisuke.matsumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  private var myTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    //UITextFieldの配置するx,yと幅と高さを設定
    let tWidth: CGFloat = 200
    let tHeight: CGFloat = 30
    let posX: CGFloat = (self.view.bounds.width - tWidth)/2
    let posY: CGFloat = (self.view.bounds.height - tHeight)/2
    
    //UITextFieldを作成する
    myTextField = UITextField(frame: CGRect(x: posX, y: posY, width: tWidth, height: tHeight))
    
    //表示する文字を代入する
    myTextField.text = "Hello TextField"
    
    //Delegateを自身に設定する
    myTextField.delegate = self
    
    //枠を設定する
    myTextField.borderStyle = .roundedRect
    
    //クリアボタンを追加
    myTextField.clearButtonMode = .whileEditing
    
    
    //Viewに追加する
    self.view.addSubview(myTextField)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //UITextFieldが編集された直前に呼ばれる
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print("textFieldDidBeginEditing: \(textField.text!)")
  }
  
  //UITextFieldが編集された直後に呼ばれる
  func textFieldDidEndEditing(_ textField: UITextField) {
    print("textFieldDidEndEditing: \(textField.text!)")
  }
  
  //改行ボタンが押されたときに呼ばれる
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print("textFieldShouldReturn \(textField.text!)")
    
    // 改行ボタンが押されたらKeyboardを閉じる処理.
    textField.resignFirstResponder()
    
    return true
  }

}

