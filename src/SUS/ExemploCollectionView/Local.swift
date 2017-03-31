
import Foundation

class Local {
    // Propriedades da classe
    let nome: String
    let foto: String
    
    // Inicializador da classe
    init(nome: String, foto: String) {
        self.nome = nome
        self.foto = foto
    }
    
    // Retorna uma lista de locais para podermos utilizar na aplicação
    // As imagens estão no Assets.xcassets
    static func getList() -> [Local] {
        return [
            Local(nome: "AC", foto: "Acre"),
            Local(nome: "AL", foto: "Alagoas"),
            Local(nome: "AP", foto: "Amapa"),
            Local(nome: "AM", foto: "Amazonas"),
            Local(nome: "BA", foto: "Bahia"),
            Local(nome: "CE", foto: "Ceara"),
            Local(nome: "DF", foto: "Distrito Federal"),
            Local(nome: "ES", foto: "Espirito Santo"),
            Local(nome: "GO", foto: "Goias"),
            Local(nome: "MA", foto: "Maranhao"),
            Local(nome: "MT", foto: "Mato Grosso"),
            Local(nome: "MS", foto: "Mato Grosso do Sul"),
            Local(nome: "MG", foto: "Minas Gerais"),
            Local(nome: "PA", foto: "Para"),
            Local(nome: "PB", foto: "Paraiba"),
            Local(nome: "PR", foto: "Parana"),
            Local(nome: "PE", foto: "Pernambuco"),
            Local(nome: "PI", foto: "Piaui"),
            Local(nome: "RJ", foto: "Rio de Janeiro"),
            Local(nome: "RN", foto: "Rio Grande do Norte"),
            Local(nome: "RS", foto: "Rio Grande do Sul"),
            Local(nome: "RO", foto: "Rondonia"),
            Local(nome: "RR", foto: "Roraima"),
            Local(nome: "SC", foto: "Santa Catarina"),
            Local(nome: "SP", foto: "Sao Paulo"),
            Local(nome: "SE", foto: "Sergipe"),
            Local(nome: "TO", foto: "Tocantins")
            
        ]
    }
}
