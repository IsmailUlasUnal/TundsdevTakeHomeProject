//
//  DetailViewModel.swift
//  TundsdevTakeHome
//
//  Created by Ulaş Ünal on 5.03.2023.
//

import Foundation

final class DetailViewModel: ObservableObject {
    
    @Published private(set) var userInfo: UserDetailResponse?
    @Published private(set) var error: NetworkingManager.NetworkingError?
    @Published var hasError = false

    
    func fetchDetails(for id: Int) {
        
        NetworkingManager.shared.request("https://reqres.in/api/users/\(id)",
                                         type: UserDetailResponse.self) { [weak self] res in
            DispatchQueue.main.async {
                switch res {
                case .success(let response):
                    self?.userInfo = response
                case .failure(let error):
                    self?.hasError = true
                    self?.error = error as? NetworkingManager.NetworkingError
                }
            }
            
            
        }

    }
    
}
