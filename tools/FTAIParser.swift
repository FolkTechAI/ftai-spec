import Foundation

struct FTAISection {
    var header: String?
    var content: String
}

class FTAIParser {
    static func parse(fileURL: URL) -> [String: FTAISection] {
        guard let content = try? String(contentsOf: fileURL, encoding: .utf8) else {
            print("Error: Could not read file.")
            return [:]
        }

        var results: [String: FTAISection] = [:]
        var currentSection: String?
        var header: String?
        var buffer: [String] = []

        let lines = content.components(separatedBy: .newlines)

        for line in lines {
            let trimmed = line.trimmingCharacters(in: .whitespaces)
            if trimmed.hasPrefix("@") {
                if let section = currentSection {
                    results[section] = FTAISection(header: header, content: buffer.joined(separator: "\n"))
                }
                buffer.removeAll()
                let parts = trimmed.dropFirst().split(separator: " ", maxSplits: 1).map(String.init)
                currentSection = parts.first?.lowercased()
                header = parts.count > 1 ? parts[1] : nil
            } else if trimmed == "---" {
                continue
            } else {
                buffer.append(trimmed)
            }
        }

        // Final section
        if let section = currentSection {
            results[section] = FTAISection(header: header, content: buffer.joined(separator: "\n"))
        }

        return results
    }
}
