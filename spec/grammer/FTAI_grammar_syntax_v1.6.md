FTAI Grammar and Syntax v1.6
Purpose
FTAI is a human‑readable, AI‑parseable protocol for storing data and its rationale in one deterministic text artifact, replacing the JSON + Markdown + prompt triad.

1 Document Preamble
First line must be the grammar identifier:
@ftai v2.0
Grammar version ≠ document version; use @version under @document for the latter.

2 Core Syntax Rules
Rule	Detail
Tags	Begin with @ then lower‑snake‑case identifier.
Indentation	2 spaces per depth; tabs forbidden.
Key–value lines	key: value indented under any tag body.
Comments	A sequence // preceded by ≥1 whitespace starts a comment; parser strips \s//.*$. https:// does nottrigger comments.
Emphasis	Optional **bold** for human highlight. If a closing ** is missing, parsers MUST treat the marker as plain text (no error).
Quotes in values	Allowed only to preserve spaces or comment markers: @title "2025 Q2 Report v1".
Quotes in tag names	Only inside @schema to declare prototype tags: @"risk_flag".
Prohibited tokens	{ } [ ] < > outside schema literals.
Block closure	Multi‑line blocks end with @end; single‑line tags may omit.
3 Required Metadata Tags
@document, @owner, @date; optional @version.

4 @schema & Prototype Tags
Declare required/optional tags; new tags quoted.
@schema
  required_tags:
    - @document
    - @section
  optional_tags:
    - @task
    - @"risk_flag"
@end

5 Hierarchy Depth (Max 2)
* @section – level 1
* @@subsection – level 2 Further nesting ⇒ new file via @include ./file.ftai.

6 Type‑Hint Grammar
Suffix the tag name or key:
* @dose:int 20
* @prob:float 0.87
* @flag:bool true
* @event:date 2025‑04‑28 Missing hint ⇒ UTF‑8 string.

7 Standard Tag Vocabulary (Base V1)
Tag	Purpose / Allowed values
@goal	High‑level objective.
@constraints	Bullet list of hard limits.
@input / @output	Data handed between tools.
@tool	Name of capability.
@tool_call	Structured invocation block.
@result	Objective outcome stamp.
@feedback	pos / neg / neutral + reasoning lines.
@error	Exception block (code: message:).
@memory_scope	short_term • episodic • long_term • semantic.
@lang	IETF BCP‑47, e.g. en‑US.
@include	Embed external .ftai file.
8 Structured Tables
@table blocks must obey:
1. Header row followed immediately by a --- divider.
2. Every data row MUST contain the same number of | separators as the header.
3. Header cells may not be blank.
@table Drug Doses
  Name | Route | Adult | Pediatric
  ---  | ---   | ---   | ---
  Epinephrine | IV/IO | 1 mg q3‑5 min | 0.01 mg/kg q3‑5 min
  Amiodarone  | IV/IO | 300→150 mg | 5 mg/kg once
@end

9 Reserved Namespace
@meta*, @binary*, @sys*, @internal*, @debug*, and any tag starting with @_ are reserved.

10 Canonical Mini Example
@ftai v2.0

@document Cardiac Arrest – Adult Algorithm
  owner: Protocol Committee
  date: 2025‑04‑28
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
  - Follow AHA 2025
  - Payload < 8 KB
@end

@section Cardiac Arrest – Adult

  @@subsection Initial Actions
    - **Start high‑quality CPR 30:2**  // chest depth 5‑6 cm
    - Attach AED/monitor (interrupt ≤10 s)

  @@subsection Shockable Rhythm (VF/pVT)
    - **Shock 1 200 J**
    - CPR ×2 min; IV/IO access
    - **Shock 2** → CPR ×2 min → **Epinephrine 1 mg IV/IO**

  @@subsection Drug Reference
    @table Drug Doses
      Name | Route | Adult | Pediatric
      ---  | ---   | ---   | ---
      Epinephrine | IV/IO | 1 mg q3‑5 min | 0.01 mg/kg
      Amiodarone  | IV/IO | 300→150 mg | 5 mg/kg once
    @end
@end

@tool_call defibrillator
  energy_j: 200
@end

@result Patient achieved ROSC after 2 shocks.
@feedback:pos
  reasoning: Early defibrillation correlated with ROSC.
@end

Guiding Principles
1. Deterministic parse → same AST everywhere.
2. Traceable → embeds rationale & audit hashes.
3. Minimal → no punctuation noise.
4. Composable → lossless JSON/YAML bridges.
