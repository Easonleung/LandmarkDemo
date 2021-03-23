/*
 Name:      LandmarkDemoAPP
 Author:    Eason.L
 DateTime:  2021.03.08
 Version:   v1.0
 
 Des:This is demo of the LMs Project. It just do some test and build some base Class&Struct to prepare to support the final development code.
 */


import UIKit




var thisProjectSubject = "LMs APP Project PreCode"
print(thisProjectSubject)
print("=======================")


/*
 Base Struct
 Use to Define the base info
 */



/*

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
*/



// Base Element Struct
struct s_elementRPM: Hashable {
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


var paceCurrent = "base"
var elementRPM = s_elementRPM()



print("T9 Before " + elementRPM.track[9]!)
elementRPM.track[9] = "Hills"
print("T9 After " + elementRPM.track[9]!)

print(elementRPM.resistance[paceCurrent]!)
print(elementRPM.pace[paceCurrent]!)
print(elementRPM.keyAction["ref"]!)


// ========= Class Define ========= //

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


class BaseChoreography {
    
    var rhythmTime = ""
    var courseName:String = ""
    var music:String = ""
    
 // var track:[Int:String]
 // var subCg = c_SubChoreography()
 // var totalTime:Date

    var strOutput:[String] {
        get {
            return [rhythmTime, courseName, music]
        }
        set(cName) {
            rhythmTime = cName[0]
            courseName = cName[1]
            music = cName[2]
            
        }
    }
}

print()
print("==== Class Define ====")
print("----------------------")

var result = BaseChoreography()
print(result.strOutput)

result.strOutput = ["6:15", "RPM","YouAreNotAlone"]
for i in result.strOutput {
    print(i)
}


var a_Choreography = [s_SubChoreography]()
a_Choreography.append(s_SubChoreography("0:05", "ref", "2x8", "Ride Easy", 1, 1, "", "", 15))
a_Choreography.append(s_SubChoreography("0:10", "B↑", "4x8", "Ride Easy", 1, 1, "", "", 15))
a_Choreography.append(s_SubChoreography("0:14", "R↑", "4x8", "Racing", 1, 1, "", "", 15))
a_Choreography.append(s_SubChoreography("0:19", "C↑", "4x8", "Standing Climb", 1, 1, "", "", 15))
a_Choreography.append(s_SubChoreography("0:22", "•", "4x8", "Aero Racing", 1, 1, "", "", 15))


// Time Transfer from Minute to Second
func f_TimeTransferToSecond(_ rhythmTime:String) -> Int {
    let keyT = ":"
    let range = rhythmTime.range(of: keyT)!
    let minute = rhythmTime.prefix(upTo: range.lowerBound)
    let second = rhythmTime.suffix(2)
   
    return Int(minute)!*60+Int(second)!
}

// Set Chapter Time
var totalTime = f_TimeTransferToSecond("0:23")
var currentSecond = 0


// ========= TIMER ========= //

print()
print("==== Timer ====\r")
print("----------------------")
var countdownNum = 0
var startChoregraphy = 0


// Timer Func
Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
    
    // Detecting the index of Array overflow or not
    if startChoregraphy < a_Choreography.count {
        currentSecond = f_TimeTransferToSecond(a_Choreography[startChoregraphy].time)
    }
    
    
    if countdownNum == totalTime {
        timer.invalidate()
        print(">>> Timer has STOP.")
    } else if countdownNum == currentSecond {
        print(">>> \(a_Choreography[startChoregraphy])")
        countdownNum += 1
        startChoregraphy += 1
    } else {
        print(">>> Countdown Number: \(countdownNum)")
        countdownNum += 1
    }
}
