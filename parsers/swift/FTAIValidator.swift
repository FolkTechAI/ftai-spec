// SPDX-License-Identifier: Apache-2.0

🧠 Part 1: FTAIValidator.swift

This Swift validator works with your existing FTAIBlock parser and mimics the Python linter behavior — full strict mode with schema parsing.

⸻

📄 FTAIValidator.swift

import Foundation

struct FTAIError {
    let line: Int
    let message: String
}

struct FTAIWarning {
    let line: Int
    let message: String
}

struct FTAIValidationReport {
    let errors: [FTAIError]
    let warnings: [FTAIWarning]
    var isValid: Bool {
        return errors.isEmpty
    }
}

class FTAIValidator {
    static let coreTags: Set<String> = [
        "@ftai", "@document", "@schema", "@ai", "@ai_note", "@memory",
        "@task", "@config", "@agent", "@end"
    ]

    static let blockTags: Set<String> = ["@ai", "@task", "@agent", "@memory", "@config"]

    static func validate(blocks: [FTAIBlock]) -> FTAIValidationReport {
        var errors: [FTAIError] = []
        var warnings: [FTAIWarning] = []
        var seenTags: Set<String> = []
        var quotedTagCount = 0
        var schemaRequired: Set<String> = []
        var schemaOptional: Set<String> = []

        var hasFTAI = false
        var hasDocument = false

        for block in blocks {
            let tag = block.tag
            if tag.starts(with: "@\"") {
                quotedTagCount += 1
                continue
            }

            if tag == "@ftai" {
                hasFTAI = true
                if block.lineNumber != 1 {
                    warnings.append(FTAIWarning(line: block.lineNumber, message: "`@ftai` should be the first line"))
                }
            }

            if tag == "@document" {
                hasDocument = true
            }

            if tag == "@schema" {
                for line in block.content {
                    if line.starts(with: "required_tags:") {
                        schemaRequired.formUnion(parseTagList(from: line))
                    } else if line.starts(with: "optional_tags:") {
                        schemaOptional.formUnion(parseTagList(from: line))
                    }
                }
            }

            seenTags.insert(tag)

            if blockTags.contains(tag) && !block.content.contains("@end") {
                errors.append(FTAIError(line: block.lineNumber, message: "Missing `@end` for block: \(tag)"))
            }

            if !coreTags.contains(tag) && !schemaRequired.contains(tag) && !schemaOptional.contains(tag) {
                errors.append(FTAIError(line: block.lineNumber, message: "Unknown or unauthorized tag: \(tag)"))
            }
        }

        if !hasFTAI {
            errors.append(FTAIError(line: 0, message: "Missing required `@ftai` declaration"))
        }
        if !hasDocument {
            errors.append(FTAIError(line: 0, message: "Missing required `@document` block"))
        }

        for req in schemaRequired {
            if !seenTags.contains(req) {
                errors.append(FTAIError(line: 0, message: "Missing required tag from schema: \(req)"))
            }
        }

        if quotedTagCount > 10 {
            warnings.append(FTAIWarning(line: 0, message: "Excessive use of `@\"quoted\"` tags — consider defining a schema"))
        }

        return FTAIValidationReport(errors: errors, warnings: warnings)
    }

    private static func parseTagList(from line: String) -> Set<String> {
        let matches = line.matches(for: "\"(.*?)\"")
        return Set(matches.map { $0.replacingOccurrences(of: "\"", with: "") })
    }
}

// Regex helper
extension String {
    func matches(for regex: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: self, range: NSRange(self.startIndex..., in: self))
            return results.map {
                String(self[Range($0.range, in: self)!])
            }
        } catch {
            return []
        }
    }
}



⸻

🧱 Part 2: .editorconfig + .gitattributes

📄 .editorconfig (place at repo root)

root = true

[*]
charset = utf-8
indent_style = space
indent_size = 4
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true

[*.ftai]
indent_style = space
indent_size = 4



⸻

📄 .gitattributes (place at repo root)

# Treat FTAI files as text
*.ftai text
*.ftai diff

