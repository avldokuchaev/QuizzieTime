//
//  CitateGameScene.swift
//  QuizzieTime
//
//  Created by Andrei Dokuchaev on 26.02.2023.
//

import SwiftUI

struct CitateGameScene: View {
    
    @State var random = Int(arc4random()) % citateQuiz1.count
    
    @State var i : Int = 0
    
    @State var score = 0
    
    @State private var showsDetailViewController: Bool = false
    
    @State private var showsDetailViewController1: Bool = false
    
    @State private var didTap:String = ""
   
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
                    Button("< В меню") {
                        self.showsDetailViewController = true
                    }
                    .padding(.leading, 10.0)
                    .foregroundColor(.black)
                    .sheet(isPresented: $showsDetailViewController) {
                        NavigationMain()
                }
                    
                    Spacer()
                    
                }
                
                Spacer()
 //__________________________________________________

              if(self.i < 10 /*citateQuiz1.count*/) {
                  
                  
                  //image of the question
                 /* Image(citateQuiz1[self.i].img!)
                      .resizable()
                      .scaledToFit()
                      .padding(.horizontal)*/
                  
                  //text of the question
                  
                  VStack {
                  Text(citateQuiz1[random].text!)
                      .font(.title2)
                      .fontWeight(.bold)
                      .foregroundColor(Color(red: 0.151, green: 0.015, blue: 0.01))
                      .multilineTextAlignment(.center)
                      .padding(/*@START_MENU_TOKEN@*/.horizontal, 10.0/*@END_MENU_TOKEN@*/)
                  
                 
                      
                  }
                  
                  VStack {
               
                  //answer 0
                  Button(action:{
                      
                      self.buttonAction(n: 0)
                      
                  },label: {
                      Text(citateQuiz1[random].answer[0])
                  })
                      .padding(10)
                      .frame(width: 360.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.blue)
                  
                  Spacer()
                  
                  //answer 1
                  Button(action:{
                      
                      self.buttonAction(n: 1)
                     
                  },label: {
                      Text(citateQuiz1[random].answer[1])
                  })
                      .padding(10)
                      .frame(width: 360.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.blue)
                  
                  Spacer()
                  
                  //answer 2
                  Button(action:{
                      
                      self.buttonAction(n: 2)
                      
                  },label: {
                      Text(citateQuiz1[random].answer[2])
                  })
                      .padding(10)
                      .frame(width: 360.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.blue)
                  
                  Spacer()
                  
                  //answer 3
                  Button(action:{
                      
                      self.buttonAction(n: 3)
                    
                  },label: {
                      Text(citateQuiz1[random].answer[3])
                  })
                      .padding(10)
                      .frame(width: 360.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.blue)
                  
                 
                      
                  }
                  
                  Text(self.didTap)
                      .font(.title3)
                      .fontWeight(.bold)
                      .foregroundColor(Color(red: 0.151, green: 0.015, blue: 0.01))
                      .multilineTextAlignment(.center)
                      .padding(/*@START_MENU_TOKEN@*/.horizontal, 10.0/*@END_MENU_TOKEN@*/)
                  
                  Spacer()
                  
                  Button(action:{
                      
                      self.buttonAction1()
                    
                  },label: {
                      Text("Следующий вопрос")
                  })
                      .padding(10)
                      .frame(width: 300.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.green)
                  
                  Spacer()
                 
              }
                  
                  
              //after last question --> show final view with score
              else {
                  
                  FinalScoreCitate(score : self.score)
              }
//__________________________________________________
                    
            }
            
        }
       
   }
    
    func buttonAction( n : Int) {
        //if answer is correct increment score
        if(citateQuiz1[random].correct == n) {
            self.score = self.score + 1
            self.didTap = "Правильный ответ"
            
        } else {
            self.didTap = "Вы ошиблись"
            
        }
        //GO TO NEXT QUESTION
       // self.i = self.i + 1
       // self.random = Int(arc4random()) % citateQuiz1.count
        
    }

func buttonAction1() {
    //if answer is correct increment score
    
    //GO TO NEXT QUESTION
    self.i = self.i + 1
    self.random = Int(arc4random()) % citateQuiz1.count
    self.didTap = ""
    
}
    
}


struct CitateGameScene_Previews: PreviewProvider {
    static var previews: some View {
        CitateGameScene()
    }
}
