import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelForGameName: UILabel!
    
    @IBOutlet weak var labelToSelectTheSuit: UILabel!
    
    @IBOutlet weak var changeSuite: UISegmentedControl!
    
    
    @IBOutlet weak var labelForSteppe: UILabel!
    
    @IBOutlet weak var stepperItself: UIStepper!
    
   
    @IBOutlet weak var cardDisplayArea: UIView!
    
    
    @IBOutlet weak var cardValueLabel: UILabel!
    
    
    @IBOutlet weak var suitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cardDisplayArea.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func actionToSelectSuit(_ sender: UISegmentedControl) {
    }
    @IBAction func actionToSelectValue(_ sender: UIStepper) {
    }
    
    
    
}

