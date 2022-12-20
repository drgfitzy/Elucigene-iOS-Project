

import UIKit
import AVFoundation


let kSoundPop = "popSound.mp3"
let kSoundLevelUp = "levelUpSound.mp3"
//let KSoundLoseLife = "loseLifeSound.mp3"


class SoundManager: NSObject {
    var soundPlayers = Dictionary<String, AVAudioPlayer>()
    
    
    func startLoopingSound(_ fileName: String, volume: Float){
    let player = playerForFile(fileName)
        player.volume = volume
        player.numberOfLoops = -1
        player.play()
    
    }
    
    func stopLoopingSound(_ fileName: String) {
        playerForFile(fileName).stop()
    }
   
    func playSound(_ fileName: String){
        let player = playerForFile(fileName)
        
        player.play()
    }
    
    fileprivate func playerForFile(_ fileName: String) -> AVAudioPlayer {
        if let existingPlayer = soundPlayers[fileName] {
        return existingPlayer
        
        
        }
    
    let fileURL = Bundle.main.url(forResource: fileName, withExtension: nil)
        
    let newPlayer: AVAudioPlayer!
    do {
        newPlayer = try AVAudioPlayer(contentsOf: fileURL!)
    } catch _ {
        newPlayer = nil
    }
        soundPlayers[fileName] = newPlayer
        return newPlayer
    
    
    }
   
}
