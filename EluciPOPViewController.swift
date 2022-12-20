

import UIKit
import AVFoundation

class EluciPOPViewController: UIViewController {
    
    
    
    // Score, Lives. Level Labels
    
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var livesLabel: UILabel!
    
    
    lazy var soundManager = SoundManager()
    
    //Views
    
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var scorelevelView: UIView!
    
    
    @IBOutlet weak var scoreBoard: UIView!
    
    
    //Bubbles on View
    
    var redball = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    var orangeball:UIImageView?
    var greenball:UIImageView?
    var animator:UIDynamicAnimator?
    var bubblePopGestureRecognizer: UITapGestureRecognizer?
    var updateTimer:Timer!
    var playing = false
    var score = 0
    //var lives: UInt = 10
    var level = 1
    var updateRate = 0.05
    var difficulty = 0.0
    var gameSpeed = 2.5
    var animationTimer: Timer?
    
    
    let leftBorder = 0
    var rightBorder = 210
    
    var lives = 5
    

    
    
    func restartGame() {
        
        
        //self.view.bringSubviewToFront(self.scorelevelView)
        
        
        rightBorder = Int(view.bounds.width - redball.frame.width)
        
        let startgameAlert = UIAlertController(title: "Play EluciPOP?", message: "Pop as may bubbles as you can!!", preferredStyle: UIAlertController.Style.alert)
        
        startgameAlert.addAction(UIAlertAction(title: "Lets Play!", style: UIAlertAction.Style.default, handler: {(alertAction: UIAlertAction) -> Void in
            self.initGame()}))
        startgameAlert.addAction(UIAlertAction(title: "No Thanks!", style: UIAlertAction.Style.cancel, handler: nil))
       
        self.present(startgameAlert, animated: true, completion: nil)
    
    }
    

    func initGame(){
        
        
        self.view.bringSubviewToFront(self.scorelevelView!)
        
        self.tabBarController?.tabBar.isHidden = true
        
        playing = true
        difficulty = 0.0
        gameSpeed = 5
        
        level = 1
        score = 0
        lives = 5
        
        levelLabel!.text = "\(level)"
        scoreLabel!.text = "\(score)"
        livesLabel!.text = "\(lives)"
        
        redball = UIImageView(image: UIImage(named: "redbubble"))
        greenball = UIImageView(image: UIImage(named: "greenbubble"))
        orangeball = UIImageView(image: UIImage(named: "orangeball"))
        redball.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        redball.frame.origin.y = view.bounds.height - redball.frame.size.height; -10
        redball.center.x = view.bounds.midX
        
        addorangeBalls()
        addgreenBalls()
        addredBalls()
        
        gesturerecognizer()
        
        updateTimer = Timer.scheduledTimer(timeInterval: TimeInterval(updateRate), target: self, selector: #selector(EluciPOPViewController.update(_:)), userInfo: nil, repeats: true)
   
    }

  
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        restartGame()
    }
    
  
    
 
   
    
    //Implement Gesture Recogniser On View
    
