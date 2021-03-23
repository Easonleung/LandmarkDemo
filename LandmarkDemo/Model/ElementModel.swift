//
//  ElementModel.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/11.
//

import Foundation

// Key Action
struct s_KeyAction {
    let buildUp = "Bup"
    let chorus = "C"
    let heartRate = "HR"
    let introduction = "Intro"
    let lastFewBarsOfMusic = "Outro"
    let quiteChorus = "QC"
    let synthesizer = "Synth"
    let Verse = "V"
    let bridge = "Br"
    let musicalCounts = "Cts"
    let instrumental = "Instr"
    let minutes = "Mins"
    let preChorus = "PC"
    let refrain = "Ref"
    let normalPace = "Tempo"
}

// Pace
struct s_Pace {
    let rpm = "RPM"
    let base = "1/2"
    let quarterBeat = "1/4"
    let medium = "3/4"
    let underBeat = "3/4+"
    let fastRace = "3/4++"
    let onTheBeat = "1/1"
    let littleFast = "1/1+"
}

// Resistance
struct s_Resistance {
    let attack = "A↑"
    let base = "B↑"
    let climbing = "C↑"
    let racing = "R↑"
    let increase = "↑"
    let descrease = "↓"
    let maintain = "•"
    let lightClimbing = "LC↑"
    let heavyClimbing = "HC↑"
}


// Base Element Struct
struct s_elementRPM {
    var track = [Int:String]()
    var resistance = [String:String]()
    var pace = [String:String]()
    var keyAction = [String:String]()
    
    // Initialation
    init() {
        self.track = [1:"Pack Ride", 2:"Pace", 3:"Hills", 4:"Mixed Terrain", 5:"Intervals", 6:"Speed Work", 7:"Mountain Climb", 8:"Ride Home", 9:"T8", 10:"T9"]
        self.resistance = ["attack":"A↑", "base":"B↑", "climbing":"C↑", "racing":"R↑", "increase":"↑", "descrease":"↓", "maintain":"•", "lightClimbing":"LC↑", "heavyClimbing":"HC↑"]
        self.pace = ["rpm":"RPM", "base":"1/2", "quarterBeat":"1/4", "medium":"3/4", "underBeat":"3/4+", "fastRace":"3/4++", "onTheBeat":"1/1", "littleFast":"1/1+"]
        self.keyAction = ["bup":"Bup", "mins":"Mins", "c":"C", "hr":"HR", "intro":"Intro", "outro":"Outro", "qc":"QC", "synth":"Synth", "v":"V", "br":"Br", "cts":"Cts", "instr":"Instr", "pc":"PC", "ref":"Ref", "tempo":"Tempo"]
    }
}



// Sub Choreography Define
struct s_SubChoreography {
    var time:String
    var keyAction:String
    var dur:String
    var exercise:String
    var reps:Int
    var cts:Int
    var pace:String
    var pi:String
    var countdown:Int
    
    init(_ time:String, _ keyAction:String, _ dur:String, _ exercise:String, _ reps:Int, _ cts:Int, _ pace:String, _ pi:String, _ countdown:Int) {
        self.time = time
        self.keyAction = keyAction
        self.dur = dur
        self.exercise = exercise
        self.reps = reps
        self.cts = cts
        self.pace = pace
        self.pi = pi
        self.countdown = countdown
    }
  
}
