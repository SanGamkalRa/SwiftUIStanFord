//
//  ContentView.swift
//  Dummy
//
//  Created by Sangam Kumar on 08/10/24.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
        HStack{
            CardView(isFaceUp: true,content: "👻")
            CardView(isFaceUp: false,content: "🤡")
            CardView(isFaceUp: true,content: "🎃")
            CardView(isFaceUp: false,content: "😈")
        }.foregroundColor(.orange).padding()
    }
}

struct CardView: View{
    @State var isFaceUp : Bool
    let content : String
    
    var body: some View{
        ZStack( alignment: .center){
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
            }else{
                base.fill(.orange)
            }
            base.strokeBorder(style: StrokeStyle(lineWidth: 2))
            Text(content)
        }.onTapGesture {

            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
