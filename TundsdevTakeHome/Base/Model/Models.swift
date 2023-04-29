//
//  Models.swift
//  TundsdevTakeHome
//
//  Created by Ulaş Ünal on 24.02.2023.
//

// MARK: - User
struct User: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
