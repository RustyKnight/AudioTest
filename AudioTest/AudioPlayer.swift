//
//  AudioPlayer.swift
//  AudioTest
//
//  Created by Shane Whitehead on 20/07/2016.
//  Copyright © 2016 KaiZen. All rights reserved.
//

import Foundation
import AVFoundation

public class AudioPlayer {
	
	public init() {
		
	}
	
	var audioPlayer: AVAudioPlayer?
	
	public func play(audio source: URL) throws {
		try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
		try AVAudioSession.sharedInstance().setActive(true)
		
		audioPlayer = try AVAudioPlayer(contentsOf: source)
		guard let audioPlayer = audioPlayer else {
			return
		}
		audioPlayer.prepareToPlay()
		audioPlayer.play()
	}
	
	public func stop() {
		guard let audioPlayer = audioPlayer else {
			return
		}
		audioPlayer.stop()
		self.audioPlayer = nil
	}
}
