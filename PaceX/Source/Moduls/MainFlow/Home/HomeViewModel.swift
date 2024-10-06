//
//  HomeViewModel.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//

import Foundation

final class HomeViewModel: ObservableObject {
    // Questions about PACE's Impact on Climate Change
    let paceImpactOnClimate = ""
    let advancedPaceMission = ""
    
    let questions: [Quiz] = [
        Quiz(title: "Pace Impact On Climate",
             questions: paceImpactOnClimateQuestions,
             image: .climate),
        
        Quiz(title: "Advanced Pace Mission",
             questions: advancedPaceMissionQuestions,
             image: .advancedPaceMiss),
        
        Quiz(title: "Ocean Health and Climate Coupling",
             questions: [],
             image: .oceanHealth),
        
        Quiz(title: "Phytoplankton and Ocean Ecosystems",
             questions: [],
             image: .pyhtoplankton),
        
        Quiz(title: "Aerosols and Atmospheric Processes",
             questions: [],
             image: .aerosol),
        
        Quiz(title: "PACE and the Global Carbon Cycle",
             questions: [],
             image: .logo),
        
        Quiz(title: "Clouds and Climate Feedback Mechanisms",
             questions: [],
             image: .logo),
    ]
    
}


let paceImpactOnClimateQuestions: [QuizQuestion] = [
    QuizQuestion(question: "How will PACE data help reduce the effects of climate change?",
                 options: ["a) By creating more rainstorms", "b) By helping scientists model and predict changes in the environment", "c) By reducing the amount of sunlight reaching Earth", "d) By sending astronauts to clean up pollution"],
                 correctAnswer: "b) By helping scientists model and predict changes in the environment", points: 150),
                 
    QuizQuestion(question: "What is NASA's PACE mission studying?",
                 options: ["a) How to build rockets", "b) The health of oceans and atmosphere", "c) The surface of Mars", "d) Peace in Galaxy"],
                 correctAnswer: "b) The health of oceans and atmosphere", points: 240),
                 
    QuizQuestion(question: "What is phytoplankton?",
                 options: ["A) A type of fish", "B) Tiny plants that float in the ocean", "C) Big underwater rocks", "D) A kind of seaweed"],
                 correctAnswer: "B) Tiny plants that float in the ocean", points: 87),
                 
    QuizQuestion(question: "What is the primary mission of the PACE satellite?",
                 options: ["A) To monitor weather patterns", "B) To study ocean ecosystems and their interactions with the atmosphere", "C) To track wildlife migrations", "D) To observe land use changes"],
                 correctAnswer: "B) To study ocean ecosystems and their interactions with the atmosphere", points: 67),
                 
    QuizQuestion(question: "Which of the following components is NOT a focus of the PACE satellite?",
                 options: ["A) Plankton", "B) Aerosols", "C) Cloud properties", "D) Terrestrial vegetation"],
                 correctAnswer: "D) Terrestrial vegetation", points: 90),
                 
    QuizQuestion(question: "What type of data does the PACE satellite primarily collect?",
                 options: ["A) Sound data from the ocean", "B) Optical and spectral data from the ocean and atmosphere", "C) Radar data for land monitoring", "D) Seismic data for earthquake prediction"],
                 correctAnswer: "B) Optical and spectral data from the ocean and atmosphere", points: 55),
                 
    QuizQuestion(question: "How will PACE contribute to climate change research?",
                 options: ["A) By measuring atmospheric CO2 levels", "B) By providing insights into ocean health and carbon cycling", "C) By forecasting weather patterns", "D) By studying solar energy impacts on land"],
                 correctAnswer: "B) By providing insights into ocean health and carbon cycling", points: 105),
                 
    QuizQuestion(question: "Why does PACE study clouds?",
                 options: ["a) To see if they can hold animals", "b) To understand how they affect Earth's temperature", "c) To find out how heavy they are", "d) To learn if they can move mountains"],
                 correctAnswer: "b) To understand how they affect Earth's temperature", points: 99),
                 
    QuizQuestion(question: "What does 'PACE' stand for?",
                 options: ["a) Primary Atmospheric Carbon Explorer", "b) Plankton, Aerosol, Cloud, ocean Ecosystem", "c) Planetary Atmosphere and Climate Experiment", "d) Planet and Climate Earth-study"],
                 correctAnswer: "b) Plankton, Aerosol, Cloud, ocean Ecosystem", points: 109),
                 
    QuizQuestion(question: "How will PACE help understand ocean health?",
                 options: ["a) By measuring ocean temperature", "b) By analyzing phytoplankton and plankton levels", "c) By studying tides", "d) By monitoring ships' carbon emissions"],
                 correctAnswer: "b) By analyzing phytoplankton and plankton levels", points: 78)
]

