//
//  WeatherViewModel.swift
//  Clima
//
//  Created by Murillo R. Araujo on 28/04/21.
//

import Foundation

class WeatherViewModel: ObservableObject {
    @Published var weather : Weather?
    let  baseURL = "https://api.openweathermap.org/data/2.5/weather?appid=8e3d397043133aec7c085767f9fe5cad&units=metric&"
    
    func fetchWeather(from city: String) {
        let urlString = "\(baseURL)q=\(city)"
        request(urlString)
    }
    
    func request(_ urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            guard let weather = try? JSONDecoder().decode(Weather.self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.weather = weather
            }
        }.resume()
        
    }
}
