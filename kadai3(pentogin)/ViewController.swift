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
        let leftOriginalNumber = Int(leftTextField.text ?? "") ?? 0
        let rightOriginalNumber = Int(rightTextField.text ?? "") ?? 0
        
        //左側のスイッチのオンの時は−、オフの時は＋の機能をつける
        let leftSignedNumber = leftOriginalNumber * (leftSwitch.isOn ? -1 : 1)
        leftLabel.text = String(leftSignedNumber)
        
        //右側のスイッチのオンの時は−、オフの時は＋の機能をつける
        let rightSignedNumber: Int = rightOriginalNumber * (rightSwicth.isOn ? -1 : 1)
        rightLabel.text = String(rightSignedNumber)
        
        //左右の計算結果をラベルに出すためにint型→string型に変更する
        resultLabel.text = String(leftSignedNumber + rightSignedNumber)
    }
}
