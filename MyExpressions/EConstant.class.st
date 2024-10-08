Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'accessing' }
EConstant class >> value: anInteger [
	
	^ self new value: anInteger

]

{ #category : 'public access' }
EConstant >> evaluate [

	^ value
]

{ #category : 'accessing' }
EConstant >> value: arg1 [

	value := arg1
]
