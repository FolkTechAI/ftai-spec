# SPDX-License-Identifier: Apache-2.0

# examples/python_rag_integration.py
"""
This example demonstrates how to integrate an FTAI-formatted file
into a basic LangChain Retrieval-Augmented Generation (RAG) workflow.
"""

from langchain.vectorstores import FAISS
from langchain.embeddings.openai import OpenAIEmbeddings
from langchain.text_splitter import CharacterTextSplitter
from langchain.docstore.document import Document

import os

# Load .ftai file
with open('tests/vectors/pass/pass_minimal.ftai', 'r') as file:
    ftai_content = file.read()

# Optionally split the content (can be smarter later)
splitter = CharacterTextSplitter(chunk_size=500, chunk_overlap=50)
docs = splitter.split_text(ftai_content)
documents = [Document(page_content=chunk) for chunk in docs]

# Embed and create FAISS index
embeddings = OpenAIEmbeddings()
db = FAISS.from_documents(documents, embeddings)

# Sample query
query = "What is the protocol for medication dosing?"
docs = db.similarity_search(query)
for i, doc in enumerate(docs):
    print(f'\n--- Result {i+1} ---\n{doc.page_content}')
