Class {
	#name : 'EAdditionTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
EAdditionTest >> testEvaluate [
	
	| ep1 ep2 add |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	add := EAddition new right: ep1; left: ep2.
	self assert: (add evaluateWith: { #x -> EConstant new value: 5 . #y -> EConstant new value: 3 }
			asDictionary) equals: 8.
	self assert: (add evaluateWith: { #x -> EConstant new value: 10 . #y -> EConstant new value: 2 }
			asDictionary) equals: 12

]

{ #category : 'tests' }
EAdditionTest >> testEvaluateWithClassCreationMessage [
	
	| ep1 ep2 add |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	add := EAddition left: ep1 right: ep2.
	self assert: (add evaluateWith: ({ #x -> EConstant value: 5 . #y -> EConstant value: 3 }
		asDictionary)) equals: 8.
	self assert: (add evaluateWith: ({ #x -> EConstant value: 10 . #y -> EConstant value: 2 }
		asDictionary))	equals: 12

]

{ #category : 'tests' }
EAdditionTest >> testEvaluateWithNegation [
	
	| ep1 ep2 add |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	add := EAddition new left: (ENegation new expression: ep1); right: ep2.
	self assert: (add evaluateWith: { #x ->  (EConstant new value: 5) . #y -> (EConstant new value: 3) }
		asDictionary) equals: -2

]

{ #category : 'tests' }
EAdditionTest >> testNegated [
	
	| ep1 ep2 add |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	add := EAddition new right: ep1; left: ep2.
	self assert: (add evaluateWith: ({ #x -> EConstant new value: 5 . #y -> EConstant new value: 3 }
		asDictionary)) negated equals: -8.

]

{ #category : 'tests' }
EAdditionTest >> testPrinting [

	self assert: (EAddition fivePlusThree) printString equals: '( 5 + 3 )'.
	self assert: (EAddition fivePlusThree) negated printString equals: '- ( 5 + 3 )'

]
