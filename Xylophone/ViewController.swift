import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
      playSound(sender.currentTitle!)
      print(sender.backgroundColor)
      //print(sender.title(for: .normal)!)
      print(sender.currentTitle)
      //print(sender.titleLabel?.text)
      
    }
  
  func playSound(_ soundName: String) {
    let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    
    player.play()
  }
}


//these code snippet perform the same task above
//print(sender.title(for: .normal)!)
//print(sender.currentTitle)
//print(sender.titleLabel?.text)

