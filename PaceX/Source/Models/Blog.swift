//
//  Blog.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//

import SwiftUI

struct Blog: Identifiable {
    let id = UUID().uuidString
    let title: String
    let imageResource: ImageResource
    let description: String
    let url: URL
}

let blogs: [Blog] = [
    Blog(title: "Complex Beauty in the Gulf of Oman",
         imageResource: ._1,
         description: "On May 8, 2024, NASA shared an exciting story about the PACE satellite! On February 8, 2024, PACE blasted off into space on a SpaceX Falcon 9 rocket. In less than two months, NASA engineer Joseph Knuble gathered 36 amazing images from the satellite's main camera. One of his favorites is a beautiful picture of the Gulf of Oman!",
         url: URL(string: "https://earthobservatory.nasa.gov/images/152765/complex-beauty-in-the-gulf-of-oman")!),
    
    Blog(title: "NASA’s ORCA, AirHARP Projects Paved Way for PACE to Reach Space",
         imageResource: ._2,
         description: "On April 26, 2024, NASA shared the story of how two important tools for the PACE mission were created! In the early 2000s, a group of scientists at NASA’s Goddard Space Flight Center invented the Ocean Radiometer for Carbon Assessment (ORCA), which became PACE's main tool to study the ocean’s color. Later, in the 2010s, scientists from the University of Maryland teamed up with NASA to make the Hyper Angular Rainbow Polarimeter (HARP), a small, shoebox-sized tool that will take amazing new measurements of tiny particles in the air called aerosols!",
         url: URL(string: "https://www.nasa.gov/missions/pace/nasas-orca-airharp-projects-paved-way-for-pace-to-reach-space/")!),
    
    Blog(title: "NASA’s Near Space Network Enables PACE Climate Mission to ‘Phone Home’",
         imageResource: ._3,
         description: "On April 17, 2024, NASA’s PACE mission sent its first important information to scientists on Earth! This was possible thanks to NASA’s Near Space Network, which is like a super-fast space internet. They made two special upgrades to help PACE and other missions collect and save data. These improvements make it easier to understand things like our oceans, weather, and climate!",
         url: URL(string: "https://www.nasa.gov/technology/space-comms/nasas-near-space-network-enables-pace-climate-mission-to-phone-home/")!)
]
