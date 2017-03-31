

import UIKit

class ConsultasTableViewController: UITableViewController {

    var consultas = [Consulta]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.consultas = ConsultaDAO.getList()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.consultas.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConsultaIdentifier", for: indexPath)
        
        if let ConsultaCell = cell as? ConsultaTableViewCell{
            let consultas = self.consultas[indexPath.row]
            
            ConsultaCell.medicoImage.image = UIImage(named: consultas.nomeDaFoto)
            ConsultaCell.dataLabel.text = consultas.data
            ConsultaCell.nomeMedico.text = consultas.nomeMedico
            
        }
        
        
        
        // Configure the cell...
        
        return cell
    }

}
