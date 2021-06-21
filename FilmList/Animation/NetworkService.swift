//
//  NetworkService.swift
//  FilmList
//
//  Created by Yuriy Martinovskiy on 21.06.2021.
//

import Foundation

class NetworkService {
    func request(urlString: String, completion: @escaping (Result<Results, Error>) -> Void) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("Error")
                    completion(.failure(error))
                    return
                }
                guard let data = data else {return}
                do {
                    let films = try JSONDecoder().decode(Results.self, from: data)
                    completion(.success(films))
                } catch let jsonError {
                    print("Faild JSON", jsonError)
                    completion(.failure(jsonError))
                }
            }
        }.resume()
    }
}
