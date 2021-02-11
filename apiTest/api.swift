////
////  api.swift
////  apiTest
////
////  Created by punky on 2021/02/11.
////
//
//import Foundation
//
//class ApiTest {
//
//    public static func getData() -> String {
//        let url  = "https://pipl.ir/v1/getPerson"
//
//        let task = URLSession.shared.dataTask(with: URL(string: url)!) { (data, response, error) in
//            
//            guard let data = data, error == nil else {
//                print("error")
//                return
//            }
//            print(data)
//            var result: Response?
//            
//            do {
//                result = try JSONDecoder().decode(Response.self, from: data)
//            }
//            catch {
//                print("###### failed to convert \(error.localizedDescription)")
//            }
//            
//            guard let json = result else {
//                return
//            }
//            
//            print(json)
//            
//        }
//        
//        task.resume()
//        
//        return "nil"
//    }
//}
//
//
//
//struct Response: Codable {
//    let person: Person
//}
//
//struct Person: Codable {
//    let education: Education
//    let marriage: Marriage
//    let online_info: Online_info
//    let personal: Personal
//    let work: Work
//}
//
//struct Education: Codable {
//    let certificate: String
//    let university: String
//}
//
//struct Marriage: Codable {
//    let children: Int
//    let married: Bool
//    let spouse_name: String
//}
//
//struct Online_info: Codable {
//    let email: String
//    let ip_address: String
//    let ipv6_address: String
//    let password: String
//    let password_md5: String
//    let user_agent: String
//    let username: String
//}
//
//struct Personal: Codable {
//    let age: Int
//    let blood: String
//    let born: String
//    let born_place: String
//    let cellphone: String
//    let city: String
//    let country: String
//    let eye_color: String
//    let father_name: String
//    let gender: String
//    let height: String
//    let last_name: String
//    let name: String
//    let national_code: String
//    let religion: String
//    let system_id: String
//    let weight: Int
//
//}
//
//struct Work: Codable {
//    let country_code: String
//    let insurance: Bool
//    let position: String
//    let salary: String
//}
////
////{
////  "person": {
////    "education": {
////      "certificate": "Diploma",
////      "university": "Boston University"
////    },
////    "marriage": {
////      "children": 2,
////      "married": true,
////      "spouse_name": "Penelopa"
////    },
////    "online_info": {
////      "email": "v4746n@riseup.net",
////      "ip_address": "87.230.37.182",
////      "ipv6_address": "00d5:5257:2aea:a8cb:08a8:ebee:f08e:295e",
////      "password": "QKZxX5UoZa",
////      "password_md5": "311ddf57934c54bd20dcbcd7f749acd0",
////      "user_agent": "Mozilla/5.0 (Linux; Android 6.0.1; SM-T800) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Safari/537.36",
////      "username": "0s3jpi"
////    },
////    "personal": {
////      "age": 52,
////      "blood": "B-",
////      "born": null,
////      "born_place": "Ararat",
////      "cellphone": "+497583035",
////      "city": "Venice",
////      "country": "Sweden",
////      "eye_color": "Gray",
////      "father_name": "Elfrida",
////      "gender": "Male",
////      "height": "1.39",
////      "last_name": "Finley",
////      "name": "Tilda",
////      "national_code": "7995505124",
////      "religion": "Hindu",
////      "system_id": "460d8639-6649-44ee-aa86-db0af5f154cb",
////      "weight": 89
////    },
////    "work": {
////      "country_code": "TD",
////      "insurance": true,
////      "position": "Engineer",
////      "salary": "$10.400"
////    }
////  }
////}
