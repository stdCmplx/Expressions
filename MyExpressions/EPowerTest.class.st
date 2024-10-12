Class {
	#name : 'EPowerTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
EPowerTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: (EPower new left: ep1; right: ep2) evaluate
		equals: 125

]

{ #category : 'tests' }
EPowerTest >> testEvaluateNegated [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: (EPower new left: ep1; right: ep2) negated evaluate
		equals: -125

]

{ #category : 'tests' }
EPowerTest >> testEvaluateWithClassCreationMessage [
	
	| ep1 ep2 |
	ep1 := EConstant value: 5.
	ep2 := EConstant value: 3.
	self assert: (EPower left: ep1 right: ep2) evaluate
		equals: 125

]

{ #category : 'tests' }
EPowerTest >> testPrinting [
	
	self assert: (EPower fivePowerThree) negated printString
		equals: '- ( 5 ^ 3 )'

]
