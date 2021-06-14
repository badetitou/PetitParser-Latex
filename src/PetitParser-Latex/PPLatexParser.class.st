Class {
	#name : #PPLatexParser,
	#superclass : #PPLatexGrammar,
	#category : #'PetitParser-Latex'
}

{ #category : #accessing }
PPLatexParser >> command [
	^ super command  ==> [ :n | n first value asString , n second value ]
]
