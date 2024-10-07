Class {
	#name : 'EAdditionTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
EAdditionTest >> testEvaluate [
	
	| ep1 ep2 |
	ep1 := (EConstant new value: 5).
	ep2 := (EConstant new value: 3).
	self assert: (EAddition new right: ep1; left: ep2) evaluate
		equals: 8

]

{ #category : 'tests' }
EAdditionTest >> testEvaluateWithNegation [
	
	| ep1 ep2 |
	ep1 := ENegation new expression: (EConstant new value: 5).
	ep2 := (EConstant new value: 3).
	self assert: (EAddition new right: ep1; left: ep2) evaluate
		equals: -2

]