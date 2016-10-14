//
//  ViewController.swift
//  darth-vader-comes-in
//
//  Created by Yuan Fu on 10/12/16.
//  Copyright © 2016 YuanFu Co. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let musicName = "imperial_march"
    let musicExtention = "wav"
    
    var audioplayer: AVAudioPlayer?
    var isPlaying = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black;
        
        let path = Bundle.main.url(forResource: musicName, withExtension: musicExtention)
        
        do{
            try audioplayer = AVAudioPlayer(contentsOf: path!)
        } catch {
            print(error)
        }
        
        audioplayer?.play()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

