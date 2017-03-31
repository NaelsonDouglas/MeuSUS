
import Foundation
class Hospital{
    var nome: String
    var endereco: String
    var medicos: [Medico]
    
    init(nome: String, endereco: String, hospital: String){
        self.nome = nome
        self.endereco = endereco
        self.medicos = HospitalDAO.getMedicosPorHospital(hospital: "HU")
    }
}

class HospitalDAO{
    static func getHospitaisPorEstado(estado: String) -> [Hospital] {
            
        
        if estado == "AL"
        {        return [ Hospital(nome: "HGE", endereco: "Av......", hospital: "HU"),
                     Hospital(nome: "HU", endereco: "Av......",hospital: "HU"),
                     Hospital(nome: "Santa Mônica", endereco: "Av......",hospital: "HU"),
                     Hospital(nome: "João Paulo II", endereco: "Av......",hospital: "HU"),
                     Hospital(nome: "UPA - Benedito Bentes", endereco: "Av......",hospital: "HU")
                
            ]
        }
        
        if estado == "AC"
        {        return [ Hospital(nome: "T-Rex", endereco: "Av......", hospital: "T-Rex"),
                          Hospital(nome: "Alcino", endereco: "Av......",hospital: "Alcino")
            
            ]
        }
        
        if estado == "AP"
        {        return [ Hospital(nome: "Goku", endereco: "Av......", hospital: "Goku"),
                          Hospital(nome: "Picolo", endereco: "Av......",hospital: "Picolo")
            
            ]
        }
        
        return [ Hospital(nome: "HGE", endereco: "Av......", hospital: "HU"),
                 Hospital(nome: "HU", endereco: "Av......",hospital: "HU"),
                 Hospital(nome: "Santa Mônica", endereco: "Av......",hospital: "HU"),
                 Hospital(nome: "João Paulo II", endereco: "Av......",hospital: "HU"),
                 Hospital(nome: "UPA - Benedito Bentes", endereco: "Av......",hospital: "HU")
            
        ]
        
        
        }
    
    static func getMedicosPorHospital(hospital: String) -> [Medico] {
        
        if hospital == "HU"{
            return [Medico(nome: "Roberto Adriano dos Santos", crm: "12334324131", especialidade: "Cardiologista"),
                    Medico(nome: "Han Chucrutz", crm: "123343241323", especialidade: "Neurologista")
            ]
        }
    return [Medico(nome: "Roberto Adriano dos Santos", crm: "12334324131", especialidade: "Cardiologista")]
  
}
}


