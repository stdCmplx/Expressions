Class {
	#name : 'EPowerTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
EPowerTest >> testEvaluate [

	| ep1 ep2 pow |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	pow := EPower new left: ep1; right: ep2.
	self assert: (pow evaluateWith: ({ #x -> EConstant new value: 5 . #y -> EConstant new value: 3 }
		asDictionary)) equals: 125.

]

{ #category : 'tests' }
EPowerTest >> testEvaluateNegated [

	| ep1 ep2 pow |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	pow := EPower new left: ep1; right: ep2.
	self assert: (pow evaluateWith: ({ #x -> EConstant new value: 5 . #y -> EConstant new value: 3 }
		asDictionary)) negated equals: -125.

]

{ #category : 'tests' }
EPowerTest >> testEvaluateWithClassCreationMessage [

	| ep1 ep2 pow |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	pow := EPower left: ep1 right: ep2.
	self assert: (pow evaluateWith: ({ #x -> EConstant value: 5 . #y -> EConstant value: 3 }
		asDictionary)) equals: 125.

]

{ #category : 'tests' }
EPowerTest >> testPrinting [
	
	self assert: (EPower fivePowerThree) negated printString
		equals: '- ( 5 ^ 3 )'

]
