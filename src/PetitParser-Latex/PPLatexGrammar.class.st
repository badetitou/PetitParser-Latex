Class {
	#name : #PPLatexGrammar,
	#superclass : #PPCompositeParser,
	#instVars : [
		'text',
		'document',
		'command',
		'commandName',
		'commandMarker',
		'commandArguments',
		'commandArgument',
		'commandOption',
		'environment'
	],
	#category : #'PetitParser-Latex'
}

{ #category : #accessing }
PPLatexGrammar >> command [

	^ $\ asParser , commandName , commandOption optional, commandArguments
]

{ #category : #accessing }
PPLatexGrammar >> commandArgument [

	^ ${ asParser , (#any asParser starLazy: $} asParser) flatten , $} asParser
]

{ #category : #accessing }
PPLatexGrammar >> commandArguments [

	^ commandArgument star
]

{ #category : #accessing }
PPLatexGrammar >> commandMarker [

	^ commandMarker
]

{ #category : #accessing }
PPLatexGrammar >> commandName [

	^ #word asParser plus flatten
]

{ #category : #accessing }
PPLatexGrammar >> commandOption [

	^ $[ asParser , (#any asParser starLazy: $] asParser) flatten , $] asParser
]

{ #category : #accessing }
PPLatexGrammar >> document [

	^ (environment / command / text flatten) star
]

{ #category : #accessing }
PPLatexGrammar >> environment [

	^ '\begin{' asParser , commandName , $} asParser , (text asParser starLazy: '\end' asParser) flatten , '\end{' asParser , commandName , $} asParser
]

{ #category : #accessing }
PPLatexGrammar >> start [
	^ document end
]

{ #category : #accessing }
PPLatexGrammar >> text [
	^ $\ asParser negate plus
]
