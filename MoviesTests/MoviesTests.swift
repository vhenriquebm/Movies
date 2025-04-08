//
//  MoviesTests.swift
//  MoviesTests
//
//  Created by Vitor Henrique Barreiro Marinho on 07/04/25.
//

import XCTest
@testable import Movies

final class LoginViewModelTests: XCTestCase {
    
    var viewModel: LoginViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = LoginViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testValidEmail() {
        XCTAssertTrue(viewModel.isValidEmail("test@example.com"))
        XCTAssertTrue(viewModel.isValidEmail("user.name+alias@domain.co"))
        XCTAssertTrue(viewModel.isValidEmail("email@sub.domain.com"))
    }
    
    func testInvalidEmail_EmptyString() {
        XCTAssertFalse(viewModel.isValidEmail(""))
    }
    
    func testInvalidEmail_WhitespaceOnly() {
        XCTAssertFalse(viewModel.isValidEmail("     "))
    }
    
    func testInvalidEmail_MissingAtSymbol() {
        XCTAssertFalse(viewModel.isValidEmail("testexample.com"))
    }
    
    func testInvalidEmail_MissingUsername() {
        XCTAssertFalse(viewModel.isValidEmail("@example.com"))
    }
    
    func testInvalidEmail_MissingDomain() {
        XCTAssertFalse(viewModel.isValidEmail("test@"))
    }
    
    func testInvalidEmail_MultipleAtSymbols() {
        XCTAssertFalse(viewModel.isValidEmail("test@@example.com"))
    }
    
    func testInvalidEmail_InvalidCharacters() {
        XCTAssertFalse(viewModel.isValidEmail("test!@example.com"))
        XCTAssertFalse(viewModel.isValidEmail("te(st)@example.com"))
    }
    
    func testInvalidEmail_DoubleDotsInDomain() {
        XCTAssertFalse(viewModel.isValidEmail("test@domain..com"))
    }
}
