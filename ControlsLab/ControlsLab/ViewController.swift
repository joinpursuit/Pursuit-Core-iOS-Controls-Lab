import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelForGameName: UILabel!
    
    @IBOutlet weak var labelToSelectTheSuit: UILabel!
    
    @IBOutlet weak var changeSuit: UISegmentedControl!
    
    
    @IBOutlet weak var labelForSteppe: UILabel!
    
    @IBOutlet weak var stepperItself: UIStepper!
    
   
    @IBOutlet weak var cardDisplayArea: UIView!
    
    
    @IBOutlet weak var cardValueLabel: UILabel!
    
    
    @IBOutlet weak var suitLabel: UILabel!
    
    var cardValue: Double = 2 {
        didSet {
            switch stepperItself.value {
            case 1.0:
                cardValueLabel.text = "2"
            case 2.0:
                cardValueLabel.text = "3"
            case 3.0:
                cardValueLabel.text = "4"
            case 4.0:
                cardValueLabel.text = "5"
            case 5.0:
                cardValueLabel.text = "6"
            case 6.0:
                cardValueLabel.text = "7"
            case 7.0:
                cardValueLabel.text = "8"
            case 8.0:
                cardValueLabel.text = "9"
            case 9.0:
                cardValueLabel.text = "10"
            case 10.0:
                cardValueLabel.text = "J"
            case 11.0:
                cardValueLabel.text = "👸"
            case 12.0:
                cardValueLabel.text = "🤴"
            case 13.0:
                cardValueLabel.text = "A"
            default:
                cardValueLabel.text = "not exist"
            }
        }
    }
    
    var suitView: Int = 0 {
        didSet {
            switch changeSuit.selectedSegmentIndex {
            case 0:
                suitLabel.text = "♦️"
            case 1:
                suitLabel.text = "♥️"
            case 2:
                suitLabel.text = "♣️"
            case 3:
                suitLabel.text = "♠️"
            default:
                suitLabel.text = "💣"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cardDisplayArea.layer.borderColor = UIColor.black.cgColor
    }
    
    func configureStepper() {
           stepperItself.minimumValue = 1.0
           stepperItself.maximumValue = 13.0
           stepperItself.stepValue = 1.0
           
           // default start value
           stepperItself.value = 1.0
       }
    
    @IBAction func actionToSelectSuit(_ sender: UISegmentedControl) {
    }
    @IBAction func actionToSelectValue(_ sender: UIStepper) {
    }
    
    
    
}

