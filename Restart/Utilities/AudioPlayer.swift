//
//  AudioPlayer.swift
//  Restart
//
//  Created by Musa Lawrence on 5/17/23.
//

import Foundation
import AVFoundation


var audioPlayer: AVAudioPlayer?

func playSound(resourceName: String, mediaType: String) {
    if let path = Bundle.main.path(forResource: resourceName, ofType: mediaType){
        do {
            audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play() 
        }
    }
}
