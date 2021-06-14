Class {
	#name : #PPLatexGrammarTest,
	#superclass : #PPCompositeParserTest,
	#category : #'PetitParser-Latex-Tests'
}

{ #category : #accessing }
PPLatexGrammarTest >> parserClass [
	^ PPLatexGrammar
]

{ #category : #accessing }
PPLatexGrammarTest >> testParseCommand [
	self parse: '\myCommand[option]{args1}{args2}'.
	self assert: (result anyOne at: 2) equals: 'myCommand'.
	"There is two arguments"
	self assert: (result anyOne at: 4) size equals: 2 
]
