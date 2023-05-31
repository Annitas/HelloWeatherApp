import SwiftUI

struct WeekWeatherView: View {
    @ObservedObject var cityVM: CityView
    
    var body: some View {
        ForEach(cityVM.weather.daily) { weather in
            LazyVStack {
                weeklyCell(weather: weather)
            }
        }
    }
    
    private func weeklyCell(weather: DailyWeather) -> some View{
        HStack {
            Text(cityVM.getDayFor(timestamp: weather.dt).uppercased())
                .frame(width: 50)
            
            Spacer()
            
            Text("\(cityVM.getTempFor(temp: weather.temp.max))".dropLast(2) + " | \(cityVM.getTempFor(temp: weather.temp.min))".dropLast(2) +
                 "℃")
                .frame(width: 150)
            Spacer()
            cityVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
        }
        .foregroundColor(.white)
        .padding(.horizontal, 40)
        .padding(.vertical, 15)
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

struct WeeklyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
