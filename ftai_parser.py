import re

def parse_ftai(filepath):
    with open(filepath, 'r') as file:
        lines = file.readlines()

    data = {}
    current_section = None
    buffer = []

    for line in lines:
        line = line.strip()
        if line.startswith("@"):
            if current_section:
                data[current_section] = '\n'.join(buffer).strip()
                buffer = []
            current_section = line.split()[0][1:]  # @document -> document
            if ' ' in line:
                data[current_section + "_header"] = line.split(' ', 1)[1]
        elif line == "---":
            continue
        else:
            buffer.append(line)

    if current_section:
        data[current_section] = '\n'.join(buffer).strip()

    return data

# Example use
if __name__ == "__main__":
    import sys
    parsed = parse_ftai("spec/sample_memory.ftai")
    print(parsed)
