Class {
	#name : 'EMultiplicationTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
EMultiplicationTest >> testEvaluate [

	| ep1 ep2 mul |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	mul := EMultiplication new right: ep1; left: ep2.
	self assert: (mul evaluateWith: ({ #x -> EConstant  new value: 5 . #y -> EConstant new value: 3 }
		asDictionary)) equals: 15.

]

{ #category : 'tests' }
EMultiplicationTest >> testEvaluateNegated [
	
	| ep1 ep2 mul |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	mul := EMultiplication new right: ep1; left: ep2.
	self assert: (mul evaluateWith: ({ #x -> EConstant new value: 5 . #y -> EConstant new value: 3 }
		asDictionary)) negated equals: -15.

]

{ #category : 'tests' }
EMultiplicationTest >> testEvaluateWithClassCreationMessage [
	
	| ep1 ep2 mul |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	mul := EMultiplication left: ep1 right: ep2.
	self assert: (mul evaluateWith: ({ #x -> EConstant new value: 5 . #y -> EConstant new value: 3 }
		asDictionary)) equals: 15.

]

{ #category : 'tests' }
EMultiplicationTest >> testPrinting [
	
	self assert: (EMultiplication fiveTimesThree) negated printString
		equals: '- ( 5 * 3 )'

]
