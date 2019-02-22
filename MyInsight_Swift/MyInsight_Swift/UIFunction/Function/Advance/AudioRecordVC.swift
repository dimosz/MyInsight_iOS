//
//  AudioRecordVC.swift
//  MyInsight_Swift
//
//  Created by SongMenglong on 2019/2/20.
//  Copyright © 2019 SongMengLong. All rights reserved.
//

import UIKit

class AudioRecordVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let myPlayer: QueuePlayer = QueuePlayer()
        myPlayer.startPlay()
        myPlayer.startRecord()
        myPlayer.recordBack = {(data: Data) in
            myPlayer.player(with: data)
        }
        
    }
    
    
    // MARK: 开始录制
    @IBAction func startVoiceRecordButtonAction(_ sender: UIButton) {
        //JWAudioRecode
        
        //AQCapture().startRecord()
        
        
    }
    
    // MARK: 停止录制
    @IBAction func stopVoiceRecordButtonAction(_ sender: UIButton) {
        
        //AQCapture().stopRecord()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
