import UIKit

class ShoppingViewController: UIViewController {
    
    
    @IBOutlet weak var TextFildDolar: UITextField!
    @IBOutlet weak var labelRealDescription: UILabel!
    @IBOutlet weak var labelReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        TextFildDolar.resignFirstResponder()
        setAmmount()
    }
    func setAmmount() {
        tc.dolar = tc.connvertToDouble(TextFildDolar.text!)
    }

}

