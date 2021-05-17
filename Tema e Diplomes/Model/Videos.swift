//
//  Videos.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 18.4.21.
//

import Foundation

struct Video
{
    let subjectName: String
    let videoFileName: String
    let description: String
    let thumbnailFileName: String
    
    static func fetchVideo() -> [Video] {
        let v1 = Video(subjectName: "Matlab", videoFileName: "matlab", description: "MATLAB është një sistem informatik numerik që ofron një mjedis zhvillimi të integruar me gjuhën e vet të programimit.", thumbnailFileName: "mathlab")
        let v2 = Video(subjectName: "Android", videoFileName: "android", description: "Android është një sistem operativ celular i zhvilluar nga Google. Përdoret nga disa smartphone dhe tableta.", thumbnailFileName: "android")
        let v3 = Video(subjectName: "iOS", videoFileName: "ios", description: "iOS një sistem operativ i përdorur për pajisjet mobile të prodhuara nga Apple Inc.", thumbnailFileName: "ios")
        let v4 = Video(subjectName: "Python", videoFileName: "python", description: "Python është një gjuhë programimi e interpretuar, e orientuar drejt objektit, e nivelit të lartë me semantikë dinamike.", thumbnailFileName: "python")
        let v5 = Video(subjectName: "SQL", videoFileName: "sql", description: "SQL është një gjuhë specifike e domain-it e përdorur në programim dhe e krijuar për menaxhimin e të dhënave të mbajtura në një sistem të menaxhimit të bazës së të dhënave relacionale", thumbnailFileName: "sql")
        let v6 = Video(subjectName: "Web", videoFileName: "web", description: "Web është një sistem informacioni ku dokumentet dhe burimet e tjera të internetit identifikohen me URL", thumbnailFileName: "web")
        
        return[v1, v2, v3, v4, v5, v6]
    }
}
