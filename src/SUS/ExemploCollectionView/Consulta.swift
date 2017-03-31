

import Foundation

class Consulta{
    let cpf:Int64
    let nomeMedico:String
    let horario:String
    let data:String
    let local:String
    let cod:String
    let nomeDaFoto: String
    
    init(cpf: Int64, nomeMedico: String, horario: String, data: String, local: String, cod: String, nomeDaFoto: String){
        self.cpf = cpf
        self.nomeMedico = nomeMedico
        self.horario = horario
        self.data = data
        self.local = local
        self.cod = cod
        self.nomeDaFoto = nomeDaFoto
    }
    
}

class ConsultaDAO{
    static func getList() -> [Consulta] {
        return [
            Consulta(cpf: 100100010000, nomeMedico: "Roberto Adriano dos Santos", horario: "8:00 - 12:00", data: "07/06/2017", local: "HU", cod: "P01", nomeDaFoto: "home"),
            Consulta(cpf: 100100010000, nomeMedico: "Han Chucrutz", horario: "8:00 - 12:00", data: "08/06/2017", local: "HGE", cod: "P02", nomeDaFoto: "home"),
            Consulta(cpf: 100100010000, nomeMedico: "Robert Rey", horario: "8:00 - 12:00", data: "09/06/2017", local: "HU", cod: "P03", nomeDaFoto: "home"),
            Consulta(cpf: 100100010000, nomeMedico: "House", horario: "8:00 - 12:00", data: "10/06/2017", local: "HU", cod: "P04", nomeDaFoto: "home"),
            Consulta(cpf: 100100010000, nomeMedico: "Naelson", horario: "8:00 - 12:00", data: "11/06/2017", local: "HGE", cod: "P05", nomeDaFoto: "home"),
            Consulta(cpf: 123123123123 , nomeMedico: "Ruth", horario: "8:00 - 12:00", data: "12/06/2017", local: "HGE", cod: "P06", nomeDaFoto: "home"),
            Consulta(cpf: 332123123123 , nomeMedico: "Manoela", horario: "8:00 - 12:00", data: "13/06/2017", local: "HGE", cod: "P07", nomeDaFoto: "home")
            //Consulta(cpf: , nomeMedico: "", horario: "", data: "", local: "", cod: "", nomeDaFoto: "")
            
            
        ]
    }
}
