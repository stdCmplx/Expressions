Class {
	#name : 'EDivisionTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
EDivisionTest >> testEvaluate [

	| ep1 ep2 div |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	div := EDivision new left: ep1; right: ep2.
	self assert: (div evaluateWith: ({ #x -> EConstant new value: 15 . #y -> EConstant new value: 3 }
		asDictionary)) equals: 5.
	self assert: (div evaluateWith: ({ #x -> EConstant new value: 15 . #y -> EConstant new value: 5 }
		asDictionary)) equals: 3

]

{ #category : 'tests' }
EDivisionTest >> testEvaluateNegated [

	| ep1 ep2 div |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	div := EDivision new left: ep1; right: ep2.
	self assert: (div evaluateWith: ({ #x -> EConstant new value: 15 . #y -> EConstant new value: 3 }
		asDictionary)) negated equals: -5.
	self assert: (div evaluateWith: ({ #x -> EConstant new value: 15 . #y -> EConstant new value: 5 }
		asDictionary)) negated equals: -3

]

{ #category : 'tests' }
EDivisionTest >> testEvaluateWithClassCreationMessage [

	| ep1 ep2 div |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	div := EDivision left: ep1 right: ep2.
	self assert: (div evaluateWith: ({ #x -> EConstant value: 15 . #y -> EConstant value: 3 }
		asDictionary)) equals: 5.
	self assert: (div evaluateWith: ({ #x -> EConstant value: 15 . #y -> EConstant value: 5 }
		asDictionary)) equals: 3

]

{ #category : 'tests' }
EDivisionTest >> testPrinting [

	self assert: (EDivision fithteenDividedByThree) negated printString
		equals: '- ( 15 / 3 )'

]
