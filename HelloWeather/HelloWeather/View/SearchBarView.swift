import SwiftUI

struct SearchBarView: View {
    @ObservedObject var cityVM: CityView
    @State private var searchTerm = "Omsk"
   
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .padding(.leading, 20)
            Button {
                cityVM.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack (alignment: .leading) {
        }).background(RoundedRectangle(cornerRadius: 10).fill(Color("SearchBarBackground")))
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
