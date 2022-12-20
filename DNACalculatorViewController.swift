

import UIKit
// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


class DNACalculatorViewController: UIViewController, UITextFieldDelegate {

    
    //Text Field and Label Outlets
  
    @IBOutlet weak var startconcText: UITextField!
    @IBOutlet weak var requiredconcText: UITextField!
    @IBOutlet weak var requiredvolText: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    
    
    //Clear button action
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        startconcText.text = ""
        requiredconcText.text = ""
        requiredvolText.text = ""
        answerLabel.text = ""
        warningLabel.text = ""
        warningLabel.backgroundColor = nil
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startconcText.delegate = self
        requiredconcText.delegate = self
        requiredvolText.delegate = self
        warningLabel.backgroundColor = nil
        
       
        
// Placeholde text to fit by screensize.....
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
    
    
   // for iPhone 6plus
        if screenWidth == 414 {
            //startconcText.font!.fontWithSize(20)
            
            startconcText.font = UIFont(name: startconcText.font!.fontName, size: 14)
            requiredconcText.font = UIFont(name: requiredconcText.font!.fontName, size: 14)
            requiredvolText.font = UIFont(name: requiredvolText.font!.fontName, size: 14)
        }
        // for iPhone 6
        else if screenWidth == 375 {
            startconcText.font = UIFont(name: startconcText.font!.fontName, size: 12)
            requiredconcText.font = UIFont(name: requiredconcText.font!.fontName, size: 12)
            requiredvolText.font = UIFont(name: requiredvolText.font!.fontName, size: 12)
            
        }
        // for iPhone 5
        else if screenWidth == 320 && screenHeight == 568 {
            
    startconcText.font = UIFont(name: startconcText.font!.fontName, size: 11)
    requiredconcText.font = UIFont(name: requiredconcText.font!.fontName, size: 11)
    requiredvolText.font = UIFont(name: requiredvolText.font!.fontName, size: 11)
    
        }
        
        // for iPhone 4 
            
        else if screenWidth == 320 && screenHeight == 480 {
        
            startconcText.font = UIFont(name: startconcText.font!.fontName, size: 10)
            requiredconcText.font = UIFont(name: requiredconcText.font!.fontName, size: 10)
            requiredvolText.font = UIFont(name: requiredvolText.font!.fontName, size: 10)
            answerLabel.font = UIFont(name: answerLabel.font!.fontName, size: 11)
        
        }
        
        // for iPad
        
        else {
            startconcText.font = UIFont(name: startconcText.font!.fontName, size: 16)
            requiredconcText.font = UIFont(name: requiredconcText.font!.fontName, size: 16)
            requiredvolText.font = UIFont(name: requiredvolText.font!.fontName, size: 16)
            answerLabel.font = UIFont(name: answerLabel.font!.fontName, size: 17)
        }
    
    }
    
    // Calculate button action
    
    @IBAction func calcButton(_ sender: UIButton) {
        self.startconcText.resignFirstResponder()
        self.requiredconcText.resignFirstResponder()
        self.requiredvolText.resignFirstResponder()
       
        let a = Float64(startconcText.text!)
        let b = Float64(requiredconcText.text!)
        let c = Float64(requiredvolText.text!)
        
        var resultDNA: Double?
        var finalResult: Double?
        
        var teResult: Double?
        
      
        // 1. Complete all fileds warning
        
        
        if (startconcText.text!.isEmpty) {
            
            answerLabel.text = "Please complete all fields"
        
        
        }
        
        if (requiredconcText.text!.isEmpty) {
            
            answerLabel.text = "Please complete all fields"
            
        }
        
       if (requiredvolText.text!.isEmpty) {
            
           answerLabel.text = "Please complete all fields"
        
        }
        

        
        // 2. Calculation
        
        if a != nil && b != nil && c != nil{
            
            resultDNA = a!/b!
        
            //finalResult =  ceil(c!/resultDNA!)
            
            finalResult =  c!/resultDNA!
            
            teResult = c!-finalResult!
           
        
                    }
        
    
        
        
        // 3. Answer Label Status
        
        if finalResult != nil {
        
          if b < a {
            
            self.answerLabel.text = "Add \((round(finalResult!*100 )/100) ) µl of Starting DNA to \((round(teResult!*100)/100)) µl of Diluent for \(b!) ng/µl of DNA."
        }
        
        else if b > a {
            self.answerLabel.text = "Warning! Starting DNA concentration is lower than required DNA concentration!"
        
        }
        
    else if b == a {
            
            self.answerLabel.text = "Starting and Required DNA concentrations are equal! No dilution is needed."
            
        }
        
        
    }

        
        // 4. Warning Label Status
        
        if finalResult != nil {
        
        if finalResult < 2 {
        
        warningLabel.text = "Warning! \n For accurate concentrations, pipetting volumes less than 2µl is not advised."
            warningLabel.backgroundColor = UIColor.white
            
    }

        if c! - finalResult! < 2 {
            
            warningLabel.text = "Warning! \n For accurate concentrations, pipetting volumes less than 2µl is not advised."
            warningLabel.backgroundColor = UIColor.white
    }
    
    }
    
    
        if a == b {
        
        warningLabel.text = nil
        warningLabel.backgroundColor = nil
        
        }
        
        if b > a {
    
        warningLabel.text = nil
        warningLabel.backgroundColor = nil
        }
        
        if (startconcText.text!.isEmpty) {
            
            warningLabel.text = nil
            warningLabel.backgroundColor = nil
        }

        
        if (requiredconcText.text!.isEmpty) {
            
            warningLabel.text = nil
            warningLabel.backgroundColor = nil
        }
        
        
        if (requiredvolText.text!.isEmpty) {
            
            warningLabel.text = nil
            warningLabel.backgroundColor = nil
        }
    }
   
    
   
    
    func textField(_ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String)
        -> Bool
    {
        if (string.count != 0){
            return true
        }
    
    
    let currentText = textField.text ?? ""
    let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)
    
    switch textField {
        
    case startconcText:
        return prospectiveText.containsOnlyCharactersIn("0123456789") &&
            prospectiveText.count <= 4
        
    case requiredconcText:
        return prospectiveText.containsOnlyCharactersIn("0123456789") &&
            prospectiveText.count <= 4
    
    case requiredvolText:
        return prospectiveText.containsOnlyCharactersIn("0123456789") &&
        prospectiveText.count <= 4
    
        
    default:
        return true
        
        
            }
            
            
        }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        }
}

    
    extension String {
    
    func containsOnlyCharactersIn(_ matchCharacters: String) -> Bool {
        let disallowedCharacterSet = CharacterSet(charactersIn: matchCharacters).inverted
        return self.rangeOfCharacter(from: disallowedCharacterSet) == nil
        
        }
}


