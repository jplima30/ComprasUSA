import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var texFildDolar: UITextField!
    @IBOutlet weak var texFieldIOF: UITextField!
    @IBOutlet weak var texFildStateTaxes: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        texFildDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        texFildDolar.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        texFildStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func setValues() {
        tc.dolar = tc.connvertToDouble(texFildDolar.text!)
        tc.iof = tc.connvertToDouble(texFieldIOF.text!)
        tc.stateTax = tc.connvertToDouble((texFildStateTaxes.text!))
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
