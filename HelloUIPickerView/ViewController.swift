//
//  ViewController.swift
//  HelloUIPickerView
//
//  Created by 王麒翔 on 2022/12/11.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    // UIPickerView 取資料 // UIPickerViewDataSource 協定： numberOfComponents, pickerView 實作
    // UIPickerView 取資料 // UIPickerViewDelegate 協定： pickerView 實作

    let numberArray = ["1","2","3","4","5","6","7","8"]
    let fruitArray = ["apple", "banana", "mango", "watermelon"]
    
    // 選單有幾個 column 欄位 // how many component in picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // 選單欄位有幾個 option 選項 // how many row in component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // 第0個欄位
        if component == 0 {
            return numberArray.count
        } else {
            return fruitArray.count
        }
    }
    
    // 設定 option 選項的內容
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return numberArray[row]
        } else {
            return fruitArray[row]
        }
    }
    
    // 設定 選單觸發事件
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print("number: \(numberArray[row])")
        } else {
            print("fruit: \(fruitArray[row])")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

