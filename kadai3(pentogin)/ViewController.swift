//
//  ViewController.swift
//  kadai3(pentogin)
//
//  Created by 小竹啓太 on 2021/06/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwicth: UISwitch!
    
    @IBOutlet private weak var leftLabel: UILabel!
    @IBOutlet private weak var rightLabel: UILabel!
    
    @IBOutlet private weak var resultLabel: UILabel!
      
    @IBAction func resultButton(_ sender: Any) {
    //left,rightのtextFieldをstring型からInt型に変更する
        let leftText = Int(leftTextField.text ?? "") ?? 0
        let rightText = Int(rightTextField.text ?? "") ?? 0
        
    //左側のスイッチのオンの時は−、オフの時は＋の機能をつける
        let answerNumber1: Int
        if  leftSwitch.isOn {
            answerNumber1 = -leftText
        } else {
            answerNumber1 = leftText
        }
        leftLabel.text = String(answerNumber1)
        
    //右側のスイッチのオンの時は−、オフの時は＋の機能をつける
        let answerNumber2: Int
        if rightSwicth.isOn {
            answerNumber2 = -rightText
        } else {
            answerNumber2 = rightText
        }
        rightLabel.text = String(answerNumber2)
        
    //左右の計算結果をラベルに出すためにint型→string型に変更する
        resultLabel.text = String(answerNumber1 + answerNumber2)
    }
}

