import UIKit

class PrimeNumberViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var numberLabel: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        
        
    }
    
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        guard let text = numberLabel.text,
              let number = Int(text) else {
            return
        }
        
        if number == 1 || number == 2 {
            resultLabel.text = "SI!"
        }
        
        
        var isItPrime = true
        for i in 2 ..< number {
            if number % i == 0 {
                isItPrime = false
                break
            }
        }
        resultLabel.text = isItPrime ? "SI!" : "NO!"
        
    }
    
}


