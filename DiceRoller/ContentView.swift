import SwiftUI

struct ContentView: View {
    @State private var diceNum: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle
                    .uppercaseSmallCaps()
                    .bold())
                .foregroundStyle(.white)
            
            HStack {
                ForEach(1...diceNum, id: \.description) { item in
                    DiceView()
                }
            }
            
            HStack {
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        diceNum += 1
                    }
                }
                .disabled(diceNum == 3) // max of dice, 3 is enough...
                
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        diceNum -= 1
                    }
                }
                .disabled(diceNum == 1)
            }
            .padding()
            .font(.title)
            .labelStyle(.iconOnly)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground) // change it from assets
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
