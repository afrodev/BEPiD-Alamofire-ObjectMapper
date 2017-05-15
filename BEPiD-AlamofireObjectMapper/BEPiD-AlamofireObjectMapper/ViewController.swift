//
//  ViewController.swift
//  BEPiD-AlamofireObjectMapper
//
//  Created by Humberto Vieira on 13/05/17.
//  Copyright © 2017 Humberto Vieira. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import AlamofireObjectMapper





class Endereco: Mappable {
    var bairro: String!
    var cep: String!
    var estado: String!
    var logradouro:String!
    var tipoDeLogradouro: String!
    
    
    required init?(map: Map) {
        // <- pense que é quando ele faz a requisição do json, que campo ele está procurando no JSON no request
        // >>> Como ele vai enviar os dados quando for printado
        self.bairro <- map["bairro"]
        self.cep <- map["cep"]
        self.estado <- map["estado"]
        self.logradouro <- map["logradouro"]
        self.tipoDeLogradouro <- map["tipoDeLogradouro"]
    }
    
    func mapping(map: Map) {
        // <- pense que é quando ele faz a requisição do json, que campo ele está procurando no JSON no request
        // >>> Como ele vai enviar os dados quando for printado
        self.bairro <- map["bairro"]
        self.cep <- map["cep"]
        self.estado <- map["estado"]
        self.logradouro <- map["logradouro"]
        self.tipoDeLogradouro <- map["tipoDeLogradouro"]
        
        self.bairro >>> map["bairro"]
        self.cep >>> map["cep"]
        self.estado >>> map["estado"]
        self.logradouro >>> map["logradouro"]
        self.tipoDeLogradouro >>> map["tipoDeLogradouro"]
        
    }
    
    
    
}

class ViewController: UIViewController {
    @IBOutlet weak var labelStreet: UILabel!
    @IBOutlet weak var textfieldCEP: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buscar(_ sender: Any) {
        guard let cep = textfieldCEP.text else {
            return
        }
        
        // Transforma a string em uma URL sem force unwrapping
        guard let url = URL(string: "http://correiosapi.apphb.com/cep/" + cep) else {
            return
        }
        
        // Faz um request via Alamofire usando o GET
        let alamofireModel = Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil)

        
        // Faz a requisição para uma resposta em json
        alamofireModel.responseObject { (response: DataResponse<Endereco>) in
            if response.error == nil {
            
                let end = response.value
            
                print(end?.bairro)
                print(end?.logradouro)
                print(end?.tipoDeLogradouro)
            
            
                guard let log = end?.logradouro else {
                    return
                }
                
                guard let cept = end?.cep else {
                    return
                }
                
                guard let tipo = end?.tipoDeLogradouro else {
                    return
                }
                
                self.labelStreet.text = "\(tipo): \(log) - Bairro: \(cept)"
            }
            
        }

    }
    
    

}

