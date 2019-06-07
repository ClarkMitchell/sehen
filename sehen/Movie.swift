import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let year: Int
    let rating: String
    let imageName: String
}

#if DEBUG
let testData = [
    Movie(title: "Titanic", year: 1995, rating: "PG-13", imageName: "titanic"),
    Movie(title: "Toy Story", year: 1995, rating: "PG", imageName: "toy-story"),
    Movie(title: "Boondock Saints", year: 1995, rating: "R", imageName: "boondock-saints")
]
#endif
