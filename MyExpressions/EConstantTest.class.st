Class {
	#name : 'EConstantTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
EConstantTest >> testEvaluate [
	
	self assert: (EConstant new value: 5) evaluate equals: 5
]
