

import Foundation

class DataBase{
    
    
}

class DataBaseDAO{
    static func getMedicos() -> [String]{
        return [ "Eduardo",
                 "Naelson",
                 "Ruth",
                 "Lais",
                 "Maria"
        ]
    }
    
    static func getHospitais() -> [String]{
        return ["HU",
                "HGE",
                "Santa Mônica",
                "UPA Benedito Bentes"
        ]
    }
    
    
    static func getEspecialidades() -> [String]{
        return ["Cardiologista",
                "Neurologista",
                "Ginecologista",
                "Clínico geral"
        ]
    }

}
