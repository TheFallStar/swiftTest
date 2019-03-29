//
//  PlayMusic.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/3/1.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation

//var audioplayer : STKAudioPlayer!
//class PlayMusic:NSObject {
//    @objc static var shared = PlayMusic()
//    private  override init() {
//         audioplayer = STKAudioPlayer.init()
//        var options = STKAudioPlayerOptions()
//        options.flushQueueOnSeek = true
//        options.enableVolumeMixer = true
//        audioplayer = STKAudioPlayer(options:options)
//        audioplayer.meteringEnabled = true
//        audioplayer.volume = 1
//    }
//
//    override func copy() -> Any {
//        return self
//    }
//    
//    override func mutableCopy() -> Any {
//        return self
//    }
//    
// 
//    func reset() {
//        
//    }
//    static func playGold()->Void{
//        let path = Bundle.main.path(forResource: "gold", ofType: "mp3")
//        let datasource = STKAudioPlayer.dataSource(from: NSURL.fileURL(withPath: path ?? ""))
//        audioplayer.play(datasource)
//    }
//    
//    
//     func playSingle( musicName:String )->Void{
//        if(audioplayer.state != .stopped)
//        {
//         audioplayer.stop()
//        }
//        let path = Bundle.main.path(forResource: musicName, ofType: "mp3")
//        let datasource = STKAudioPlayer.dataSource(from: NSURL.fileURL(withPath: path ?? ""))
//        audioplayer.play(datasource)
//    }
//@objc  func stopPlay()  {
//        audioplayer.stop()
//    }
//}

