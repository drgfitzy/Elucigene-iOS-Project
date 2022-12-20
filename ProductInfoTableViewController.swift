

import UIKit

class ProductInfoTableViewController: UITableViewController {

  //Model:
    
    var product: Product?
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var brochureButton: UIButton!
    @IBOutlet weak var webpageButton: UIButton!
    @IBOutlet weak var instructionsButton: UIButton!
    @IBOutlet weak var ProductLitCell: UITableViewCell!
    
    @IBOutlet weak var productInfoCell: UITableViewCell!
    
    @IBOutlet weak var brochureLabel: UILabel!
  
    @IBOutlet weak var webLabel: UILabel!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    //Action for instructions button
    
        
    @IBAction func instructionsURLButton(_ sender: UIButton) {
        if let instruction = product?.instructions{
            
            if instruction != "" {
        
        UIApplication.shared.open(URL (string: instruction)!)
            
        }
        }
    
    }
    
    //Action for webpage button
    @IBAction func WebURLButton(_ sender: UIButton) {
   
        if let webpage = product?.webpage{
        
            if webpage != "" {
                
           UIApplication.shared.open(URL (string: webpage)!)
            }
        }
    
    
    }
    
    
    
    //Action for brochure button
    @IBAction func URLButton(_ sender: UIButton) {
    
        if let literature = product?.literature{
            
            if literature != "" {
        
        
        UIApplication.shared.open(URL (string: literature)!)
                
            }
            
        }
        
        
    //if let means that button won't respond if not URL ie. wont crash
    }
    

    

    
    //Mark: -VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44.0
        
        //self.tableView.sizeToFit()
        
        productImageView.image = product?.image
        productDescriptionLabel.text = product?.detail
        
        //Size the cell to fit the text
        //productDescriptionLabel.numberOfLines = 0
        //productDescriptionLabel.sizeToFit()
        productDescriptionLabel.preferredMaxLayoutWidth = 250
       //ProductLitCell.selectionStyle = UITableViewCellSelectionStyle.None
        //productInfoCell.selectionStyle = UITableViewCellSelectionStyle.None
        //productDescriptionLabel.textAlignment = NSTextAlignment.Justified
        
        //self.productInfoCell.sizeToFit()
        
       //tableView.frame.size.height = productDescriptionLabel.frame.size.height
        

    
    
        
        let screenSizes: CGRect = UIScreen.main.bounds
        let screenWidth = screenSizes.width
        let screenHeight = screenSizes.height
        
       
        // for iPhone 4
        
        if screenWidth == 320 && screenHeight == 480 {
     
        
            brochureButton.translatesAutoresizingMaskIntoConstraints = true
            webpageButton .translatesAutoresizingMaskIntoConstraints = true
            instructionsButton.translatesAutoresizingMaskIntoConstraints = true
            ProductLitCell.translatesAutoresizingMaskIntoConstraints = true
            brochureLabel.translatesAutoresizingMaskIntoConstraints = true
            webLabel.translatesAutoresizingMaskIntoConstraints = true
            instructionsLabel.translatesAutoresizingMaskIntoConstraints = true
            productImageView.translatesAutoresizingMaskIntoConstraints = true
            
            
            brochureButton.frame = CGRect(x: 4, y: 15, width: 110, height: 110)
            webpageButton.frame = CGRect(x: 105, y: 15, width: 110, height: 110)
            instructionsButton.frame = CGRect(x: 208, y: 15, width: 110, height: 110)
            
            
            brochureLabel.frame = CGRect(x: 22, y: 90, width: 100, height: 100)
            webLabel.frame = CGRect(x: 119, y: 90, width: 100, height: 100)
            instructionsLabel.frame = CGRect(x: 220, y: 90, width: 100, height: 100)
            productImageView.frame = CGRect(x: 32, y: 15, width: 280, height: 280)
      
        
        }
        
        
        
        
        
        
        // for iPhone 5 screen size
        
