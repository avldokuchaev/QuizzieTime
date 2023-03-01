//
//  FinalScoreIstoriya.swift
//  QuizzieTime
//
//  Created by Andrei Dokuchaev on 01.03.2023.
//
/*
import SwiftUI

struct FinalScoreIstoriya: View {
    
    var score1 : Int = 0
    
    @State private var showsDetailViewController: Bool = false
    
    @State private var showsDetailViewController1: Bool = false
    
    @State private var showsDetailViewController2: Bool = false
   
    
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
            
                /*Button("") {
                    UIApplication.shared.open(URL(string: imag!["url"]!)!)
                }
                .buttonStyle(BunnerButton(img: Image(imag!["image"]!)))*/
                
               
 //__________________________________________________

                Text("Финальный счет: \(score1) / 10")
                  .font(.title2)
                  .fontWeight(.bold)
                  .foregroundColor(Color(red: 0.151, green: 0.015, blue: 0.01))
                  .multilineTextAlignment(.center)
                  .padding(/*@START_MENU_TOKEN@*/.horizontal, 10.0/*@END_MENU_TOKEN@*/)
                    .onAppear(){
                        SaveScore1(quiz1: "istoriyaQuiz1", score1: self.score1)
                    }
                  
            VStack {
                
                Button("Играть еще раз") {
                    showsDetailViewController1.toggle()
                }
                .padding(10)
                .frame(width: 370.0)
                .cornerRadius(10.0)
                .foregroundColor(.white)
                .background(.blue)
                .sheet(isPresented: $showsDetailViewController1) {
                    IstoriyaGameHome()
                }
                
                Button("Главное меню") {
                    showsDetailViewController2.toggle()
                }
                .padding(10)
                .frame(width: 370.0)
                .cornerRadius(10.0)
                .foregroundColor(.white)
                .background(.blue)
                .sheet(isPresented: $showsDetailViewController2) {
                    NavigationMain()
                }
                
                Spacer()
                
                Image("istoriya2")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    
            }
//__________________________________________________
                    
            }
            
        }
       
   }
    
}
struct FinalScoreIstoriya_Previews: PreviewProvider {
    static var previews: some View {
        FinalScoreIstoriya()
    }
}
*/