// Advanced PACE Mission and Scientific Concepts
let advancedPaceMissionQuestions: [QuizQuestion] = [
    QuizQuestion(question: "Which specific aspect of aerosols does PACE aim to improve understanding of, particularly in relation to climate effects?",
                 options: ["A) Their composition and sources", "B) Their impact on terrestrial biodiversity", "C) Their effect on ocean acidity", "D) Their role in soil erosion"],
                 correctAnswer: "A) Their composition and sources", points: 56),
                 
    QuizQuestion(question: "How does the PACE satellite plan to enhance our understanding of the coupling between ocean biology and atmospheric processes?",
                 options: ["A) By integrating oceanographic data with satellite weather forecasts", "B) By measuring chlorophyll concentrations and aerosol distributions simultaneously", "C) By using ground-based measurements exclusively", "D) By focusing solely on ocean temperature variations"],
                 correctAnswer: "B) By measuring chlorophyll concentrations and aerosol distributions simultaneously", points: 55),
                 
    QuizQuestion(question: "What is the significance of PACE's mission in relation to the carbon cycle in the ocean?",
                 options: ["A) It will solely focus on the carbon emissions from ships.", "B) It aims to quantify the ocean's role in carbon sequestration through biological productivity.", "C) It will track atmospheric carbon levels without regard to ocean data.", "D) It will analyze the impact of terrestrial carbon on ocean health."],
                 correctAnswer: "B) It aims to quantify the ocean's role in carbon sequestration through biological productivity.", points: 109),
                 
    QuizQuestion(question: "Which agency is responsible for the development and launch of the PACE satellite?",
                 options: ["A) European Space Agency (ESA)", "B) National Aeronautics and Space Administration (NASA)", "C) National Oceanic and Atmospheric Administration (NOAA)", "D) Indian Space Research Organisation (ISRO)"],
                 correctAnswer: "B) National Aeronautics and Space Administration (NASA)", points: 88),
                 
    QuizQuestion(question: "What do aerosols consist of?",
                 options: ["a) Large rocks floating in space", "b) Tiny particles or droplets in the air", "c) Clouds made of water vapor", "d) Bits of metal in the ocean"],
                 correctAnswer: "b) Tiny particles or droplets in the air", points: 61),
                 
    QuizQuestion(question: "What is one of the major objectives of PACE in studying ocean ecosystems?",
                 options: ["A) Understanding coral reef degradation", "B) Measuring the interaction between ocean color and climate change", "C) Monitoring fish migration patterns", "D) Mapping ocean currents"],
                 correctAnswer: "B) Measuring the interaction between ocean color and climate change", points: 102),
                 
    QuizQuestion(question: "How will PACE's measurements of ocean color help?",
                 options: ["A) It will detect changes in water temperature", "B) It will indicate the presence of different types of phytoplankton", "C) It will map seafloor topography", "D) It will track tides and wave heights"],
                 correctAnswer: "B) It will indicate the presence of different types of phytoplankton", points: 77),
                 
    QuizQuestion(question: "How does PACE's observation of aerosols help climate research?",
                 options: ["A) By tracking industrial pollutants", "B) By measuring how aerosols reflect or absorb sunlight", "C) By detecting volcanic eruptions", "D) By analyzing urban air quality"],
                 correctAnswer: "B) By measuring how aerosols reflect or absorb sunlight", points: 109),
                 
    QuizQuestion(question: "What role do clouds play in PACE's climate research?",
                 options: ["A) They transport heat from the equator to the poles", "B) They reflect sunlight and trap heat, affecting global temperatures", "C) They regulate rainfall patterns", "D) They produce greenhouse gases"],
                 correctAnswer: "B) They reflect sunlight and trap heat, affecting global temperatures", points: 109),
                 
    QuizQuestion(question: "What advanced instrument is onboard the PACE satellite?",
                 options: ["A) Hyperspectral Imager", "B) Radio Interferometer", "C) Synthetic Aperture Radar", "D) Magnetometer"],
                 correctAnswer: "A) Hyperspectral Imager", points: 76)
]
