import Testing
@testable import Logger

struct Car {
    
}

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let logger = Logger(Car.self)
    logger.info("starts")
}
