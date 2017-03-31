
import UIKit

class BuscaViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    
    @IBAction func buscaBtn(_ sender: Any) {
        
        print(pickerDataHospital[pickerHospital.selectedRow(inComponent: 0)])
        self.performSegue(withIdentifier: "segueBuscaTomedicos", sender: self)
    }
    
    var pickerDataHospital: [String] = [String]()
    var pickerDataEspecialidade: [String] = [String]()
    
    
    @IBOutlet weak var pickerHospital: UIPickerView!
    
    @IBOutlet weak var pickerEspecialidade: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pickerHospital.delegate = self
        self.pickerHospital.dataSource = self
        
        self.pickerHospital.delegate = self
        self.pickerHospital.dataSource = self
        
        // Input data into the Array:
        pickerDataHospital = DataBaseDAO.getHospitais()
        pickerDataEspecialidade = DataBaseDAO.getEspecialidades()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataHospital.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataHospital[row]
    }
    
    
}
