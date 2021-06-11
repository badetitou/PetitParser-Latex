Class {
	#name : #BaselineOfPetitParserLatex,
	#superclass : #BaselineOf,
	#category : #BaselineOfPetitParserLatex
}

{ #category : #baselines }
BaselineOfPetitParserLatex >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfPetitParserLatex >> defineDependencies: spec [

	spec baseline: 'PetitParser' with: [ spec repository: 'github://moosetechnology/PetitParser/:v3.x.xsrc' ]
]

{ #category : #baselines }
BaselineOfPetitParserLatex >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfPetitParserLatex >> definePackages: spec [

	spec package: 'PetitParser-Latex' with: [ spec requires: #( 'PetitParser' ) ]
]
