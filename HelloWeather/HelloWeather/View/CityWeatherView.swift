import SwiftUI

struct CityWeatherView: View {
    @ObservedObject var cityVM: CityView
    var body: some View {
        VStack {
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeather(cityVM: cityVM)
            WeekWeatherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM)
        }.padding(.bottom, 30 )
    }
}

struct CityWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
