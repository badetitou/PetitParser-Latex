Class {
	#name : #PPLatexGrammar,
	#superclass : #PPCompositeParser,
	#instVars : [
		'text',
		'level',
		'document',
		'command',
		'commandName',
		'commandMarker'
	],
	#category : #'PetitParser-Latex'
}

{ #category : #accessing }
PPLatexGrammar >> command [
	^ $\ asParser, commandName ==> [ :n | n first value asString , n second value ]
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
PPLatexGrammar >> document [

	^ (command / text flatten) star
]

{ #category : #accessing }
PPLatexGrammar >> level [
	^ level
]

{ #category : #accessing }
PPLatexGrammar >> start [
	^ document end
]

{ #category : #accessing }
PPLatexGrammar >> text [
	^ $\ asParser negate plus
]
