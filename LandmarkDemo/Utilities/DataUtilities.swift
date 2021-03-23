//
//  DataUtilities.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/11.
//

import Foundation


// Time Transfer from Minute to Second
//
// Parameters format "06:15"
//                     ↑ ↑
//                   min second
//
// Return Second:Int
//
//
func f_TimeTransferToSecond(_ rhythmTime:String) -> Int {
    let keyT = ":"
    let range = rhythmTime.range(of: keyT)!
    let minute = rhythmTime.prefix(upTo: range.lowerBound)
    let second = rhythmTime.suffix(2)
   
    return Int(minute)!*60+Int(second)!
}




// Json Decoder to Array
//
// Put the Json file to the project
// Create a Model to match the Json structure
// var jsonArray: [JsonModel] = DecodeJson("JsonData.json")
//
func DecodeJson<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
