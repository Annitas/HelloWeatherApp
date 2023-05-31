import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityView()
    
    var body: some View {
        ZStack(alignment: .bottom) {
                    VStack(spacing: 0) {
                        SearchBarView(cityVM: cityVM)
                        ScrollView(showsIndicators: false) {
                            CityWeatherView(cityVM: cityVM)
                        }.padding(.top, 10)
                    }.padding(.top, 40)
        }.background(LinearGradient(gradient: Gradient(colors: [Color("MainBackgroundTop"),
            Color("MainBackgroundBottom")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
