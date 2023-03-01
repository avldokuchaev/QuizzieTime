//
//  CitateGameHome.swift
//  QuizzieTime
//
//  Created by Andrei Dokuchaev on 26.02.2023.
//

import SwiftUI

struct CitateGameHome: View {
    
    @State var score = 0
    
    @State private var showsDetailViewController: Bool = false
    
    @State private var showsDetailViewController1: Bool = false
   
    
    private let imag = images.randomElement()
   
   struct BunnerButton: ButtonStyle {
       let img: Image
      
       func makeBody(configuration: Configuration) -> some View {
           configuration.label
           img
           .renderingMode(.original)
           .frame(width: 300, height: 38)
       }
       
   }
    
    var body: some View {
   
        ZStack {
            
            Image("backgroundQuizz")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .edgesIgnoringSafeArea(.all)
       
          VStack {
            
                Button("") {
                    UIApplication.shared.open(URL(string: imag!["url"]!)!)
                }
                .buttonStyle(BunnerButton(img: Image(imag!["image"]!)))
                
                HStack {
                    Button("В меню") {
                        self.showsDetailViewController = true
                    }
                    .background(.blue)
                    .padding()
                    .foregroundColor(.black)
                    .sheet(isPresented: $showsDetailViewController) {
                        NavigationMain()
                }
                    
                    Spacer()
                    
                }
                
                Spacer()
 //__________________________________________________

                Text("Кто Это Сказал?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(10)
                    .frame(width: 370.0)
                    .background(.green)
                
                Spacer()
                
            VStack {
                
                    //display your score
                    Text("Последний счет: \(self.score) / 10")
                        .font(.title2)
                        .fontWeight(.bold)
                        .background(.orange)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(/*@START_MENU_TOKEN@*/.horizontal, 10.0/*@END_MENU_TOKEN@*/)
                        .onAppear(){ //refresh score
                            self.score = LoadScore(quiz: "citateQuiz1")
                    }
                
                Spacer()
                       
                Button("В игру") {
                    showsDetailViewController1.toggle()
                }
                .padding()
                .cornerRadius(10.0)
                .foregroundColor(.white)
                .background(.blue)
                .sheet(isPresented: $showsDetailViewController1) {
                    CitateGameScene()
                }
                
                Spacer()
                
                Image("citatyHomePicture")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()

                    
            }
//__________________________________________________
                    
            }
            
        }
       
   }
    
}

struct CitateGameHome_Previews: PreviewProvider {
    static var previews: some View {
        CitateGameHome()
    }
}
