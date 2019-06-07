import SwiftUI

struct MovieDetail : View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Image(movie.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(movie.title).font(.title)
        }
    }
}

#if DEBUG
struct MovieDetail_Previews : PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: testData[0])
    }
}
#endif
