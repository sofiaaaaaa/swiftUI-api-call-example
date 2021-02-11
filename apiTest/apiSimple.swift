//
//  apiSimple.swift
//  apiTest
//  https://developer.apple.com/documentation/foundation/url_loading_system/fetching_website_data_into_memory
//  Created by punky on 2021/02/11.
//

import Foundation


class ApiSimpleTest {

    public static func getData() -> String {
        let url  = "https://api.mocki.io/v1/ce5f60e2"

        let task = URLSession.shared.dataTask(with: URL(string: url)!) { (data, response, error) in
            
            guard let data = data, error == nil else {
                print("error")
                return
            }
            print(data)
            var result: ResponseSimple?
            
            do {
                result = try JSONDecoder().decode(ResponseSimple.self, from: data)
            }
            catch {
                print("###### failed to convert \(error.localizedDescription)")
            }
            
            guard let json = result else {
                return
            }
            
            print(json)
            
            
        }
        
        task.resume()
        
        return ""
        
    }
}



struct ResponseSimple: Codable {
    let city: String
    let name: String
}

// {"city":"Stockholm","name":"Lennart Johansson"}