        if screenWidth == 320 && screenHeight == 568 {
            
            
            brochureButton.translatesAutoresizingMaskIntoConstraints = true
            webpageButton .translatesAutoresizingMaskIntoConstraints = true
            instructionsButton.translatesAutoresizingMaskIntoConstraints = true
            ProductLitCell.translatesAutoresizingMaskIntoConstraints = true
            brochureLabel.translatesAutoresizingMaskIntoConstraints = true
            webLabel.translatesAutoresizingMaskIntoConstraints = true
            instructionsLabel.translatesAutoresizingMaskIntoConstraints = true
            productImageView.translatesAutoresizingMaskIntoConstraints = true
            
            brochureButton.frame = CGRect(x: 4, y: 15, width: 110, height: 110)
            webpageButton.frame = CGRect(x: 105, y: 15, width: 110, height: 110)
            instructionsButton.frame = CGRect(x: 208, y: 15, width: 110, height: 110)
            
            brochureLabel.frame = CGRect(x: 22, y: 90, width: 100, height: 100)
            webLabel.frame = CGRect(x: 119, y: 90, width: 100, height: 100)
            instructionsLabel.frame = CGRect(x: 220, y: 90, width: 100, height: 100)
            productImageView.frame = CGRect(x: 30, y: 15, width: 280, height: 280)
            
        }
        
        
        // for iPhone 6
        if screenWidth == 375 && screenHeight == 667 {
            
            brochureButton.translatesAutoresizingMaskIntoConstraints = true
            webpageButton .translatesAutoresizingMaskIntoConstraints = true
            instructionsButton.translatesAutoresizingMaskIntoConstraints = true
            ProductLitCell.translatesAutoresizingMaskIntoConstraints = true
            brochureLabel.translatesAutoresizingMaskIntoConstraints = true
            webLabel.translatesAutoresizingMaskIntoConstraints = true
            instructionsLabel.translatesAutoresizingMaskIntoConstraints = true
            productImageView.translatesAutoresizingMaskIntoConstraints = true
            
            brochureButton.frame = CGRect(x: 10, y: 15, width: 120, height: 120)
            webpageButton.frame = CGRect(x: 130, y: 15, width: 120, height: 120)
            instructionsButton.frame = CGRect(x: 250, y: 15, width: 120, height: 120)
            
            brochureLabel.frame = CGRect(x: 30, y: 100, width: 100, height: 100)
            webLabel.frame = CGRect(x: 150, y: 100, width: 100, height: 100)
            instructionsLabel.frame = CGRect(x: 265, y: 100, width: 100, height: 100)
            productImageView.frame = CGRect(x: 30, y: 15, width: 350, height: 350)
            
        }
        
            // for iPhone 6plus
        if screenWidth == 414 && screenHeight == 736 {
            
            brochureButton.translatesAutoresizingMaskIntoConstraints = true
            webpageButton .translatesAutoresizingMaskIntoConstraints = true
            instructionsButton.translatesAutoresizingMaskIntoConstraints = true
            ProductLitCell.translatesAutoresizingMaskIntoConstraints = true
            brochureLabel.translatesAutoresizingMaskIntoConstraints = true
            webLabel.translatesAutoresizingMaskIntoConstraints = true
            instructionsLabel.translatesAutoresizingMaskIntoConstraints = true
            productImageView.translatesAutoresizingMaskIntoConstraints = true
            
            brochureButton.frame = CGRect(x: 10, y: 15, width: 130, height: 130)
            webpageButton.frame = CGRect(x: 143, y: 15, width: 130, height: 130)
            instructionsButton.frame = CGRect(x: 275, y: 15, width: 130, height: 130)
            
            brochureLabel.frame = CGRect(x: 40, y: 100, width: 100, height: 100)
            webLabel.frame = CGRect(x: 170, y: 100, width: 100, height: 100)
            instructionsLabel.frame = CGRect(x: 295, y: 100, width: 100, height: 100)
            productImageView.frame = CGRect(x: 50, y: 15, width: 350, height: 350)
        }

        
        
        
        // for iPad
        
        if screenWidth == 768 && screenHeight == 1024 {
            
            
            brochureButton.translatesAutoresizingMaskIntoConstraints = true
            webpageButton .translatesAutoresizingMaskIntoConstraints = true
            instructionsButton.translatesAutoresizingMaskIntoConstraints = true
            ProductLitCell.translatesAutoresizingMaskIntoConstraints = true
            brochureLabel.translatesAutoresizingMaskIntoConstraints = true
            webLabel.translatesAutoresizingMaskIntoConstraints = true
            instructionsLabel.translatesAutoresizingMaskIntoConstraints = true
            productImageView.translatesAutoresizingMaskIntoConstraints = true
            
            
            brochureButton.frame = CGRect(x: 100, y: 15, width: 160, height: 160)
            webpageButton.frame = CGRect(x: 300, y: 15, width: 160, height: 160)
            instructionsButton.frame = CGRect(x: 500, y: 15, width: 160, height: 160)
            productImageView.frame = CGRect(x: 210, y: 15, width: 400, height: 400)
            
            //brochureButton.frame.
            brochureLabel.frame = CGRect(x: 140, y: 130, width: 100, height: 100)
            webLabel.frame = CGRect(x: 340, y: 130, width: 100, height: 100)
            instructionsLabel.frame = CGRect(x: 535, y: 130, width: 100, height: 100)
           
            
        }
        
        
        
        //productDescriptionLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
       self.tableView.reloadData()
        
    }

    
    
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->
            CGFloat {
                
                return UITableView.automaticDimension
            
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    
        return UITableView.automaticDimension
    
    }
        
    
    
    
    
        
    }
    

    



