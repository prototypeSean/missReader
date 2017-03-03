//
//  ViewController.swift
//  missReader
//
//  Created by elijah on 2017/3/3.
//  Copyright © 2017年 elijah. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController ,UITextViewDelegate{
    // MARK:story board
    @IBOutlet weak var text_input_box: UITextView!
    @IBAction func reset_text_box_btn(_ sender: Any) {
        text_input_box.text = ""
        text_input_box.resignFirstResponder()
    }
    @IBAction func read_text_box_btn(_ sender: Any) {
        text_input_box.resignFirstResponder()
        self.did_press_read_text_box_box_btn()
    }
    // MARK:var
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")

    // MARK:data source
    override func viewDidLoad() {
        super.viewDidLoad()
        text_input_box.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    // MARK: inertal func
    func did_press_read_text_box_box_btn(){
        myUtterance = AVSpeechUtterance(string: text_input_box.text)
        myUtterance.rate = 0.3
        synth.speak(myUtterance)
        
    }
    
    
    // MARK:delegate
    

}

