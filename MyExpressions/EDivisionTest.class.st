Class {
	#name : 'EDivisionTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
EDivisionTest >> testEvaluate [

	| ep1 ep2 ep3 |
	ep1 := EConstant value: 15.
	ep2 := EConstant constant5.
	ep3 := EConstant constant3.
	self assert: (EDivision new left: ep1; right: ep2) evaluate equals: 3.
	self assert: (EDivision new left: ep1; right: ep3) evaluate equals: 5

]

{ #category : 'tests' }
EDivisionTest >> testEvaluateNegated [

	| ep1 ep2 ep3 |
	ep1 := EConstant value: 15.
	ep2 := EConstant constant5.
	ep3 := EConstant constant3.
	self assert: (EDivision new left: ep1; right: ep2) negated evaluate equals: -3.
	self assert: (EDivision new left: ep1; right: ep3) negated evaluate equals: -5

]

{ #category : 'tests' }
EDivisionTest >> testEvaluateWithClassCreationMessage [

	| ep1 ep2 ep3 |
	ep1 := EConstant value: 15.
	ep2 := EConstant constant5.
	ep3 := EConstant constant3.
	self assert: (EDivision left: ep1 right: ep2) evaluate equals: 3.
	self assert: (EDivision left: ep1 right: ep3) evaluate equals: 5

]

{ #category : 'tests' }
EDivisionTest >> testPrinting [

	self assert: (EDivision fithteenDividedByThree) negated printString
		equals: '- ( 15 / 3 )'

]