    func gesturerecognizer(){
        
        
        let bubblePopGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(EluciPOPViewController.playerTapped(_:)))
        view.addGestureRecognizer(bubblePopGestureRecognizer)
        //bubblePopGestureRecognizer.numberOfTouchesRequired = 1
        //bubblePopGestureRecognizer.numberOfTapsRequired = 1
        
    }
    
    
    
    // Increase game difficulty with timer
    
    @objc func update(_ timer: Timer){
        
        if lives <= 0 {endgame()
            
        }
        
            else if difficulty < 20 {
            difficulty += updateRate
            
        }else{
            difficulty = 0.0
            
            if gameSpeed > 0.5 {
             
                
                level += 1
                
                levelLabel!.text = "\(level)"
            soundManager.playSound(kSoundLevelUp)
                gameSpeed -= 0.5
                
               
               
                
                
            }
        }
    }
    
        

    // End game with Game Over Alert
    
    func endgame(){
        
        
        let endgameAlert = UIAlertController(title: "Game Over", message: "Play Again?", preferredStyle: UIAlertController.Style.alert)
        endgameAlert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(alertAction: UIAlertAction) -> Void in
                self.initGame()}))
            
            self.present(endgameAlert, animated: true, completion: nil)
        
        endgameAlert.addAction(UIAlertAction(title: "No Thanks!", style: UIAlertAction.Style.cancel, handler: nil))
        
        redball.layer.removeAllAnimations()
        orangeball?.layer.removeAllAnimations()
        greenball?.layer.removeAllAnimations()
        updateTimer?.invalidate()
        playing = false
        
         self.tabBarController?.tabBar.isHidden = false
        
    }
    
   

    
    
    //Specify tap gesture location specific to bubbles on screen
    
    
    @objc func playerTapped(_ recognizer:UITapGestureRecognizer){
        
        
        let tapLocation1 = recognizer.location(in: redball.superview)
        if let red = redball.layer.presentation()
        {
        
       if red.frame.contains(tapLocation1) {
            
            animationTimer = Timer.scheduledTimer(timeInterval: TimeInterval(0.05), target: self, selector: #selector(EluciPOPViewController.popredBubble), userInfo: "remove", repeats: false)
            }
            
        }
        
        
        
        let tapLocation2 = recognizer.location(in: orangeball!.superview)
        if let orange = orangeball!.layer.presentation()
        {
            
            if orange.frame.contains(tapLocation2) {
            
            
            animationTimer = Timer.scheduledTimer(timeInterval: TimeInterval(0.05), target: self, selector: #selector(EluciPOPViewController.poporangeBubble), userInfo: "remove", repeats: false)
        }
        
        }
        
        let tapLocation3 = recognizer.location(in: greenball!.superview)
        if let green = greenball!.layer.presentation(){
            
            if green.frame.contains(tapLocation3) {
            
            animationTimer = Timer.scheduledTimer(timeInterval: TimeInterval(0.05), target: self, selector: #selector(EluciPOPViewController.popgreenBubble), userInfo: "remove", repeats: false)
            }
        }
        
        
    }
    
    
    
    // Pop bubble methods (remove from superview)
    
    @objc func popgreenBubble(){
        if self.playing{
            self.score += 1
            self.lives += 1
            self.scoreLabel!.text = "\(self.score)"
            soundManager.playSound(kSoundPop)
            
            self.greenball!.removeFromSuperview()
            

            
        }
        
    }
    
    @objc func popredBubble(){
        if self.playing{
            self.score += 1
            self.lives += 1
            self.scoreLabel!.text = "\(self.score)"
            soundManager.playSound(kSoundPop)
            
            self.redball.removeFromSuperview()
            
        }
        
    }
    
    @objc func poporangeBubble(){
        if self.playing{
            self.score += 1
            self.lives += 1
            self.scoreLabel!.text = "\(self.score)"
            soundManager.playSound(kSoundPop)
            
            self.orangeball!.removeFromSuperview()
            
        }
        
    }
    
    func addorangeBalls(){
        
        if playing {
            var randomBallFrame = CGRect(x: 0, y: -redball.frame.size.height, width: redball.frame.size.width, height: redball.frame.size.height)
            let randomX = arc4random_uniform(UInt32(rightBorder))
            //print("\(randomX)")
            
            randomBallFrame.origin.x = CGFloat(randomX)
            
            orangeball! = UIImageView(image: UIImage(named: "orangebubble"))
            orangeball!.frame = randomBallFrame
            
            self.view.insertSubview(orangeball!, aboveSubview: view)
            
            UIView.animate(withDuration: TimeInterval(gameSpeed), delay: 0.1, options: [UIView.AnimationOptions.allowUserInteraction, UIView.AnimationOptions.curveLinear, UIView.AnimationOptions.allowAnimatedContent], animations: { () -> Void in self.orangeball!.frame.origin.y = self.view.frame.height + self.orangeball!.bounds.height }) { (success:Bool) -> Void in
                
                if self.playing{
                self.lives -= 1
                self.livesLabel!.text = "\(self.lives)"
                }
                
    
            self.orangeball!.removeFromSuperview()
                self.addorangeBalls()
                
                
                
                self.view.bringSubviewToFront(self.scorelevelView!)
                
            }
        }
    }
    func addgreenBalls(){
        
        if playing{
            var randomBallFrame = CGRect(x: 0, y: -redball.frame.size.height, width: redball.frame.size.width, height: redball.frame.size.height)
            let randomX = arc4random_uniform(UInt32(rightBorder))
            
            randomBallFrame.origin.x = CGFloat(randomX)
            
            greenball = UIImageView(image: UIImage(named: "greenbubble"))
            greenball!.frame = randomBallFrame
            
            self.view.insertSubview(greenball!, aboveSubview: view)
            
            UIView.animate(withDuration: TimeInterval(gameSpeed), delay: 0, options: [UIView.AnimationOptions.allowUserInteraction, UIView.AnimationOptions.curveLinear], animations: { () -> Void in self.greenball!.frame.origin.y = self.view.bounds.height + self.greenball!.frame.height }) { (success:Bool) -> Void in
                
                if self.playing{
                self.lives -= 1
                self.livesLabel!.text = "\(self.lives)"
               
                
                }
                
            self.greenball!.removeFromSuperview()
                self.addgreenBalls()
                self.view.bringSubviewToFront(self.scorelevelView!)
                
            }
        }
    }
    
    
    func addredBalls(){
        
        if playing{
            var randomBallFrame = CGRect(x: 0, y: -redball.frame.size.height, width: redball.frame.size.width, height: redball.frame.size.height)
            let randomX = arc4random_uniform(UInt32(rightBorder))
            
            randomBallFrame.origin.x = CGFloat(randomX)
            
            redball = UIImageView(image: UIImage(named: "redbubble"))
            redball.frame = randomBallFrame
            
            self.view.insertSubview(redball, aboveSubview: view)
            
            UIView.animate(withDuration: TimeInterval(gameSpeed), delay: 0, options: [UIView.AnimationOptions.allowUserInteraction, UIView.AnimationOptions.curveLinear], animations: { () -> Void in self.redball.frame.origin.y = self.view.bounds.height + self.redball.frame.height }) { (success:Bool) -> Void in
                
                if self.playing{
                
                self.lives -= 1
                    self.livesLabel!.text = "\(self.lives)"
                }
                
                self.redball.removeFromSuperview()
                self.addredBalls()
                self.view.bringSubviewToFront(self.scorelevelView!)
                
            }
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
