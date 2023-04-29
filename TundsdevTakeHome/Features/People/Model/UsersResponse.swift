//
//  UsersResponse.swift
//  TundsdevTakeHome
//
//  Created by Ulaş Ünal on 24.02.2023.
//

// MARK: - UsersResponse
struct UsersResponse: Codable {
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support
}
