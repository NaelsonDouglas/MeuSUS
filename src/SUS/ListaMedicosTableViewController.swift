

import UIKit

class ListaMedicosTableViewController: UITableViewController {

    
    
    
    
    var medicos = [Medico]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.medicos = MedicoDAO.getList()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the follvarng line to display an Edit button in the navigation bar for this view controller.
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
        return self.medicos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listaMedicosIdentifier", for: indexPath)
        
        if let medicoCell = cell as? ListaMedicosViewCell{
            let medico = medicos[indexPath.row]
            
            medicoCell.medicoImage.image = UIImage(named: medico.nomeDaFoto)
            medicoCell.nomeMedicoLabel.text = medico.nome
            medicoCell.especialidadeMedico.text = medico.especialidade
            medicoCell.dataAtendimentoLabel.text = "13/07/2017"
        }
        
        
        
        // Configure the cell...
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "medicosToConfirmacao"
        {
            
            let index = tableView.indexPathForSelectedRow?.row
            
            let medicoAtual = medicos[index!]
            
            
            if let novaView = segue.destination as? ConfirmacaoViewController{
                novaView.medico = medicoAtual
            }
            
            
            
        }
    }
}
