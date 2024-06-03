//
//  Item.swift
//  NARUTOAPI
//
//  Created by 井本智博 on 2024/05/26.
//

import Foundation

//APIClientのファイル内でfileprivate privateにする
struct NarutoDTO: Decodable {
    let characters:[CharacterDTO]
    let currentPage: Int
    let pageSize: Int
    let totalCharacters: Int

    struct CharacterDTO: Decodable {
        let name: String
    }
}

struct NarutoData {
    let characters: [Character]
    let pagination: Pagination

    struct Pagination {
        let currentPage: Int
        let pageSize: Int
        let totalCharacters: Int
    }

    struct Character: Hashable {
        let name: String
    }
}

extension NarutoData {
    init(dto: NarutoDTO) {
        self.characters = dto.characters.map {NarutoData.Character(dto: $0)}
        self.pagination = Pagination(dto: dto)
    }
}

extension NarutoData.Pagination {
    init(dto: NarutoDTO) {
        self.currentPage = dto.currentPage
        self.pageSize = dto.pageSize
        self.totalCharacters = dto.totalCharacters
    }
}

private extension NarutoData.Character {
    init(dto: NarutoDTO.CharacterDTO) {
        self.name = dto.name

    }
}
