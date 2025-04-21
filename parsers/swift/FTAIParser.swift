import Foundation

struct FTAIBlock {
    let tag: String
    let header: String?
    let content: [String]
    let lineNumber: Int
}

class FTAIParser {
    static func parseStrict(fileURL: URL) -> [FTAIBlock] {
        guard let content = try? String(contentsOf: fileURL, encoding: .utf8) else {
            print("❌ Error: Could not read .ftai file.")
            return []
        }

        var blocks: [FTAIBlock] = []
        var currentTag: String?
        var currentHeader: String?
        var buffer: [String] = []
        var tagStartLine: Int = 0

        let lines = content.components(separatedBy: .newlines)

        for (index, rawLine) in lines.enumerated() {
            let line = rawLine.trimmingCharacters(in: .whitespaces)
            let lineNumber = index + 1

            if line.hasPrefix("@") {
                if let tag = currentTag {
                    let block = FTAIBlock(
                        tag: tag,
                        header: currentHeader,
                        content: buffer,
                        lineNumber: tagStartLine
                    )
                    blocks.append(block)
                    buffer.removeAll()
                }

                let components = line.dropFirst().split(separator: " ", maxSplits: 1).map(String.init)
                currentTag = components.first
                currentHeader = components.count > 1 ? components[1] : nil
                tagStartLine = lineNumber
            } else if line == "---" {
                continue
            } else {
                buffer.append(line)
            }
        }

        // Add final block
        if let tag = currentTag {
            let block = FTAIBlock(
                tag: tag,
                header: currentHeader,
                content: buffer,
                lineNumber: tagStartLine
            )
            blocks.append(block)
        }

        return blocks
    }
}
