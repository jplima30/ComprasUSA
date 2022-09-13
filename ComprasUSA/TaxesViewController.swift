import UIKit

class TaxesViewController: UIViewController {
    
    @IBOutlet weak var labelDolar: UILabel!
    @IBOutlet weak var labelStateTaxes: UILabel!
    @IBOutlet weak var labelStateTaxDescrption: UILabel!
    @IBOutlet weak var labelIOFDescription: UILabel!
    @IBOutlet weak var labelIOF: UILabel!
    @IBOutlet weak var SwitchCreditCard: UISwitch!
    @IBOutlet weak var labelReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
    }
    
    @IBAction func changeIOF(_ sender: Any) {
        calculateTaxes()
    }
    
    
    func calculateTaxes() {
        labelStateTaxDescrption.text = "Imposto de Estado (\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))%)"
        labelIOFDescription.text = "IOF (\(tc.getFormattedValue(of: tc.iof, withCurrency: ""))%)"
        labelDolar.text = tc.getFormattedValue(of: tc.shoppingValue, withCurrency: "US$")
        labelStateTaxes.text = tc.getFormattedValue(of: tc.stateTaxValue, withCurrency: "US$")
        labelIOF.text = tc.getFormattedValue(of: tc.iofValue, withCurrency: "US$")
        let real = tc.calculate(usingcreditCard: SwitchCreditCard.isOn)
        labelReal.text = tc.getFormattedValue(of: real, withCurrency: "R$ ")
    }
    
}
