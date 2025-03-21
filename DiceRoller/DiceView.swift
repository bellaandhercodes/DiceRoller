import SwiftUI

struct DiceView: View {
    @State private var dots: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(dots).fill")
                .resizable()
                .frame(maxWidth: 120, maxHeight: 120)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
                .padding(.bottom)
            
            Button("Roll") {
                withAnimation {
                    dots = Int.random(in: 1...6)
                }
            }
            .font(.title2)
            .background(Color.black)
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
