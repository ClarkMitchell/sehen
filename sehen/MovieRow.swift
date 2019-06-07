import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
         HStack {
            Image(movie.imageName).cornerRadius(8)
            VStack(alignment: .leading) {
                Text(movie.title).font(.title)
                HStack{
                    Text(String(movie.year))
                    Spacer()
                    Text(movie.rating)
                }
            }.padding()
        }
    }
}

#if DEBUG
struct MovieRow_Previews : PreviewProvider {
    static var previews: some View {

        let titanic = Movie(title: "Titanic", year: 1995, rating: "PG-13", imageName: "titanic")
        
        return MovieRow(movie: titanic)
    }
}
#endif
