import SwiftUI
import Rating

public struct ContentView: View {
    public init(rating: Int) {
        self.rating = rating
    }
    
    @State var rating: Int

    public var body: some View {
        VStack {
            Rating(currentRating: $rating, color: .red,ratingImage: .wineglass)
            Text("Fluminense")
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rating: 4)
    }
}
