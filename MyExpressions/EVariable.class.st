Class {
	#name : 'EVariable',
	#superclass : 'EExpression',
	#instVars : [
		'id'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'accessing' }
EVariable >> evaluateWith: aBindingDictionary [
	"we need to be able to pass bindings (a binding is a pair key,
	 value) when evaluating a variable. The value of a variable is
	 the value of the binding whose key is the name of the variable."

	^ aBindingDictionary at: id

]

{ #category : 'accessing' }
EVariable >> id: aSymbol [

	id := aSymbol

]

{ #category : 'accessing' }
EVariable >> printOn: aStream [

	aStream nextPutAll: id asString

]
