Class {
	#name : 'ENegationTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
ENegationTest >> testEvaluate [
	
	| ep neg |
	ep := EVariable new id: #x.
	neg := ENegation new expression: ep.
	self assert: (neg evaluateWith: { #x -> EConstant new value: 5 } asDictionary) equals: -5

]

{ #category : 'tests' }
ENegationTest >> testEvaluateWithClassCreationMessage [
	
	| ep neg |
	ep := EVariable new id: #x.
	neg := ENegation expression: ep.
	self assert: (neg evaluateWith: { #x -> EConstant new value: 5 } asDictionary) equals: -5

]

{ #category : 'tests' }
ENegationTest >> testNegatedStructureIsCorrect [
	
	| exp |
	exp := EConstant value: 11.
	self assert: exp negated class = ENegation.
	self assert: exp negated negated equals: exp

]

{ #category : 'tests' }
ENegationTest >> testNegationNegated [

	| ep neg |
	ep := EVariable new id: #x.
	neg := ENegation new expression: ep.
	self assert: (neg evaluateWith: { #x -> EConstant new value: 6 } asDictionary)
		negated equals: 6

]
