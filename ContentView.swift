import SwiftUI

struct ContentView: View {
    @State var die1: Int = 0
    @State var die2: Int = 0
    @State var die3: Int = 0
    @State var die4: Int = 0
    @State var sum: Int = 0
    @State var sum2: Int = 0
    @State var wins: Int = 0
    @State var losses: Int = 0
    @State var wins2: Int = 0
    @State var losses2: Int = 0
    @State var isgamestarted: Bool = false
    @State var Alert: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.gray, Color.pink,]), startPoint: .topTrailing, endPoint: .bottomLeading)
            
            VStack {
                HStack{
                        VStack{
                            Text("wins")
                            Text("\(wins)")
                            Text("loss")
                            Text("\(losses)")
                        }
                        .font(.custom("", size: 30))
                        .padding(.horizontal)
                        .font(.largeTitle)
                        Spacer()
                        VStack{
                            Text("wins")
                            Text("\(wins2)")
                            Text("loss")
                            Text("\(losses2)")
                        }
                        .font(.custom("Jersey", size: 30))
                        .padding(.horizontal)
                        .font(.largeTitle)
                }
                .padding(.top, 30)
                HStack{
                    Text("\(sum)")
                        .font(.system(size: 100))
                        .padding(.trailing)
                    
                    Text("\(sum2)")
                        .font(.system(size: 100))
                }
                    HStack{
                        Image(systemName: "die.face.\(die1)")
                            .font(.system(size: 60))
                        
                        Image(systemName: "die.face.\(die2)")
                            .font(.system(size: 60))
                        
                            .padding(.trailing, 20)
                        Image(systemName: "die.face.\(die3)")
                            .font(.system(size: 60))
                        
                        Image(systemName: "die.face.\(die4)")
                            .font(.system(size: 60))
                    }
                    .padding(.bottom, 200)   
                if sum  > sum2{
                    Text("Player 1 Win!!") 
                    .font(.system(size: 20))
                }
                if sum < sum2{
                    Text("Player 1 loses...") 
                    .font(.system(size: 20))
                }
                if sum2 > sum{
                    Text("Player 2 Win!!") 
                    .font(.system(size: 20))
                }
                if sum2 < sum{
                    Text("Player 2 loses...") 
                    .font(.system(size: 20))
                }
                if isgamestarted == true && sum == sum2{
                    Text("Nobody wins!")
                    .font(.system(size: 20))
                }
                
                VStack {
                    Button {
                        die1 = Int.random(in: 1...6)
                        die2 = Int.random(in: 1...6)
                        die3 = Int.random(in: 1...6)
                        die4 = Int.random(in: 1...6)
                        sum = die1 + die2
                        sum2 = die3 + die4
                        if sum > sum2{
                            wins += 1
                        }   
                        if sum < sum2{
                            losses += 1
                        } 
                        if sum2 > sum{
                            wins2 += 1
                        }   
                        if sum2 < sum{
                            losses2 += 1
                        } 
                       
                        isgamestarted = true 
                    } 
                    
                label: {
                    Text("roll")
                        .foregroundColor(.white)
                        .hoverEffect(.lift)
                        .padding()
                        .background 
                    {
                        Capsule()
                            .stroke(gradient, lineWidth: 4)
                            .saturation(1.8)
                    }
                    if isgamestarted == true { 
                        Button {
                            wins = 0
                            wins2 = 0
                            losses = 0
                            losses2 = 0
                            sum = 0
                            sum2 = 0
                            isgamestarted = false 
                        } 
                    label: {
                        Text("reset game")
                            .foregroundColor(.white)
                            .hoverEffect(.lift)
                            .padding()
                            .background 
                        {
                            Capsule()
                                .stroke(gradientb, lineWidth: 4)
                                .saturation(1.8)
                        }
                    }
                }
            }
        }
                Spacer()
    }
}
    .foregroundColor(.white)
                    }
    let gradient = LinearGradient(colors: [Color.red , Color.pink, Color.white],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
    let gradientb = LinearGradient(colors: [Color.white , Color.pink, Color.red],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
}
