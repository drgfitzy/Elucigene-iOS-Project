

import UIKit

class ProductsTableViewController: UITableViewController{
    
    lazy var productLines: [ProductLine] = {
        return ProductLine.productLines()
    
    }()
    
    var productShown = [Bool](repeating: false, count: ProductLine.numberOfProducts)
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let productLine = productLines[section]
        return productLine.name
        
    
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return productLines.count          // number of sections in the tableview
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        let productLine = productLines[section]
        return productLine.products.count        // number of products in the section
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Product Cell", for: indexPath) as UITableViewCell

        let productLine = productLines[indexPath.section]
        let product = productLine.products[indexPath.row]
        cell.textLabel?.text = product.title
        cell.detailTextLabel?.text = product.description
        cell.imageView?.image = product.image
        
        cell.detailTextLabel?.numberOfLines = 0
        return cell
    }
    

   // Makes the products slide in
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if productShown[indexPath.row] == false {
        
        
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
            
        cell.layer.transform = rotationTransform
        
        UIView.animate(withDuration: 1.0, animations: { () -> Void in cell.alpha = 1
            
            cell.layer.transform = CATransform3DIdentity
        
        })
        
        productShown[indexPath.row] = false
            
           
        
        }
    
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier {
            switch identifier {
                case "Product Info":
                let infoTableVC = segue.destination as! ProductInfoTableViewController
                if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell) {
                    infoTableVC.product = productAtIndexPath(indexPath)
                
                }
                
                default: break
                
                }
            
            }
        
        }
    
    //Mark: Helper Method:
    
    func productAtIndexPath(_ indexPath: IndexPath) -> Product
    {
        let productLine = productLines[indexPath.section]
        return productLine.products[indexPath.row]
        
    
    
    }
    
    }
    


