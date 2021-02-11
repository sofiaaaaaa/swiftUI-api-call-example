//
//  apiMoreSimple.swift
//  apiTest
//
//  Created by punky on 2021/02/11.
//

import Foundation

class ApiMoreSimpleTest {

    public static func getData() {
        let url  = "https://api.mocki.io/v1/ce5f60e2"

        let task = URLSession.shared.dataTask(with: URL(string: url)!) { (data, response, error) in
            
            guard let data = data, error == nil else {
                print("error")
                return
            }
            print(data)
            var result: ResponseMoreSimple?
            
            do {
                result = try JSONDecoder().decode(ResponseMoreSimple.self, from: data)
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
        
        
    }
    
    func fetchFilms(completionHandler: @escaping (ResponseMoreSimple) -> Void) {
        let url = URL(string: "https://api.mocki.io/v1/ce5f60e2")!

        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
          if let error = error {
            print("###### Error with fetching Data: \(error)")
            return
          }
          
          guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
            print("###### Error with the response, unexpected status code: \(response)")
            return
          }

          if let data = data,
            let response = try? JSONDecoder().decode(ResponseMoreSimple.self, from: data) {
            completionHandler(response ?? ResponseMoreSimple(city: "", name: ""))
          }
        })
        task.resume()
      }
}



struct ResponseMoreSimple: Codable {
    let city: String
    let name: String
}

