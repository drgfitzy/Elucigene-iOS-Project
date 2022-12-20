

import UIKit

class SocialViewController: UIViewController {

   
    
    // Social button outlets
    
    @IBOutlet weak var twitterfadeButton: UIButton!
    @IBOutlet weak var linkedInfadeButton: UIButton!
    @IBOutlet weak var youtubefadeButton: UIButton!
    @IBOutlet weak var phonefadeButton: UIButton!
    @IBOutlet weak var emailfadeButton: UIButton!
    
    @IBAction func twitterButton(_ sender: UIButton) {
        UIApplication.shared.open(URL (string: "https://twitter.com/elucigene")!)
    }

    @IBAction func linkedInButton(_ sender: UIButton) {
    UIApplication.shared.open(URL (string: "https://www.linkedin.com/pub/elucigene-diagnostics/89/21a/b91")!)
    }
    
    @IBAction func youtubeButton(_ sender: UIButton) {
        UIApplication.shared.open(URL (string: "https://www.youtube.com/user/elucigenediagnostics")!)
    }
    
    @IBAction func emailButton(_ sender: UIButton) {
        UIApplication.shared.open(URL (string: "mailto:enquiries@elucigene.com")!)
    }

    
    
    @IBAction func phoneButton(_ sender: UIButton) {
    
        let url:URL = URL(string: "tel://+441616698122")!
        UIApplication.shared.open(url)
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.twitterfadeButton.alpha = 0
         self.linkedInfadeButton.alpha = 0
        self.youtubefadeButton.alpha = 0
        self.phonefadeButton.alpha = 0
        self.emailfadeButton.alpha = 0
       
        
        let screenSizes: CGRect = UIScreen.main.bounds
        let screenWidth = screenSizes.width
        let screenHeight = screenSizes.height
        
// for iPad
        
if screenWidth == 768 && screenHeight == 1024 {
    
    
    twitterfadeButton.translatesAutoresizingMaskIntoConstraints = true
    youtubefadeButton.translatesAutoresizingMaskIntoConstraints = true
    linkedInfadeButton.translatesAutoresizingMaskIntoConstraints = true
    phonefadeButton.translatesAutoresizingMaskIntoConstraints = true
    emailfadeButton.translatesAutoresizingMaskIntoConstraints = true
    
    twitterfadeButton.frame = CGRect(x: 240, y: 40, width: 290, height: 290)
    linkedInfadeButton.frame = CGRect(x: 50, y: 330, width: 290, height: 290)
    youtubefadeButton.frame = CGRect(x: 400, y: 400, width: 290, height: 290)
    phonefadeButton.frame = CGRect(x: 110, y: 650, width: 170, height: 170)
    emailfadeButton.frame = CGRect(x: 290, y: 790, width: 170, height: 170)
    
        }
    
        // for iPhone 6plus
else if screenWidth == 414 && screenHeight == 736 {
    
        
        twitterfadeButton.translatesAutoresizingMaskIntoConstraints = true
        youtubefadeButton.translatesAutoresizingMaskIntoConstraints = true
        linkedInfadeButton.translatesAutoresizingMaskIntoConstraints = true
        phonefadeButton.translatesAutoresizingMaskIntoConstraints = true
        emailfadeButton.translatesAutoresizingMaskIntoConstraints = true
        
        twitterfadeButton.frame = CGRect(x: 125, y: 30, width: 180, height: 180)
        linkedInfadeButton.frame = CGRect(x: 30, y: 210, width: 180, height: 180)
        youtubefadeButton.frame = CGRect(x: 210, y: 300, width: 180, height: 180)
        phonefadeButton.frame = CGRect(x: 50, y: 430, width: 110, height: 110)
        emailfadeButton.frame = CGRect(x: 150, y: 540, width: 110, height: 110)
       
    }
    
        // for iPhone 6
    else if screenWidth == 375 && screenHeight == 667 {
    
    twitterfadeButton.translatesAutoresizingMaskIntoConstraints = true
    youtubefadeButton.translatesAutoresizingMaskIntoConstraints = true
    linkedInfadeButton.translatesAutoresizingMaskIntoConstraints = true
    phonefadeButton.translatesAutoresizingMaskIntoConstraints = true
    emailfadeButton.translatesAutoresizingMaskIntoConstraints = true
    
    twitterfadeButton.frame = CGRect(x: 110, y: 30, width: 160, height: 160)
    linkedInfadeButton.frame = CGRect(x: 30, y: 200, width: 160, height: 160)
    youtubefadeButton.frame = CGRect(x: 190, y: 290, width: 160, height: 160)
    phonefadeButton.frame = CGRect(x: 50, y: 390, width: 110, height: 110)
    emailfadeButton.frame = CGRect(x: 130, y: 500, width: 110, height: 110)
    
        }
    
    
        // for iPhone 5
else if screenWidth == 320 && screenHeight == 568 {
    
    
    twitterfadeButton.translatesAutoresizingMaskIntoConstraints = true
    youtubefadeButton.translatesAutoresizingMaskIntoConstraints = true
    linkedInfadeButton.translatesAutoresizingMaskIntoConstraints = true
    phonefadeButton.translatesAutoresizingMaskIntoConstraints = true
    emailfadeButton.translatesAutoresizingMaskIntoConstraints = true
    
    twitterfadeButton.frame = CGRect(x: 100, y: 25, width: 130, height: 130)
    linkedInfadeButton.frame = CGRect(x: 30, y: 160, width: 130, height: 130)
    youtubefadeButton.frame = CGRect(x: 170, y: 205, width: 130, height: 130)
    phonefadeButton.frame = CGRect(x: 50, y: 310, width: 90, height: 90)
    emailfadeButton.frame = CGRect(x: 110, y: 410, width: 90, height: 90)
    
}
    
    // for iPhone 4
    
else if screenWidth == 320 && screenHeight == 480 {
    twitterfadeButton.translatesAutoresizingMaskIntoConstraints = true
    youtubefadeButton.translatesAutoresizingMaskIntoConstraints = true
    linkedInfadeButton.translatesAutoresizingMaskIntoConstraints = true
    phonefadeButton.translatesAutoresizingMaskIntoConstraints = true
    emailfadeButton.translatesAutoresizingMaskIntoConstraints = true
    
    twitterfadeButton.frame = CGRect(x: 100, y: 20, width: 120, height: 120)
    linkedInfadeButton.frame = CGRect(x: 30, y: 140, width: 120, height: 120)
    youtubefadeButton.frame = CGRect(x: 160, y: 190, width: 120, height: 120)
    phonefadeButton.frame = CGRect(x: 50, y: 270, width: 80, height: 80)
    emailfadeButton.frame = CGRect(x: 120, y: 340, width: 80, height: 80)
   
    
}
        
        // Do any additional setup after loading the view.
}



    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.0, animations: { () -> Void in self.twitterfadeButton.alpha = 1.0
            
            })
            
            UIView.animate(withDuration: 2.0, animations: { () -> Void in self.linkedInfadeButton.alpha = 1.0
    })
        
        UIView.animate(withDuration: 3.0, animations: { () -> Void in self.youtubefadeButton.alpha = 1.0
        })
        
        UIView.animate(withDuration: 3.5, animations: { () -> Void in self.phonefadeButton.alpha = 1.0
        })
        
        UIView.animate(withDuration: 4.0, animations: { () -> Void in self.emailfadeButton.alpha = 1.0
        })

    
    }
    

}
