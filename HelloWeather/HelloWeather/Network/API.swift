import Foundation

struct API {
    static let BaseURLString = "https://api.openweathermap.org/data/2.5/"
    static let key = "d2b758466054981c7a9596f7549c12be"
    static func getURLFor(lat: Double, lon: Double) -> String {
        return "\(BaseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=metric"
    }
}
