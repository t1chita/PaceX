import SwiftUI

struct QuizzDetailsView: View {
    @EnvironmentObject var router: NavigationManager
    @StateObject var quizzDetailsViewModel: QuizzDetailsViewModel
    @ObservedObject var userManager = UserManager.shared
    @State private var popupMessage: String?
    @State private var popupIsPresented: Bool = false
    
    init(quiz: Quiz) {
        self._quizzDetailsViewModel = StateObject(wrappedValue: QuizzDetailsViewModel(quiz: quiz))
    }
    
    var body: some View {
        ZStack {
            Color.mainBlueColorLightest
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    
                    HStack {
                        Text("\(UserManager.shared.user?.points ?? 0) Points")
                            .padding()
                        
                        Image(.coin)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(.mainBlueColorLight)
                    )
                }
                
                Spacer()
            }
            
            VStack(spacing: 30) {
                PXText(title: quizzDetailsViewModel.quiz.questions[quizzDetailsViewModel.quizIndex].question,
                       fontSize: 18,
                       color: .mainWhite, fontType: .bold) { }
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 16) {
                    ForEach(quizzDetailsViewModel.quiz.questions[quizzDetailsViewModel.quizIndex].options, id: \.self) { option in
                        CardView(cornerRadius: 12, text: option) {
                            if option == quizzDetailsViewModel.quiz.questions[quizzDetailsViewModel.quizIndex].correctAnswer {
                                withAnimation {
                                    popupMessage = "Congratulations, Your Answer Is Correct ☺️"
                                    popupIsPresented = true
                                }
                                UserManager.shared.user?.points += quizzDetailsViewModel.quiz.questions[quizzDetailsViewModel.quizIndex].points
                                if quizzDetailsViewModel.quizIndex == quizzDetailsViewModel.quiz.questions.count - 1 {
                                    withAnimation {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                            popupIsPresented = false // Hide popup on tap
                                            router.navigate(to: .resultPage)
                                        }
                                    }
                                } else {
                                    withAnimation {
                                        quizzDetailsViewModel.quizIndex += 1
                                    }
                                }
                            } else {
                                withAnimation {
                                    popupMessage = "💣Oopps.. Your answer is wrong,Please try again"
                                    popupIsPresented = true
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .overlay(
            Group {
                if popupIsPresented {
                    PopUp(text: popupMessage ?? "")
                        .onTapGesture {
                            popupIsPresented = false // Hide popup on tap
                        }
                }
            }
        )
        .navigationTitle(quizzDetailsViewModel.quiz.title)
    }
}

struct CardView: View {
    let cornerRadius: CGFloat
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Text(text)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.mainWhite)
                    .padding() // Add padding for touchable area
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure button takes full width
            .background(RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundStyle(.mainBlueColorLight)) // Background color for visibility
        }
        .buttonStyle(PlainButtonStyle()) // Prevents button from changing appearance
    }
}

struct PopUp: View {
    let text: String
    var body: some View {
        ZStack {
            Color
                .black.opacity(0.2)
                .ignoresSafeArea()
            
            Text(text)
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.mainWhite)
                .padding(40)
                .background(RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.mainBlueColorLight))
                .frame(maxWidth: .infinity)
                .padding()
                .transition(.scale) // Add transition effect
                .animation(.easeInOut) // Smooth animation for appearing/disappearing
        }
    }
}

#Preview {
    QuizzDetailsView(quiz:  Quiz(title: "Advanced Pace Mission",
                                 questions: advancedPaceMissionQuestions,
                                 image: .advancedPaceMiss))
    .environmentObject(NavigationManager())
}
