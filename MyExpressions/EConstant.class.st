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
EConstant class >> constant3 [
	<sampleInstance>
	^ self new value: 3

]

{ #category : 'accessing' }
EConstant class >> constant5 [
	<sampleInstance>
	^ self new value: 5

]

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
