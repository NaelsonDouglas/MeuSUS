

import Foundation

class Medico{
    var nome:String
    var crm:String
    var especialidade:String
    var nomeDaFoto: String
    
    init(nome: String, crm: String, especialidade: String){
        self.nome = nome
        self.crm = crm
        self.especialidade = especialidade
        self.nomeDaFoto = "home"
    }
    
}

class MedicoDAO{
    static func getList() -> [Medico] {
        
        return [Medico(nome: "Roberto Adriano dos Santos", crm: "12334324131", especialidade: "Cardiologista"),
                Medico(nome: "Han Chucrutz", crm: "123343241323", especialidade: "Neurologista")
        ]
    }
    
}
