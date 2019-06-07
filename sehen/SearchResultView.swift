import SwiftUI

struct SearchResultView : View {
    var movies: [Movie] = []

    var body: some View {
        NavigationView {
            List(movies) { movie in
                NavigationButton(destination: MovieDetail(movie: movie)) {
                    MovieRow(movie: movie)
                }
            }
            .navigationBarTitle(Text("Movies"))
        }
    }
}

#if DEBUG
struct SearchResultView_Previews : PreviewProvider {
    static var previews: some View {
        SearchResultView(movies: testData)
    }
}
#endif
