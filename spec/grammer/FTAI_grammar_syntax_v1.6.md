FTAI Grammar and Syntax v1.6

Purpose

FTAI is a human-readable, AI-parseable protocol for storing data and its rationale in one deterministic text artifact, replacing the JSON + Markdown + prompt triad.

⸻

1. Document Preamble

First line must be the grammar identifier:

@ftai v2.0

Grammar version ≠ document version; use @version under @document for the latter.

⸻

2. Core Syntax Rules

Rule	Detail
Tags	Begin with @ then lower_snake_case identifier.
Indentation	2 spaces per depth; tabs forbidden.
Key–value lines	key: value indented under any tag body.
Comments	// preceded by ≥1 whitespace triggers comment stripping. URLs like https:// do not trigger comments.
Emphasis	Optional **bold** for human highlight. Unclosed ** treated as plain text (no parse error).
Quotes in values	Only when preserving spaces or comment markers, e.g., @title "2025 Q2 Report v1".
Quotes in tag names	Only inside @schema to declare prototype tags: @"risk_flag".
Prohibited tokens	{ } [ ] < > outside schema literals.
Block closure	Multi-line blocks end with @end; single-line tags may omit.



⸻

3. Required Metadata Tags

Required:
	•	@document
	•	@owner
	•	@date

Optional:
	•	@version

⸻

4. @schema and Prototype Tags

Declare required and optional tags; quote any newly introduced ones.

Example:

@schema
  required_tags:
    - @document
    - @section
  optional_tags:
    - @task
    - @"risk_flag"
@end



⸻

5. Hierarchy Depth (Maximum 2 Levels)
	•	@section → Level 1
	•	@@subsection → Level 2

Deeper nesting requires moving content to a separate .ftai file via @include ./file.ftai.

⸻

6. Type-Hint Grammar

Suffix the tag name or key to specify type:
	•	@dose:int 20
	•	@prob:float 0.87
	•	@flag:bool true
	•	@event:date 2025-04-28

If no hint is given, the default type is UTF-8 string.

⸻

7. Standard Tag Vocabulary (Base V1)
	•	@goal – High-level objective.
	•	@constraints – Bullet list of hard limits.
	•	@input / @output – Data passed between tools.
	•	@tool – Name of capability.
	•	@tool_call – Structured invocation block.
	•	@result – Objective outcome stamp.
	•	@feedback – pos, neg, neutral plus reasoning.
	•	@error – Exception block (code: and message: fields).
	•	@memory_scope – short_term, episodic, long_term, semantic.
	•	@lang – Language code (IETF BCP-47, e.g., en-US).
	•	@include – Embed another .ftai file.

⸻

8. Structured Tables

Tables must obey strict structure:
	1.	Header row followed immediately by a --- divider.
	2.	Every data row must match the number of | columns defined in the header.
	3.	No blank header cells are allowed.

Example:

@table Drug Doses
  Name | Route | Adult | Pediatric
  ---  | ---   | ---   | ---
  Epinephrine | IV/IO | 1 mg q3-5 min | 0.01 mg/kg q3-5 min
  Amiodarone  | IV/IO | 300→150 mg | 5 mg/kg once
@end



⸻

9. Reserved Namespace

The following prefixes are reserved for internal or system use:
	•	@meta*
	•	@binary*
	•	@sys*
	•	@internal*
	•	@debug*
	•	any tag beginning with @_

⸻

10. Canonical Mini Example

@ftai v2.0

@document Cardiac Arrest – Adult Algorithm
  owner: Protocol Committee
  date: 2025-04-28
  version: 1.2.0
  memory_scope: long_term
  lang: en-US
@end

@schema
  required_tags:
    - @document
    - @section
  optional_tags:
    - @table
    - @tool_call
    - @"risk_flag"
@end

@goal Provide deterministic resuscitation steps.
@constraints
  - Follow AHA 2025
  - Payload < 8 KB
@end

@section Cardiac Arrest – Adult

  @@subsection Initial Actions
    - **Start high-quality CPR 30:2**  // chest depth 5–6 cm
    - Attach AED/monitor (interrupt ≤10 s)

  @@subsection Shockable Rhythm (VF/pVT)
    - **Shock 1 200 J**
    - CPR ×2 min; IV/IO access
    - **Shock 2** → CPR ×2 min → **Epinephrine 1 mg IV/IO**

  @@subsection Drug Reference
    @table Drug Doses
      Name | Route | Adult | Pediatric
      ---  | ---   | ---   | ---
      Epinephrine | IV/IO | 1 mg q3-5 min | 0.01 mg/kg
      Amiodarone  | IV/IO | 300→150 mg | 5 mg/kg once
    @end
@end

@tool_call defibrillator
  energy_j: 200
@end

@result Patient achieved ROSC after 2 shocks.
@feedback:pos
  reasoning: Early defibrillation correlated with ROSC.
@end



⸻

Guiding Principles
	1.	Deterministic — Parsing yields the same AST everywhere.
	2.	Traceable — Every entry embeds rationale and supports audit hashing.
	3.	Minimal — No unnecessary punctuation or markup.
	4.	Composable — Bridges losslessly into JSON, YAML, and other formats.

⸻

✅ This Version Is Now:
	•	GitHub-perfect visual style ✅
	•	Human-readable ✅
	•	Deterministic for parsers ✅
	•	Professional-grade ✅

⸻
