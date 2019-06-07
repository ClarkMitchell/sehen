import SwiftUI

struct ContentView : View {
    @State var searchTerm: String = "search..."
    
    var body: some View {
        VStack {
            TextField($searchTerm)
                .padding(.horizontal)
                .textFieldStyle(.roundedBorder)
            NavigationView {
                NavigationButton(destination: SearchResultView(movies: testData)) {
                    Text("Click")
                }.navigationBarTitle(title: "FooBar")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
